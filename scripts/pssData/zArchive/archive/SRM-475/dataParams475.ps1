 
 
<# 

 Data Parametese assocated with ticket SRM 475  
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
$sourceOrgAlias = 'DIProd1' 
$sourceOrgAlias = 'DIDev' 
#$sourceOrgAlias = 'DIUAT' 

# $sourceOrgAlias = 'DIDev' 
#$sourceOrgAlias = 'DInessdevnew' 
# target connection to your dev or prodction 
$targetOrgAlias = 'billyBobDev' 
$targetOrgAlias = 'production' 
$targetOrgAlias = 'fullqa' 
$targetOrgAlias = 'DIProd' 
$targetOrgAlias = 'DIUAT' 
$targetOrgAlias = 'DIDev'  
$targetOrgAlias = 'DIQA'   
 

#  01s230000011nK9AAI  new Pricing uat 01s230000011nK9AAI
#  UAT new  PB 01s230000011pyPAAQ   old  01s2M000008ohpYQAQ
#$targetOrgAlias = 'DInesstest' 
#######  true|False  # perform the retrieve from the source org or use the artifacts that exist   

$retrieve = $false
#######  true|False deploy or verify the artifacts to the target org.  
#        if retrieve and deploy are false then nothing is going to happen  
$deploy = $true
# to delete records spcified in a csvfile
 
# after deploying, reterieve the objects and take a look 
$reQuerytargetOrgOnDeploy = $true
# process or not a specific file or sObjectcls
 
$onlyProcessFile = "sObjs1Product.ps1"
$onlyProcessSObject = "Product2.Updates"
$onlyProcessDirectory = "SRM-475"

## Inputoutput subdir contain your deployment
$csvOutOverride = 'SRM-475' 

$excludeProcessFile = "" #"sObjs4Pricings1.ps1,sObjs1Producst.ps1"
$excludeProcessSObject = ""
$excludeProcesssDirectory = ""

# for debug. display the reterive query
 
#IDFieldForUpsert = "'id'"

 