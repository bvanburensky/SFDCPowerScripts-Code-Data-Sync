 
$packageHash = @{}

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("sbqq__quote__c.priceEndtry", 
  @{fields        =
      " 
     id 
  ";
      importOrder = "1";
      where       = " where SBQQ__PriceBook__c = null  "  +
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
    id
 ";
     importOrder = "1";
     where       = " where SBQQ__PricebookEntryId__c = null  "  +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate   "
    # ignoreDeploy = $true;
    ignore      = $true
 
 } )  

 $packageHash.add("OPportunity.entry", 
 @{fields        =
     " 
    id
 ";
     importOrder = "1";
     where       = " where SBQQ__PrimaryQuote__C != null and CPQ_Order__c = Null and  SBQQ__QuotePricebookId__c  = null and isclosed = false " +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by createdDate    "
   #  ignoreDeploy = $true;
     ignore      = $true
 
 } ) 


return $packageHash
 

