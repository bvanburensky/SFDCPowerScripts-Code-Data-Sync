$packageHash = @{}


$packageHash.add("Product2.netsuiteDeploy", 

  @{fields      =
    " 
  NetSuite_Internal_Id__c	,
  NetSuite_Item_Code__c,	
  NetSuite_Item_Code_Renew__c,
  SBQQ__TaxCode__c,
   Unique_id__c
   "
    ;
    where       = " where Unique_id__c != null and ProductCode != null and  NetSuite_Internal_Id__c != null ";
    importOrder = "1"
    orderby     = ' order by Financial_Category__c';
   # ignore      = $true ;
  } )



 
$packageHash.add("Product2.mappingRenew", 

  @{fields      =
    " 
  Name
  ,ProductCode  
  ,Unique_id__c
  ,NetSuite_Item_Code_Renew__c
  ,id  
  "
    ;
    where       = " where NetSuite_Item_Code_Renew__c != null ";
    importOrder = "1"

    orderby     = 'order by NetSuite_Item_Code_Renew__c'    ;
    ignore      = $true ;
    #ignoreGet = $true;
    #ignoreDeploy = $false;

  } )

 
  $packageHash.add("Product2.mappingNew", 

  @{fields      =
    " 
  Name
  ,ProductCode  
  ,Unique_id__c
  ,NetSuite_Item_Code__c
  
  "
    ;
    where       = " where NetSuite_Item_Code__c != null ";
    importOrder = "1"

    orderby     = 'order by NetSuite_Item_Code_Renew__c'    ;
    ignore      = $true ;
    #ignoreGet = $true;
   # ignoreDeploy = $false;

  } )


# Used to import form csv files and set the netsuite codes 
$packageHash.add("Product2.netsuiteNot", 

  @{fields      =
    " 
  ProductCode
  ,Product_Code_Id__c  
  ,Unique_id__c
  ,Financial_Category__c
  ,Name  
  "
    ;
    where       = " where Unique_id__c != null and ProductCode != null and (  Is_One_Time__c = true or is_subscription__c = true) ";
    importOrder = "1"

    orderby     = 'order by Financial_Category__c'    ;
    ignore      = $true ;
  } )

$packageHash.add("Product2.netsuiteimportNOt", 

  @{fields      =
    " 
  NetSuite_Internal_Id__c	,
  NetSuite_Item_Code__c,	
  NetSuite_Item_Code_Renew__c,
  SBQQ__TaxCode__c,
  ProductCode
  ,Product_Code_Id__c  
  ,Unique_id__c
"
    ;
    where       = " where Unique_id__c != null and NetSuite_Item_Code_Renew__c ='N/A'   ";
    importOrder = "1"
    orderby     = ' order by Financial_Category__c' ;
    ignore      = $true ;
    ignoreDeploy = $true;
  } )


return $packageHash
 

