 
$packageHash = @{}

$packageHash.add("breadwinner_ns__BW_Payment_Transaction__c.del", 
@{fields        =
    " 
   id  
";
    importOrder = "1";
    where       = "  where lastmodifiedDate <   2023-05-20T06:00:00Z   "     
    where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"  +
   # where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
    "   ";
    externalId  = "Id";
    orderBy     = "order by lastmodifiedDate  desc   limit 45000  "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  ignore      = $true

} )  


$packageHash.add("breadwinner_ns__BW_Address__c.del", 
@{fields        =
    " 
   id  
";
    importOrder = "1";
    where       = "  where lastmodifiedDate <   2023-05-20T06:00:00Z   "     
    where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"  +
   # where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
    "   ";
    externalId  = "Id";
    orderBy     = "order by lastmodifiedDate  desc   limit 45000  "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true

} )  


  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Line_Item__c.del", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
     # where       = " where breadwinner_ns__ParentEntity__c = null " #lastmodifiedDate <   2023-05-20T06:00:00Z   "     
      where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"  +
     # where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by breadwinner_ns__Item__c  desc  limit 49000  "
     # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
     ignore      = $true
  
  } )  
  
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Company__c.del", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
      where21       = " where lastmodifiedDate <   2023-05-20T06:00:00Z   "     
      where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"   
      where       = " where  breadwinner_ns__ExternalId__c = null     "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by lastmodifiedDate  desc  limit 45000  "
     # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  # ignore      = $true
  
  } )  
  

  

  
  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Invoice__c.del", 
  @{fields        =
      " 
     id  ,breadwinner_ns__TranDate__c
  ";
      importOrder = "1";
      where       = " where lastmodifiedDate <   2023-05-20T05:00:00Z   "     
      where1       = " where breadwinner_ns__Salesforce_Account__c = null  and breadwinner_ns__TranDate__c <  2022-09-01T05:00:00Z  "  
      where3       = " where ncf_body_sf_contract_no__c = null   "        
      where2      = " where breadwinner_ns__Salesforce_Account__c != null   and breadwinner_ns__TranDate__c <  2022-09-01  "              
    #a               "   ";
      externalId  = "Id";
      orderBy     = "order by breadwinner_ns__Salesforce_Account__c desc    "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } )  


    # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
    $packageHash.add("breadwinner_ns__BW_Sales_Order__c.del", 
    @{fields        =
        " 
       id  ,breadwinner_ns__TranDate__c
    ";
        importOrder = "1";
        where       = " where lastmodifiedDate <   2023-05-20T05:00:00Z   "     
        where1       = " where breadwinner_ns__Salesforce_Account__c = null  and breadwinner_ns__TranDate__c <  2022-09-01T05:00:00Z  "  
        where3       = " where ncf_body_sf_contract_no__c = null   "        
        where2      = " where breadwinner_ns__Salesforce_Account__c != null   and breadwinner_ns__TranDate__c <  2022-09-01  "              
      #a               "   ";
        externalId  = "Id";
        orderBy     = "order by breadwinner_ns__Salesforce_Account__c asc   "
      #  ignoreDeploy = $true;
     ignore      = $true
    
    } )  


    # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
    $packageHash.add("breadwinner_ns__BW_Credit_Memo__c.del", 
    @{fields        =
        " 
       id  
    ";
        importOrder = "1";
        where       = " where lastmodifiedDate <   2023-05-15T00:00:00Z   "     
        where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"  +
       # where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
        "   ";
        externalId  = "Id";
        orderBy     = "order by breadwinner_ns__TranDate__c  desc   "
       # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
       ignore      = $true
    
    } )  



  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Invoice__c.updte1", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
    #  where       = " where  Invoice_Total__c = null or Invoice_Total__r.sys_Needs_Update__c = true "  +
      where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc   "
     # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
    ignore      = $true
  
  } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Payment__c.del", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
      where       = " where lastmodifiedDate <   2023-05-20T06:00:00Z   "     
      where2       = " where  breadwinner_ns__Salesforce_Account__c = null or breadwinner_ns__TranDate__c <  2022-01-01"  +
     # where       = " where  breadwinner_ns__ExternalId__c != null  and breadwinner_ns__AmountRemaining__c != 0  "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by breadwinner_ns__TranDate__c  desc   limit 45000  "
     # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true
  
  } )  
  

return $packageHash
 

