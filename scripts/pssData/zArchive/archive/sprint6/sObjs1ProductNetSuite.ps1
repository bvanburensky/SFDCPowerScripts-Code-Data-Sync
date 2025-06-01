$packageHash = @{}


$packageHash.add("Product2.netsuiteDeploy", 

  @{fields      =
    " 
  Unique_id__c   , 
  NetSuite_Internal_Id__c	,
  NetSuite_Internal_Id_Renewal__c	,
  NetSuite_Item_Code__c,	
  NetSuite_Item_Code_Renew__c,
  SBQQ__TaxCode__c,
  AVA_SFCPQ__TaxCode__c

   "
    ;
    where       = " where Unique_id__c != null and ProductCode != null and  NetSuite_Internal_Id__c != null  ";
    importOrder = "1"
    orderby     = ' order by Financial_Category__c';
   # ignore      = $true ;
  } )

 

return $packageHash
 

