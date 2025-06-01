
# function used to retrieve data 

Param(

    $sourceOrgAlias = "",
    [AllowEmptyString()]    
    $targetOrgAlias = "",
    $sObjectPath = "",
    $csvOutputPath = "",
    [AllowEmptyString()]
    $onlyProcessFile = "",
    [AllowEmptyString()]
    $onlyProcessSObject = "",
    [AllowEmptyString()]
    $excludeProcessFile = "",
    [AllowEmptyString()]
    $excludeProcessSObject = "",
    [AllowEmptyString()]
    $excludeProcesssDirectory = "", 
    [AllowEmptyString()]
    $whereOverride = "",

    [AllowEmptyString()]
    $whereOverrideAdd = $false,
    [AllowEmptyString()]
    $retrieveFieldOverride = "" ,
    [AllowEmptyString()]
    $exportTreePath = "" ,
    [AllowEmptyString()]

     
    [bool] $exportTree  ,
    [bool] $showQuery   
)
 
## write-host  show query  $showQuery  exporttree $exportTree -ForegroundColor blue    

if ($sObjectPath -eq "") {
    Write-Host No Path 
    return
}

 
#for output result
if (!(Test-Path $csvOutputPath)) {
    New-Item -Path $csvOutputPath -ItemType Directory  
}
# --- Begin Code run
 

$CPQFiles = Get-ChildItem -Path ($sObjectPath) -Recurse -Include *.ps1
$sObjectHash = @{}
$cntIgnored = 0 
$cntFound = 0 
## load fiels
foreach ($sObj in $CPQFiles) {
    #$onlyProcessDirectory
    #$sObj 
    #$sObj.Name
    #$sObj.Directory.Name
    if ( 
        ($onlyProcessFile -ne "" -and -not $onlyProcessFile.contains($sObj.Name) ) -or
        ($excludeProcessFile -ne "" -and $excludeProcessFile.contains($sObj.Name) ) -or 
        ($onlyProcessDirectory -ne "" -and -not $onlyProcessDirectory.contains($sObj.Directory.Name) ) -or 
        ($excludeProcesssDirectory -ne "" -and $excludeProcesssDirectory.contains($sObj.Directory.Name) ) -or
        ($sObj.Name.StartsWith("xRep") )        
    ) { 
        #if ($showExcluded -eq $true ) {
        #   write-host File  $sObj.Directory.Name"/"$sObj.name excluded  -ForegroundColor DarkRed    
        #}
        $cntIgnored += 1
        continue
    } 
    $cntFound += 1
    #  $sObj | Get-Member 
    $filepath = $sObj 
    Write-Host $filepath 
    #write-host command  $filepath  -ForegroundColor DarkRed    
    #$filepath.BaseName;
    #$filepath.DirectoryName;
    #$filepath.FullName 
    write-host Processing File $sObj.name   -ForegroundColor DarkGreen
    $path = "& '" + $filepath.FullName + "'"
    $sObjectHash += Invoke-Expression   $path
}
#write-host hash $sObjectHash.Keys
write-host Number of Files Ignored  $cntIgnored  -ForegroundColor DarkRed    
write-host Number of Files Found  $cntFound  -ForegroundColor DarkGreen    

$outputArray = @()
$outputJson = @()
$wrk = "scripts/wrk/$sourceOrgAlias.txt" 
$wrkCSV = "scripts/wrk/csv/"
$wrkJsn = "scripts/wrk/jsn/"
$queryBase = " select {fields} from {sObject} {where} {orderBy}"
$cnter = 0
$cmdQueryAry = @()

while ($cnter -lt 10) {

    $cnter++
    write-host ---------- inputOrder $cnter ---------  -ForegroundColor green

    foreach ($x in $sObjectHash.Keys ) {
      
        $sObjBase = $x.ToString().Replace(".csv", "")
        $sObject = $sObjBase.split('.')[0]
         
        if ( ($onlyProcessSObject -ne "" -and ! $onlyProcessSObject.contains($sObject)) -or 
           ($excludeProcessSObject -ne "" -and $excludeProcessSObject.contains($sObject)) -or
            $sObjectHash[$x].ignore -or 
            $sObjectHash[$x].ignoreGet  
    
           
        ) { 
          
            continue 
        }      
       
        if ($sObjectHash[$x].importOrder -eq $cnter) {
           
            #$fields = $sObjectHash[$x].fields.replace('`n','').replace('`r','')
            $sObjectHash[$x].fields | Set-Content -path $wrk
            $where = $sObjectHash[$x].where
            if ($whereOverride -gt "" -and $whereOverrideAdd) {
                $where += ' ' + $whereOverride
            }
            if ($whereOverride -gt "" -and ! $whereOverrideAdd) { 
                $where = ' ' + $whereOverride

            }
            

            $orderBy = $sObjectHash[$x].orderBy
            if ($null -eq $orderBy) {
                $orderBy = " order by External_id__c" 
            }
            ##$orderBy = ""
            $fields = Get-Content -path $wrk
            if ($retrieveFieldOverride -gt "") {
                $fields = $retrieveFieldOverride 
            } 
            write-host $fields 

            $sObj = $x.split('.')[0]
            # write-host $fields
            write-host Querying $sourceOrgAlias->$x  -ForegroundColor yellow
            $fields = $fields.replace("  ", " ")
            $query = $queryBase.Replace('{fields}' , $fields).Replace('{sObject}', $sObj) 
            $query = $query.replace('{where}', $where).replace('{orderBy}', $orderBy).trim()
           
            if ($showQuery -eq $true) {
                write-host Querying $query  -ForegroundColor blue
            }

            $cmdQueryAry += $query 

            if ($exportTree) {
                continue
            }
       
            $jsonRaw = sf data query -o $sourceOrgAlias -q $query -r json   
            $jsonObj = $jsonRaw | ConvertFrom-JSON
            $outputJson += $jsonRaw 
            $csvs = sf data query -o  $sourceOrgAlias -q $query -r csv  
            $outFile = $csvOutputPath + $x + ".csv"
            $recs = $jsonObj.result.totalSize
            $outputArray += $x + " Records:" + $recs
            write-host "Writing $recs records to $outFile " -ForegroundColor yellow
            $csvs |  Set-Content  -Path $outFile -encoding utf8 

        }
    
    }
    $outFile = $wrkCSV + "csv.query.objects.json"
    $outputJson |  Set-Content  -Path $outFile

    $outFile = $wrkCSV + "csv.query.summary.txt"
    $outputArray |  Set-Content  -Path $outFile
}       
if ($exportTree) {

    $cmdBasetree = 'sf data export tree -o {sourceOrgAlias} -d {dir} -x {prefix}'
    $cmdTree = $cmdBasetree.replace("{sourceOrgAlias}", $sourceOrgAlias)
    $cmdTree = $cmdTree.replace("{dir}", $csvOutputPath + $exportTreePath)
    $cmdTree = $cmdTree.replace("{prefix}", $exportTreePath)
 
    foreach ($cmdQry in $cmdQueryAry) {
        $cmdTree += " {qry} "
        $cmdTree = $cmdTree.replace("{qry}", " -q """ + $cmdQry + """" )
    }
    
    $jsonRaw = Invoke-Expression ($cmdTree + ' -p --json ')
    $jsonObj = $jsonRaw | ConvertFrom-JSON
    $outputJson += $jsonRaw 

    if ($jsonObj.status -ne 0) {
        $nn = $jsonObj.name
        $outFile = $csvOutputPath + $exportTreePath + "/" + $exportTreePath + ".error.json"    
        write-host "Error on tree export: $nn.  See  $exportTreePath.error.json " -ForegroundColor red
        $outputJson |  Set-Content  -Path $outFile -encoding utf8 
    }
    else { 
        $outFile = $csvOutputPath + $exportTreePath + "/" + $exportTreePath + ".results.json"    
        write-host "Writing results to $outFile " -ForegroundColor green
        $outputJson |  Set-Content  -Path $outFile -encoding utf8 
    }

}  

#$outFile = $wrkJsn + "jsn.query.objects.json"
#$outputJson |  Set-Content  -Path $outFile

 

 
