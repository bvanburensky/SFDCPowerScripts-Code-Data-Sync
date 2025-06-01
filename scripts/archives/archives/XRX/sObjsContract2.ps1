 
$packageHash = @{}

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SBQQ__Subscript.priceEndtry", 
  @{fields        =
      " 
     id,SBQQ__RenewedSubscription__c,SBQQ__UpgradedSubscription__c,SBQQ__Product__c
  ";
      importOrder = "1";
      where       = " where SBQQ__Quote__c = 'a6GDo0000000tCjMAI'   " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
    ignore      = $true
  
  } )  
 

 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.priceEndtry", 
 @{fields        =
     " 
    id, SBQQ__PricebookEntryId__c
 ";
     importOrder = "1";
     where       = " where SBQQ__PricebookEntryId__c = null and " +
             "   sbqq__quote__r.SBQQ__Primary__c = false  and "+
             " sbqq__quote__r.sbqq__opportunity2__r.Isclosed = false " +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate   "
    # ignoreDeploy = $true;
       ignore      = $true
 
 } )  


 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.clearSubs", 
 @{fields        =
     " 
    id,SBQQ__RenewedSubscription__c,SBQQ__UpgradedSubscription__c,SBQQ__Product__c
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000tCjMAI'   " +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
     ignoreDeploy = $true;
      ignore      = $true
 
 } )  


 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.zeroQty", 
 @{fields        =
     " 
    id,SBQQ__Quantity__c
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000tS8MAI'   " +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
    # ignoreDeploy = $true;
    ignore      = $true
 
 } )  



 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.clearSubsUpdate", 
 @{fields        =
     " 
    id,SBQQ__RenewedSubscription__c,SBQQ__UpgradedSubscription__c
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000tSIMAY'   " +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
    # ignoreDeploy = $true;
     ignore      = $true
 
 } )  


 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.natreat1", 
 @{fields        =
     " 
    id,SBQQ__Product__c,SBQQ__Product__r.name,Product_Line__c ,SBQQ__Group__c,SBQQ__Group__r.Name
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000tCjMAI'  and SBQQ__NetTotal__c = 0 " +
                   "  and SBQQ__Product__c = '01tDo000000UZSRIA4' and SBQQ__Group__c != 'a6ADo000000snRpMAI' ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
     ignoreDeploy = $true;
    ignore      = $true
 
 } )  

 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.natreaUpdate1", 
 @{fields        =
     " 
    id,SBQQ__Group__C
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000tCjMAI'  and SBQQ__NetTotal__c = 0 " +
                   "  and SBQQ__Product__c = '01tDo000000UZSRIA4' and SBQQ__Group__c != 'a6ADo000000snRpMAI' ";
     externalId  = "Id";
     orderBy     = "order by SBQQ__Group__c    ";
     ignore      = $true
 
 } )  



  

 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.natreat", 
 @{fields        =
     " 
    id,SBQQ__Product__c,SBQQ__Product__r.name,Product_Line__c ,SBQQ__Group__c,SBQQ__Group__r.Name
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000njtMAA'  and SBQQ__NetTotal__c = 0 " +
                   "  and SBQQ__Product__c = '01tDo000000UZSRIA4' and SBQQ__Group__c != 'a6ADo000000snRpMAI' ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
     ignoreDeploy = $true;
     ignore      = $true
 
 } )  

 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.natreaUpdate", 
 @{fields        =
     " 
    id,SBQQ__Group__C
 ";
     importOrder = "1";
     where       = " where SBQQ__Quote__c = 'a6GDo0000000njtMAA'  and SBQQ__NetTotal__c = 0 " +
                   "  and SBQQ__Product__c = '01tDo000000UZSRIA4' and SBQQ__Group__c != 'a6ADo000000snRpMAI' ";
     externalId  = "Id";
     orderBy     = "order by createdDate    ";
    ignore      = $true
 
 } )  



return $packageHash
 

