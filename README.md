# SFDC PowerScripts-Code-Data-Sync

Scripting for deployment of code and sync of Data specifically CPQ objects
Having worked on so many CPQ projects, this is a real timesaver and bug killer.

**New Revcloud will be added and some migration scripts as well**

#### I youare looking for a fancy GUI , etc this not for you.   There is a ramp up and knowing powershell or scripting is helpful. 

## These scripts are used to deploy packages between SFDC environments

### Production, Sandox, scratch etc.

### CPQ Scripts build to move all CPQ Objects from one environment to another in minutes

#### Not only CPQ, but any salesforce object can be replicated making easy to stand up test envionments and / or handle data corrections.

### Requires external ids on all objects and i have added some tips on how to set it up.

### once in place you can stand up test envionments quickly and deploy back to prod intelligently

### under the hood the scripts run standard sf data commands to get and upsert data.  this project just makes it more managable and the subdirectory allows the CPQ team to manage changes in standard sprints for CI/CD change control.

### scripts just make it easly repeatable

Scripting sync works by matching on external id fields setup on each SBQQ__xxx object (or any sfdc object).
Included in this project are external id manifests for all CPQ objects that you can use to add external id to yourr cpq objects (assuming you have none already),
included is a auto number field that can be deployed to you master org to generaterate the ids
that can then be used to populate your externalid fields for syncing.
see attached hack reeadme.

Once the external id as established in your master, create a sandbox or scratch org.
Using the dataGetDeploy.ps1 set you sfdc alias to the source and target environments
$sourceOrgAlias = 'master'
and
$targetOrgAlias = 'jimtest26'    // your sandbox.
then run the script dataGetDeploy.ps1

### pssData

*where query data is placed upon reterival*

* ## -data


  * -org
  * ** each org maps maps to you project or spring
  * when the script runs data goes here by alias name
  *

  -sourceAlias

  - -sObject1.csv
    -sobject2.csv
  - targetAlias
    -sObject1.csv
    -sobject2.csv
    ...
* project / spring / other grouping

  * a collection of data scripts

## sObjects - the actual scripts

* -project-sprint
  -dataGetDeploy.ps1

  * -sourceOrgAlias(alias)
  * -targetOrgAlias(alias)
* -sObjectFile1.ps1
* -sObjectFile2.ps1
  -sObjectFile2.ps1

### 

** the dataGetDeploy.ps1 is run using the run run script in vs code.  The script searchs its directory for the sObj files which contain the actual SOQL. Generally i copy a project directory into a new directory under the sobjects directory and add or remove objects as needed.   This way the earlier sprint scripts availabe if needed

## example workflow - new spring project

1. copy and paste the CPQConfig io earlier nto a new directory under sObjects.

   1. this includes the dataGetDeploy as well as sObjScripts
2. in the dataGetDeploy you will find the source and target alias that you set to the needed values
3. the reterive and deploy are as you expect.

   test your reterive as needed then turn on deeploy when ready.
4. note: the same $svar is set mutilple times in the script.  the last one wins
5. ```
   $sourceOrgAlias = 'dev' 
   $sourceOrgAlias = 'sfcpqdev' 

   $sourceOrgAlias = 'XRXFull' 
   $sourceOrgAlias = 'XRXFullIn' 
   $sourceOrgAlias = 'XRXProdBk'   
   $sourceOrgAlias = 'XRXProdIn'   
   #$sourceOrgAlias = 'Sunsetnessdevnew' 
   # target connection to your dev or prodction 


   $targetOrgAlias = 'SunsetProd' 
   $targetOrgAlias = 'SunsetUAT'  
   $targetOrgAlias = 'SunsetDev'   
   $targetOrgAlias = 'XRXFull'  
   $targetOrgAlias = 'XRXProd' 


   #######  true|False  # perform the retrieve from the source org or use the artifacts that exist   

   $retrieve = $true  
   #######  true|False deploy or verify the artifacts to the target org.  
   #        if retrieve and deploy are false then nothing is going to happen  
   $deploy = $true
   ```
6. the script scans the sobject files and where the ignore is false it adds for processing
7. the import order determines the order the SOQL is processed

   1. This is important when upserting new records with related dependencies ie SBQQ__summary__c needs to be inserted before the the price rule that uses it.
8. the where clause helps filter those records for the current sprint
9. which brings us back to the external ids.  after the inital loading of external ids where test and production are in sync and you add new records  make the date part of the external id for new records that are being addeed. this makes them easy to ideentify for migraton to prod. and provides a history of when the record was created  and deploydto production
10. ****where external_id__c >= 'EX-20260415.01"

```
$packageHash = @{}

$packageHash.add("SBQQ__ProductFeature__c",
    @{fields        = 
        "  
        Name,
        external_id__c,
        SBQQ__Category__c,
        SBQQ__ConfigurationFieldSet__c,
        SBQQ__ConfiguredSKU__r.external_id__c,
        SBQQ__DiscountSchedule__r.external_id__c,
        SBQQ__DynamicProductFilterFieldSet__c,
        SBQQ__DynamicProductLookupFieldSet__c,
        SBQQ__MaxOptionCount__c,
        SBQQ__MinOptionCount__c,
        SBQQ__Number__c,
        SBQQ__OptionSelectionMethod__c
      ";
   
        importOrder = "2" ;
        where       = "" # where external_id__c = 'EX-20260415.01"  
        ignore      = $true
    } )  
```

****The file, sobject and directory allow you to specify specific objects and psfiles to processes
always set the onlyProcessDirectory to the currect sprint /sobject directory. or it will scan everythingin the sObjects subdirectory.

```


$onlyProcessFile = ""
$onlyProcessSObject = ""
$onlyProcessDirectory = "CPQConfig"

## Inputoutput subdir contain your deployment
$csvOutOverride = 'CPQConfig' 

### Exclude yourself or  endless loop
$excludeProcessFile = "dataGetDeployX.ps1,dataGetDeploy.ps1," 
$excludeProcessFile += "asda.ps1"  
$excludeProcessSObject = ""
$excludeProcesssDirectory = ""


```
