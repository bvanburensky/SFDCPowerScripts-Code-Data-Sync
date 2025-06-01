 
$packageHash = @{}


$packageHash.add("breadwinner_ns__BW_Address__c.bw", 
@{fields        =
    " 
   id 
";
    importOrder = "1";
    where       = " where account__c = null and  breadwinner_ns__Company__c != null and "+
              "    breadwinner_ns__Company__r.breadwinner_ns__Salesforce_Account__c != null  " +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by Account__c      "
  #  ignoreDeploy = $true;
     # ignore      = $true

} ) 


$packageHash.add("SCG_Address__c.statss", 
@{fields        =
    " 
   id 
";
    importOrder = "1";
    where       = " where State_Code__c != null  and State_Name__c  = null  " +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by Account__c      "
  #  ignoreDeploy = $true;
    ignore      = $true

} ) 


$packageHash.add("SCG_Address__c.patch", 
@{fields        =
    " 
   id 
";
    importOrder = "1";
    where       = " where uAddress__StateCode__s = null  and Billing_Default__c = true  " +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by Account__c      "
  #  ignoreDeploy = $true;
       ignore      = $true

} )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SCG_Address__c.AutoNumber", 
  @{fields        =
      " 
     id,Name
  ";
      importOrder = "1";
      where       = "     " +
                    "  where Address_Number__c = null ";
      externalId  = "Id";
      orderBy     = "order by CreatedDate     "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SCG_Address__c.fixCountry", 
  @{fields        =
      " 
     id,Country_Code__c,Legacy_Horizon_Id__c  
  ";
      importOrder = "1";
      where       = " where Country_Code__c    =null    " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by State_Name__c    "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SCG_Address__c.fixState", 
  @{fields        =
      " 
     id,State_Name__c  
  ";
      importOrder = "1";
      where       = " where State_Code__c =null and State_Name__c != null    " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by State_Name__c    "
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } )  

$packageHash.add("SCG_Address__c.strr", 
@{fields        =
    " id,Street__c, Address_1__c
    
";
    importOrder = "1";
    where       =  " where id = 'a8yDo0000011DzLIAU'  ";
    externalId  = "Id";
    orderBy     = "   order by createdDate  "
  #  ignoreDeploy = $true;
       ignore      = $true

} )  

$packageHash.add("SCG_Address__c.touchBill", 
@{fields        =
    " 
   max(id)Id
";
    importOrder = "1";
    where       = " where account__c != null and Billing__c = true and 
        Shipping_Default__c = false and
       account__r.uAddress_Billing__c =null" +
                  "   ";
    externalId  = "Id";
    orderBy     = "   group by account__c having count(account__c) =1
      limit 3000   "
  #  ignoreDeploy = $true;
      ignore      = $true

} )  

$packageHash.add("SCG_Address__c.touchShip", 
@{fields        =
    " 
   max(id)Id
";
    importOrder = "1";
    where       = " where account__c != null and Shipping__c = true and 
        Shipping_Default__c = false and
       account__r.uAddress_Shipping__c =null" +
                  "   ";
    externalId  = "Id";
    orderBy     = "   group by account__c having count(account__c) =1
      limit 2000   "
  #  ignoreDeploy = $true;
      ignore      = $true

} )  
 



$packageHash.add("SCG_Address__c.migrateStreet", 
@{fields        =
    " 
   Name,Street__c
";
    importOrder = "1";
    where       = " where Account__c != null and  address_1__c != null  "  
    externalId  = "Id";
    orderBy     = "order by Name  limit 10    "
  #  ignoreDeploy = $true;
   ignore      = $true

} )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SCG_Address__c.ckCountry", 
  @{fields        =
      " 
     id,Country_Code__c ,State_Code__c ,Address_1__c,City__c
  ";
      importOrder = "1";
      where       = " where Country_Code__c =null    " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } )  

 
  $packageHash.add("Account.RecType", 
  @{fields        =
      " 
     id,Name,LastModifiedDate
  ";
      importOrder = "1";
      where       = " where RecordTypeId = '0123i000000d9FCAAY'     " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate  desc  "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  

 
 

return $packageHash
 

