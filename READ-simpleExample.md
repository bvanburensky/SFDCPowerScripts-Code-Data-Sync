# Getting started - how it all works

### * This example will show 90% of what you need to know to use this project

* *The busness case is to update the fred accounts from active to inactive.  yes or course there are other ways!, but follow along!*
* In  scripts/pssData/sObects/randomExamples sub directory pull up sObjsIsActive.ps1
* sObjects queries are described in this format.
* yeah it is different but simple, what is the sObject, what are the fields and what are the where and order clauses.
* order by and where are optional.
  * use the order by field perform any group by you may want
* the  $packageHash is a hash table that loads these entries which are then processed ( queried) one a time based on the input order.
* notice that the account.active entry name.
  * the account.active is the hash key and must be unique across the sObj files being processed
  * the name of the generated csv will be account.active.csv
  * this allows you to have multiple entries in file for the same sObject. You can cut  and paste an entry update the hash key and perhaps pull in different fields, where clause etc
* the ignore is set to false to process the entry.  this allows you to be selective about what is processed or not
  * set to true to not process the file
  * if ignore is not set, the entry will not be processed
* ```
  $packageHash.add("account.actives",
      @{fields = "  
          id,
          isActive__c
        ";  
          importOrder = "2" ;
          where       = " where isActive__c = true and name like 'fred%' "
          orderby     = " order by name limit 100"
          ignore      = $false
      } )   

  return $packageHash

  ```

in the dataGetDeploy script we update the these settings to set the active flag
$replace to true
$IDFieldForUpsert = 'id'
$sReplaceFileName = "xRepActive.ps1"

```
  $replace = $true  #### set to true to run the field replace 

  
  $retrieveFieldOverride = "'id,name'"
  $retrieveFieldOverride = "'id,external_id__c'"
  $retrieveFieldOverride = "'id,external_id_auto__c'"
  #$retrieveFieldOverride = ""
  # $IDFieldForUpsert = "external_id__c"
  $IDFieldForUpsert = "'external_id__c'"
  $IDFieldForUpsert = "'id'"   ### key that will be used to update the record

  $orderbyDefault = "order by external_id__c limit 100000"
  
  
  $sReplaceFileName = "xIdReplace.ps1"
  $sReplaceFileName = "xRepActive.ps1"   #### file used to perform replace

```

* and here here is what is in our xRepActive.ps1 script.
* bottomline: the csv file is just a text file,  the replace does a simple text replace across the csv file.
* with the settings we can pull the data and run the replace and see the changes made to the csv file.
* note that the replace from and includes the ',' in other senerios this can be inportant to update the correct data .
* if it looks good then deploy.

```
$aReplace = @()
$aReplace += @{from = "',true'"; to = "',false'"; }
return $aReplace


```

Now lets source and targets
first its all about the alias
you can run this command to see what is configured
sf alias list

when the script is run a subdirectory will be created for the source and target aliases.
in out example the source and target is the same sf instance but we want seperate subdirectories for source and target

so we just add an alias pointing to the same instance
sf alias set bvbtest26In  bvbtest26@roxdogs.com
sf alias set

```
# source connection to your dev or prodction 
$sourceOrgAlias = 'master'   
$sourceOrgAlias = 'bvbtest26In'   
# target connection to your dev or prodction 
$targetOrgAlias = 'XRXProd' 
$targetOrgAlias = 'bvbtest26'   

#######  true|False  # perform the retrieve from the source org or use the artifacts that exist   

$retrieve = $true
#######  true|False deploy or verify the artifacts to the target org.  
#        if retrieve and deploy are false then nothing is going to happen  
$deploy = $true  

# after deploying, reterieve the objects and take a look 
$reQuerytargetOrgOnDeploy = $true

```
