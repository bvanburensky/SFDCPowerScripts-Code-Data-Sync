<# 

this may be required. run in terminal 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser  
#>
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

## ------------------------- Input parameters -------------------------
## --------------------------------------------------------------------------
# retieve to pull from sandbox and deploy to your or another sandbox or production
# source connection 
# NOTE: This alias is also used as the directory for data retrieve and deploy 
 
$sourceOrgAlias = 'dev' 
$sourceOrgAlias = 'sfcpqdev' 
$sourceOrgAlias = 'fullqa' 
$sourceOrgAlias = 'production'  
$sourceOrgAlias = 'XRXProd1' 
$sourceOrgAlias = 'XRXUAT0TF' 
$sourceOrgAlias = 'XRXQA' 
$sourceOrgAlias = 'XRXFull' 
$sourceOrgAlias = 'XRXFullIn' 
$sourceOrgAlias = 'XRXProdIn'   

#$sourceOrgAlias = 'XRXnessdevnew' 
# target connection to your dev or prodction 
 
  
$targetOrgAlias = 'XRXProd' 
$targetOrgAlias = 'XRXUAT' 
$targetOrgAlias = 'XRXDev'   
$targetOrgAlias = 'XRXFull'  
#$targetOrgAlias = 'XRXProd' 

 
#######  true|False  # perform the retrieve from the source org or use the artifacts that exist   
 
$retrieve = $true           
#######  true|False deploy or verify the artifacts to the target org.  
#        if retrieve and deploy are false then nothing is going to happen  
$deploy = $false                 
# to delete records spcified in a csvfile
 
# after deploying, reterieve the objects and take a look 
$reQuerytargetOrgOnDeploy = $true
# process or not a specific file or sObjectcls
 
$onlyProcessFile = ""
$onlyProcessSObject = ""
$onlyProcessDirectory = "XRX7x"

## Inputoutput subdir contain your deployment
$csvOutOverride = 'XRX7x' 


### Exclude yourself or  endless loop
$excludeProcessFile = "dataGetDeployX.ps1,dataGetDeploy.ps1,killDeleteData.ps1," 
$excludeProcessFile += "asda.ps1"  
$excludeProcessSObject = ""
$excludeProcesssDirectory = ""

# for debug. display the reterive query

$retrieveFieldOverride = "'id,unique_id__c'"
$retrieveFieldOverride = "'id,name'"
$retrieveFieldOverride = "'id,unique_id__c'"
$retrieveFieldOverride = ""
# $IDFieldForUpsert = "unique_id__c"
$IDFieldForUpsert = "'id'"


$replace = $false     

$sReplaceFileName = "StateCountryReplace.ps1"
#$sReplaceFileName = "StateReplace.ps1"
$sReplaceFileName = "addressReplace.ps1"
$sReplaceFileName = "xRepAccountReplace.ps1"
$sReplaceFileName = "xRepTerms.ps1"



#$rename = $false
 
$excludeProcessFile + "," + $sReplaceFileName
if ($replace) {
  
  $excludeProcessFile + "," + $sReplaceFileName
  $command = ".\scripts\pssData\sObjects\" + $onlyProcessDirectory + '\' + $sReplaceFileName
 
  $aReplace = @()
  $aReplace += Invoke-Expression $command
 
}

# for debug. display the reterive query
$showExcluded = $false
$showQuery = $true
#This only applies to reterive 
$whereOverride ="" ## " 'where Unique_ID__c in (''EX-020120033'')' "

#Add to the existing Query 'and field = ''asd '' ' if false then replaces any Where clause
$whereOverrideAdd = $true
## alpha loop logic.  set onlyProcessSObject to an sobject
# loop through a-z and query
$AlphaBetLoop = $false
## 
$BuildTicketPath = $true
## $AlphaBetLoopWhere = " ' where name like ''{ABIndex}%'' '"
# Codex
$AlphaBetLoopWhere = ""; # ' and Jurisdiction_Code__c like ''{ABIndex}%'' '"

## ------------------------- End Input parameters -------------------------

Invoke-Expression "Clear-Host"

## Test Logins
if ($retrieve) {
  $command = ".\scripts\pssCommon\fxVerifyLogin.ps1 " + $sourceOrgAlias + ' Source'
  if ( (Invoke-Expression $command) -eq $false) {
    return 'Abort Script on bad login '
  }
}
if ($deploy) {
  $command = ".\scripts\pssCommon\fxVerifyLogin.ps1 " + $targetOrgAlias + ' Target'
  if ( (Invoke-Expression $command) -eq $false) {
    return 'Abort Script on bad login '
  }
}


#location pf the scripting files for each object
$scriptPath =  "./scripts/pssData/"
$sObjectPath = "./scripts/pssData/sObjects/"


 
$commandParm += " -sObjectPath $sObjectPath  -whereOverrideAdd $whereOverrideAdd  "
if ($onlyProcessFile -gt "" ) {
  $commandParm += " -onlyProcessFile $onlyProcessFile "
}
if ($onlyProcessSObject -gt "" ) {
  $commandParm += "-onlyProcessSObject $onlyProcessSObject "
}
if ($excludeProcessFile -gt "" ) {
  $commandParm += " -excludeProcessFile $excludeProcessFile "
}
if ($excludeProcessSObject -gt "" ) {
  $commandParm += "-excludeProcessSObject $excludeProcessSObject "
}
if ($onlyProcessDirectory -gt "" ) {
  $commandParm += "-onlyProcessDirectory $onlyProcessDirectory "
}

if ($excludeProcesssDirectory -gt "" ) {
  $commandParm += "-excludeProcesssDirectory $excludeProcesssDirectory "
}
if ($retrieveFieldOverride -gt "" ) {
  $commandParm += "-retrieveFieldOverride $retrieveFieldOverride "
}
if ($IDFieldForUpsert -gt "" ) {
  $commandParm += "-IDFieldForUpsert $IDFieldForUpsert "
}
 


$AlphaBetU = @()
if ( !$AlphaBetLoop) {
  $AlphaBetU += "All"
  if ($whereOverride -gt "" ) {
    $commandParm += " -whereOverride $whereOverride "
  }
}

if ($AlphaBetLoop) {
  $command = ".\scripts\pssCommon\fxGetAlphabet.ps1 "  
  ## returns array of a-z
  $AlphaBetU = Invoke-Expression $command
}
#for output result
if (!(Test-Path ".\scripts\wrk\csv")) {
  New-Item -Path ".\scripts\wrk\csv" -ItemType Directory
}

$csvOutputPath = "./scripts/pssData/data/org/" + $sourceOrgAlias + "/"
if($csvOutOverride -gt "") {
  $csvOutputPath = "./scripts/pssData/data/org/"+$csvOutOverride +"/" + $sourceOrgAlias + "/"
}


$cmdAlpha =""
Write-Host $AlphaBetUshowExcluded
foreach ($letter in $AlphaBetU) {
  if ($letter -ne "All" ) {
    
    $NameLike = $AlphaBetLoopWhere.replace("{ABIndex}",$letter)
    $cmdAlpha = " -whereOverride $NameLike"

  } 
  if ($retrieve) {
    write-host Data Retrieve Starting  -ForegroundColor green
    $command = $scriptPath + "fxGetData.ps1 -sourceOrgAlias $sourceOrgAlias -csvOutputPath $csvOutputPath " +
                             " $commandParm $cmdAlpha {-showQuery:$showQuery} " 
    write-host running $command  -ForegroundColor yellow
    Invoke-Expression $command
    write-host Retrieve Complete -ForegroundColor green
  }
  if ($replace) {
 
    foreach ($repls in $aReplace) {
      $repls.from + '-->' + $repls.to
      $rcmd = " -ReplaceTextFrom  " + $repls.from 
      $rcmd += " -ReplaceTextTo " + $repls.to
      $command = $scriptPath + "fxReplaceData.ps1 -sourceOrgAlias $sourceOrgAlias -csvOutputPath $csvOutputPath $commandParm   " 
      $command += $rcmd
      write-host running $command  -ForegroundColor yellow
      Invoke-Expression $command
    }

  }
   
  if ($deploy) {
    write-host Data Deploy Starting  -ForegroundColor green 
    $command = ($scriptPath) + "fxDeployData.ps1 -sourceOrgAlias $sourceOrgAlias -targetOrgAlias $targetOrgAlias "+
                              " -csvOutputPath $csvOutputPath  $commandParm "
    write-host running $command  -ForegroundColor yellow
    Invoke-Expression $command
    write-host Deploy Complete  $sObj -ForegroundColor green
  }
  break
}
 
# repull from target
$csvOutputPath = "scripts/pssData/data/org/" + $targetOrgAlias + "/"
if($csvOutOverride -gt "") {
  $csvOutputPath = "scripts/pssData/data/org/"+$csvOutOverride +"/" + $targetOrgAlias + "/"
}
if ($deploy -and $reQuerytargetOrgOnDeploy) {
  write-host Data Retrieve Starting  -ForegroundColor green
  $command = $scriptPath + "fxGetData.ps1 -sourceOrgAlias $targetOrgAlias -csvOutputPath $csvOutputPath  $commandParm "
  write-host running $command  -ForegroundColor yellow
  Invoke-Expression $command
  write-host Retrieve Complete -ForegroundColor green
}