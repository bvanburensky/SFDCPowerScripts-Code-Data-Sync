# SFDCPowerScripts-Code-Data-Sync

Scripting for deployment of code and sync of Data specifically CPQ objects
Having worked on so many CPQ projects, this is a real timesaver and bug killer.

**New Revcloud will be added and some migration scripts as well**

## These scripts are used to deploy packages between SFDC environments

### Production, Sandox, scratch etc.

### CPQ Scripts build to move all CPQ Objects from one to another in minutes

### Requires external ids on all objects and i have added some tips on how to set it up.

### once in place you can stand up test envionments quickly and deploy back to prod intelligently

### scripts run standard sfdx data commands to get and upsert data

### scripts just make it easly repeatable

Scripting sync weres by matching on external id fields setup on each SBQQ__xxx object.
to start apply the external id manifests to you cpq objects (assuming you have none already),
included is a auto number field that can be deployed to you master org to generaterate you ids
that can then be used to populate your externalid fields.
see attached.

Once the external id as established in you master, create an sandbox or scratch org
in the dataGetDeploy.ps1 set you sfdc alias to the source and target environments
$sourceOrgAlias = 'master'
and
$targetOrgAlias = 'jimtest26'    // your sandbox.
then run the script dataGetDeploy.ps1

more details:
pssData directory contains the ps1 scripts for data sync

### pssData

*where query data is retrieved *

* ## -data


  * -org
  * ** each org maps maps to you project or spring
  * when the script runs data goes here by alias name
  *

  -sourceAlias

  - sObject1.csv
    -sobject2.csv
  - targetAliasthis g
    -sObject1.csv
    -sobject2.csv
    ...
* project / spring / other grouping

  * a collectyion of data scripts

## sObjects

* -project-sprint
  -dataGetDeploy.ps1

  * -sourceOrgAlias(alias)
  * -targetOrgAlias(alias)
* -sObjectFile1.ps1
* -sObjectFile2.ps1
  -sObjectFile2.ps1

### once in place you can stand up test envionments quickly and deploy back to prod intelligently

### scripts run standard sfdx data commands to get and upsert data

### scripts just make it easly repeatable

** the dataGetDeploy.ps1 is run usiing the run scrit in vs code.  The script search its directory for the sObj files witch contain the actual SOQL. generally i copy a project directory into a new directory under the sobjects directory and add or remove objects as needed.
** the dataGetDeploy.ps1 is run usiing the run scrit in vs code.  The script search its directory for the sObj files witch contain the actual SOQL. generally i copy a project directory into a new directory under the sobjects directory and add or remove objects as needed.
Scripting sync weres by matching on external id fields setup on each SBQQ__xxx object.
to start apply the external id manifests to you cpq objects (assuming you have none already),
included is a auto number field that can be deployed to you master org to generaterate you ids
that can then be used to populate your externalid fields.
see attached.

Once the external id as established in you master, create an sandbox or scratch org
in the dataGetDeploy.ps1 set you sfdc alias to the source and target environments
$sourceOrgAlias = 'master'
and
$targetOrgAlias = 'bvbtest26'    // your sandbox.
then run the script dataGetDeploy.ps1

more details:
pssData directory contains the ps1 scripts for data sync

### pssData

-data

-org

### project-sprint

-sourceAlias

-sObject1.csv
-sobject2.csv
...
-targetAlias
-sObject1.csv
-sobject2.csv
...

### sObjects

-project-sprint ()
-dataGetDeploy.ps1

-sourceOrgAlias(alias)

-targetOrgAlias(alias)

-sObjectFile1.ps1

-sObjectFile2.ps1


**so for cpq you may be updating/creating a  price rule or summuray var in the current sprint so are marked as not ignored and can be pushed to prod or stage.

## example workflow - new spring project

1. copy and paste the CPQConfig into a new directory under sObjects
2. in the dataGetDeploy you will find the source and target alias that you set to the needed values
3. the reterive and deploy are as you expect.

   1. test your reterives as needed then turn on deeploy when ready.
4. ```
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
5. the script scans the sobject files and where the ignore is false it adds for processing
6. the import order determines the order the SOQL is processed and is important when there aree related dependencies ie SBQQ__summary__c needs to be inserted before the the price rule that usses it.
7. the where clause helps filtere those records for the current sprint
8. which brings us back to the external ids.  after the inital loading of external ids where test and production are in sync and you add fields, make the date part of the external id for new records that are being addeed. this makes them easy to ideentify for migraton to prod
9. ****where external_id__c = 'EX-20260415.01"

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
$onlyProcessDirectory = "CPQConfig"  indicates the subdirectiry that contains the SOQL result files.
