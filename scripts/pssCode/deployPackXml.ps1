
<#  

this may be required. run in terminal 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser  
#>
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
 
   
## ------------------------- Input parameters -------------------------https://dodge--fullsand.sandbox.lightning.force.com/lightning/r/Order/801Va000005FmavIAC/related/Integration_Queues__r/view
## --------------------------------------------------------------------------s
# retieve to pull from sandbox and deploy to your pr another sandbox or productio
 
$sourceOrgAlias = 'bvbtest23' 
#$sourceOrgAlias = 'BVBDeploy' 
#$sourceOrgAlias = 'DevSprint4'
 
# target connection to your dev or prodction target see oAuthLogin.ps1
       
$targetOrgAlias = 'BVBDeploy'
$targetOrgAlias = 'bvbtest26'  
#$targetOrgAlias = 'DCNFull'    
 

#$PackageFileName = "/sprint5/SRM-83.xml"rs
$PackageFileName = "package552.xml"
#$PackageFileName = "DCNSBQConfig.xml" 
#$PackageFileName = "Sprint016.xml"
#$PackageFileName = "projReq.xml"

 #$PackageFileName = "CustomAction.xml" 
#$PackageFileName = 'apex.xml '
$destructivePackageFileName ="" # "destructiveChanges.xml"
# $PackageFileName = "destructiveEmpty.xml"
#$PackageFileName = 'scgAddr.xml'

#######  true|False    false = deployment to target org
$ValidateOnly = $true       
#######  true|False  # perform the retrieve from the source org or use the artifacts that exist   
$retrieve = $false
#######  true|False deploy or verify the artifacts to the target org.  
#        if retrieve and deploy are false then nothing is going to happen  
$deploy = $true   

$jobId=""
$Quick=$false
# comment/uncomment as needed
$TestLevel = "-l RunLocalTests"  # default if not set and package contains apex
$TestLevel = "-l NoTestRun" 
$TestLevel = "-l RunSpecifiedTests"   ##  Production Deploy or Sfdc will run all local tests
$TestLevel = "" 

# only appended if test level is -l RunSpecifiedTests 
$TestClasses = "-t 'MI_UtilityTest,OpportunityTriggerHandler_Test,AccountTriggerHandler_Test' "
#$TestClasses = "-r 'accountTriggerthandlerTest,AvalaraRL_Test ,UtilityTest,AVL_FieldHighlighter_Test' "
<# Package.xml  
   these can be different files if needed , to assist with large large deployments or 
   seperate apex from other artifacts to speed testing of a deployment
#>

<# parameters for package xml
   1 name of the package.xml -- becomes the key to the hash table 
   2 sub hash table 
      type  metaData|apex  set to metadata 
      id    set the deploy package id generated on verification to perform a quick deploy
            Quick Deploy. if ValidateOnly/--checkonly on an initial run  returns a valid id. 
             Enter the id to deploy the apex classes 
      #  $packageHash.add("packageApex.xml", @{type = "apex"; id = "0Af0300000IAunfCAD" })

#>
 
$packageHash = @{}
#$packageHash.add("packageClearFieldTracking.xml", @{type = "metaData"; id = "" } )

 ### apex 
#$packageHash.add("packageApex.xml", @{type = "apex"; id = "" })
## not apex
#$packageHash.add("zpackageTest.xml", @{type = "metaData"; id = "" })


#$packageHash.add($PackageFileName, @{type = "metaData"; id = "" })
$packageHash.add($PackageFileName , @{type = "metaData"; id = "" })


if($destructivePackageFileName  -gt "") {
    $retrieve = $false 
    Write-Output("setting retrieve off ")
}



# -----------------------------------------  End Input -------------------------------------
# -------------------------------------------------------------------------------------
foreach ($e in $packageHash.Keys) {
    #"Key is " +$e + ", type is " + $packageHash[$e].type  + " id is " +$packageHash[$e].id
}
#for output result
if (!(Test-Path ".\scripts\wrk\deploy")) {
    New-Item -Path ".\scripts\wrk\deploy" -ItemType Directory
}
$fmtRetrieve = "sf project retrieve start -o  {alias}  -x manifest/{pack}   --json".Replace("{alias}",$sourceOrgAlias)
$fmtReport ="sf project deploy report -o {alias} -i {jobid}  --json -w 2".Replace("{alias}",$targetOrgAlias)
$fmtDeployQuick ="sf project deploy quick -o {alias} --job-id {jobid}  --json".Replace("{jobid}",$jobId).Replace("{alias}",$targetOrgAlias)
$fmtValidate ="sf project deploy validate -o {alias} -x manifest/{pack}  --json".Replace("{alias}",$targetOrgAlias)

$fmtDeploy ="sf project deploy start -o {alias} -x manifest/{pack}  --json".Replace("{alias}",$targetOrgAlias)

 
 
# sf project deploy validate --source-dir force-app
# sf project deploy quick --job-id 0Af0x000017yLUFCA2
# sf project deploy start --manifest path/to/package.xml
 
# --- Begin Code run
Invoke-Expression "Clear-Host"

### Verify Connections 
$command = ".\scripts\pssCommon\fxVerifyLogin.ps1 " + $sourceOrgAlias + ' Source'
if ( (Invoke-Expression $command) -eq $false) {
    return 'Abort Script on bad login '
}
$command = ".\scripts\pssCommon\fxVerifyLogin.ps1 " + $targetOrgAlias + ' Target'
if ( (Invoke-Expression $command) -eq $false) {
    return 'Abort Script on bad login '
}

#sf project retrieve start --manifest path/to/package.xml
$Cmd = $fmtRetrieve 

# pull artifacts from $sourceOrgAlias  
if ($sourceOrgAlias -ne '' -and $retrieve  ) {

    foreach ($x in $packageHash.keys) {
        $metaDataApex = $packageHash[$x].type
        $Command = $Cmd.Replace("{pack}", $x) 
        Write-Output("Running retrieve from Source: " + $Command)
        $vResult = Invoke-Expression $Command 
        $vResultJson = $vResult | ConvertFrom-JSON
        Write-Host("Retrieve status :" + $vResultJson.status )
        if ($vResultJson.status -eq 0) {
            Write-Host("Retrieve  id:" + $vResultJson.result.response.id )
            Write-Host("Retrieve  itemcount:" + $vResultJson.result.inboundFiles.count )
            Write-Host("Retrieve  # of Warnings:" + $vResultJson.result.warnings.count )
        }
        if ( $vResultJson.status -eq 0 -and $vResultJson.result.warnings.count -eq 0) {
            Write-Host("Retrieve Complete ->" + $Command) -ForegroundColor green
        }
        else {
            Write-Host ( "Retrieve ERROR!! `n(abort deploy)->" + $Command) -ForegroundColor red
            if ( $vResultJson.status -eq 1 ) {
                Write-Host ($vResultJson.name + "`n" +
                    $vResultJson.message + "`n" +
                    $vResultJson.commandName)  -ForegroundColor red
            }
            foreach ($warnp in $vResultJson.result.warnings) {
                Write-Host ("Retrieve error problem:" + $warnp.problem) -ForegroundColor red
            }
            return
        
        }
    }
   
}
else {
    "Bypass Retrieve | Source Alias: " + $sourceOrgAlias + " & Retrieve: " + $retrieve
}

 
if ( !$deploy ) {
    "Deploy is set to : " + $deploy + ".  ending script"
    return 
}

$Cmd = "sf project deploy start -o " + $targetOrgAlias + " -x manifest/{pack}   "

if($destructivePackageFileName  -gt "") {
    $Cmd = $Cmd + " --predestructivechanges manifest/" + $destructivePackageFileName
    $retrieve = $false 
    Write-Output("setting retrieve off ")
}

# job id is entered 
# $CmdJobid = "sf force source deploy -u " + $targetOrgAlias + " -q {jobId}   "

$Cmd = $fmtDeploy 

foreach ($x in $packageHash.keys) {
    $metaDataApex = $packageHash[$x].type
     if ($ValidateOnly) {
        $Command =$fmtValidate 
    }
    $Command = $Cmd.Replace("{pack}", $x) 
 
    if ($metaDataApex -eq "apex") {
        $Command += " " + $TestLevel
        if ($TestLevel -eq "-l RunSpecifiedTests".trim()) {
            $Command += " " + $TestClasses
        }
    }
    if ($metaDataApex -eq "metaData") {
        $Command += " "  
    }
   # $Command += " -w 1 "
    # Deploy By Job Number
    if ("" -ne $packageHash[$x].id) {
        $Command = $CmdJobid.Replace("{jobId}", $packageHash[$x].id) 
    }

    $filepath = $sObj 
    write-host Processing File $sObj.name   -ForegroundColor DarkGreen
    #$path = "& '" + $filepath.FullName + "'"
    $path = " '" + $filepath.FullName + "'"
    $sObjectHash += Invoke-Expression   $path
  
   
    Write-Output("`nRunning deploy target :" + $Command)
    $vResult = Invoke-Expression ($Command + " --json")
    $vResultJson = $vResult | ConvertFrom-JSON

    if ($vResultJson.status -eq 0) {
  
        Write-Host("Deploy  id:" + $vResultJson.result.id ) -ForegroundColor green
        Write-Host("Deploy  itemcount:" + $vResultJson.result.outboundFiles.count ) -ForegroundColor green
        Write-Host("Deploy  Status:" + $vResultJson.result.status ) -ForegroundColor green

        $packageHash[$x].id = $vResultJson.result.id
        #        $packageHash[$x].fileCount = $vResultJson.result.outboundFiles.count 
        $packageHash[$x].status = $vResultJson.result.status
        # $vResultJson
      
    }

   
    if ( $vResultJson.status -eq 0) {
        Write-Host("Deploy Queued for :" + $x ) -ForegroundColor green
    }
    else {
        Write-Host( "Deploy ERROR FOR :" + $x )-ForegroundColor red
        return $vResultJson

    }

}

foreach ($x in $packageHash.keys) {
    $packageHash[$x].done = 1 -eq 2
    $packageHash[$x].count = 0
}
do {

    $cnt = 0
    foreach ($x in $packageHash.keys) {
         
        if ($null -ne $packageHash[$x].id -and !$packageHash[$x].done  ) {
            Write-Host("Polling Queued Job : (2 minute timeout) " + $packageHash[$x].id + " " + $x) 
            $cnt += 1
            $vResult = $fmtReport.Replace("jobid", $packageHash[$x].id) 
            $vResultJson = $vResult | ConvertFrom-JSON
            
            $packageHash[$x].status = $vResultJson.status
            $packageHash[$x].numberComponentsDeployed = $vResultJson.result.numberComponentsDeployed
            $packageHash[$x].numberComponentErrors = $vResultJson.result.numberComponentErrors
            $packageHash[$x].resulttatus = $vResultJson.result.status
            $packageHash[$x].done = $vResultJson.result.done
            $packageHash[$x].numberTestsCompleted = $vResultJson.result.numberTestsCompleted
            $packageHash[$x].numberComponentsTotal = $vResultJson.result.numberComponentsTotal
            $packageHash[$x].message =
            $packageHash[$x].jsonRaw = $vResult
            $packageHash[$x].json = $vResultJson
            $packageHash[$x].errorMessage = $vResultJson.errorMessage
                        
            
      
            $packageHash[$x].status = $vResultJson.status  
            if ($packageHash[$x].status -eq 1) {
                Write-Host("Deploy  Status:" + $vResultJson.status ) -ForegroundColor yellow
                Write-Host("Deploy  message:" + $vResultJson.message ) -ForegroundColor yellow
                $packageHash[$x].count += 1
                Write-Host("Wait Count:" + $packageHash[$x].count  ) -ForegroundColor yellow
                break
            }
            Else { 
                Write-Host("Deploy  id:" + $vResultJson.result.id ) -ForegroundColor green
                Write-Host("Deploy  numberComponentsDeployed:" + $vResultJson.result.numberComponentsDeployed) -ForegroundColor green
                Write-Host("Deploy  numberComponentErrors:" + $vResultJson.result.numberComponentErrors) -ForegroundColor red
                Write-Host("Deploy  done:" + $vResultJson.result.done) -ForegroundColor green
                Write-Host("Deploy  Status:" + $vResultJson.result.status ) -ForegroundColor yellow
            }
           
        }

    }
    if ($cnt -gt 0) { 
        # retry

    }
    else {
        break
    }
} while (1 -eq 1)
# display result
Invoke-Expression "Clear-Host"

$fileContent = "Deploy on " + (Get-Date) + "`n" +
"Target " + $targetOrgAlias + "`n" + 
"ValidateOnly :" + $ValidateOnly + "`n" + 
"Test Level  " + $TestLevel

$fileContentJson = @()
$changed = @("Changed") 
$new = @("New")
$unchanged = @("unChanged") 
$failures = @("Failed") 
$memberCnt = 0

foreach ($e in $packageHash.Keys) {

    foreach ($j in $packageHash[$e].json.result.details.componentSuccesses) {
        if ($null -eq $j.componentType) {
            continue
        }
        $memberCnt += 1

        if ($j.created -eq "true") {
            $new += "-- " + $j.fileName
        }
        else {
            if ($j.changed -eq "false") {
                $unchanged += "-- " + $j.componentType + " :" + $j.fullName
            }
            else {
                $changed += "-- " + $j.componentType + " :" + $j.fullName
            }
        }
    }
    foreach ($j in $packageHash[$e].json.result.details.componentFailures) {
        $failures += "-- " + $j.componentType + " :" + $j.fullName + "`n     " + $j.problem  
    }
 
    $fileContentJson += $packageHash[$e].jsonRaw + ","
    $fileContent += 
    ( "`n Deploy result for :" + $e + 
    "`n     Jobid : " + $packageHash[$e].id +
    "`n     # Status : " + $packageHash[$e].resulttatus +
    "`n     # deployed : " + $packageHash[$e].numberComponentsDeployed +
    "`n     # errors :" + $packageHash[$e].numberComponentErrors +
    "`n     # total components :" + $packageHash[$e].numberComponentsTotal +
    "`n     # test Completed :" + $packageHash[$e].numberTestsCompleted +
    "`n     # error message :" + $packageHash[$e].errorMessage   

    ) 
}
$fRootBase = "scripts/wrk/deploy/deploy"  
$fRoot = $fRootBase + (Get-Date -Format "yyyyMMdd-HHmmss") 
$fileOut = $fRoot + ".VOnly-" + $ValidateOnly + '.txt'
$fileOutBase = $fRootBase + '.txt'
$fileContent | Set-Content -Path $fileOut
$fileContent | Set-Content -Path $fileOutBase
write-Host ("result saved to :" + $fileOutBase) -ForegroundColor green

$fileOut = $fRoot + '.json'
$fileOutBase = $fRootBase + '.json'

$fileContentJson | Set-Content  -Path $fileOut
$fileContentJson | Set-Content  -Path $fileOutBase

$fileOut = $fRoot + '.diff.text'
$fileOutBase = $fRootBase + '.diff.text'
$($new + $changed + $unchanged)  | Set-Content  -Path $fileOut
$($new + $changed + $unchanged)  | Set-Content  -Path $fileOutBase

$fileOut = $fRoot + '.failures.text'
$fileOutBase = $fRootBase + '.failures.text'

$failures | Set-Content  -Path $fileOut
$failures | Set-Content  -Path $fileOutBase

Write-Host $fileContent -ForegroundColor blue
if ($failures.Length -gt 1) {
    Write-Host $failures -ForegroundColor red 
}
Write-Host " See deployment $memberCnt deployment items in deploy.diff" -ForegroundColor yellow
if ($memberCnt -le 20) {
    Write-Output ($new + $changed + $unchanged)   #-ForegroundColor blue
}
if ($ValidateOnly) { 
    Write-Host " !! For Quick Deploy set pre verified JobIds in hash table"   -ForegroundColor green
    Write-Host "     ie:  hash.add(""packageApex.xml"", @{type = ""apex""; id = ""0Af000-The JobId"" }) "   -ForegroundColor green

}
 