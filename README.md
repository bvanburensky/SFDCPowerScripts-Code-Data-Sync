# SFDCPowerScripts-Code-Data-Sync

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
  - targetAlias
    -sObject1.csv
    -sobject2.csv
    ...
* project / spring / other grouping

  * a collectyion of data scripts


## sObjects

* -project-sprint
  -dataGetDeploy.ps1

  * -sourceOrgAlias(alias)
  * targetOrgAlias(alias)
* -sObjectFile1.ps1
* -sObjectFile2.ps1



$onlyProcessDirectory = "CPQConfig"  indicates the subdirectiry that contains the SOQL result files.
