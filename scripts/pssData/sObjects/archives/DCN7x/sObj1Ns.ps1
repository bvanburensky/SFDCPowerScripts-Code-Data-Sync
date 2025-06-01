 
$packageHash = @{}




  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Sales_Order__c.updte1", 
  @{fields        =
      " 
     id   
  ";
      importOrder = "1";
      where2       = " where  Is_SO_Error__c = true"  +
                        "  "       
      where       = " where  breadwinner_ns__ExternalId__c != null and  breadwinner_ns__Salesforce_Account__c != null and CPQ_Order__c = null"  +
                        " and ncf_body_sf_contract_no__c !=null " 
      where1       = " where  breadwinner_ns__Salesforce_Account__c != null  and breadwinner_ns__Salesforce_Account__r.NS_Invoice_Amt_Due__c = 0 and breadwinner_ns__AmountRemaining__c != 0  "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by breadwinner_ns__Salesforce_Account__c asc   "
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
      where       = " where  invoice_total__c = null and  breadwinner_ns__Salesforce_Account__c != null  and breadwinner_ns__AmountRemaining__c != 0 "   
      where1       = " where  breadwinner_ns__Salesforce_Account__c != null  and breadwinner_ns__Salesforce_Account__r.NS_Invoice_Amt_Due__c = 0 and breadwinner_ns__AmountRemaining__c != 0  "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by breadwinner_ns__Salesforce_Account__c desc  limit 20000 "
     # ignoreDeploy = $true 
   ignore      = $true
  
  } )  
  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Invoice_Total__c.del", 
  @{fields        =
      " 
     id  ,name
  ";
      importOrder = "1";
      where       = " where NetSuite_Invoice__c = null   "  +
                 "   ";
      externalId  = "Id";
      orderBy     = "order by Account__c asc    "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  
  


$packageHash.add("SBQQ__Quote__c.fixAddr", 
@{fields        =
    " 
   id  
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  sys_is_Addresses_Valid__c = true and is_Addresses_Valid__c = false    " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by name "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true

} ) 
$packageHash.add("Opportunity.wontoearly", 
@{fields        =
    " 
     
   id  , StageName, CloseDate,Quote_Start_Date__c,Quote_Term__c,
     SBQQ__RenewedContract__r.Name,SBQQ__RenewedContract__r.EndDate,Amount

      
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where   iswon=true and  CPQ_Order__c = Null and SBQQ__RenewedContract__c !=null   " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by StageName "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  # ignore      = $true

} )  

$packageHash.add("Opportunity.stages", 
@{fields        =
    " 
   id  , StageName 
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  quote_Approval_Status__c = 'Verified To Send' and StageName = 'Proposal'    " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by StageName "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  ignore      = $true

} )  

$packageHash.add("Account.toAccount", 
@{fields        =
    " 
   id  , NetSuite_Company__c
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  NetSuite_Company__c != null  " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by NetSuite_Company__c    limit 100000"
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
 ignore      = $true

} )  


$packageHash.add("breadwinner_ns__BW_Company__c.toAccount", 
@{fields        =
    " 
   id  , breadwinner_ns__Salesforce_Account__c
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  breadwinner_ns__Salesforce_Account__r.NetSuite_Company__c = null and  breadwinner_ns__ExternalId__c != null and breadwinner_ns__Salesforce_Account__c != null " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by breadwinner_ns__CompanyName__c  desc  limit 30000"
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true

} )  

   # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
   $packageHash.add("breadwinner_ns__BW_Company__c.Matched", 
   @{fields        =
       " 
      id  , name , breadwinner_ns__CompanyName__c,breadwinner_ns__InternalId__c,ncf_entity_eym_overdue_balance__c,breadwinner_ns__ExternalId__c,breadwinner_ns__Salesforce_Account__c
   ";
       importOrder = "1";
       #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
       where       = " where  breadwinner_ns__ExternalId__c != null and breadwinner_ns__Salesforce_Account__c != null " +
       "   ";
       externalId  = "Id";
       orderBy     = "order by breadwinner_ns__CompanyName__c    limit 100000"
      # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
     ignore      = $true
   
   } )  


   # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
   $packageHash.add("breadwinner_ns__BW_Company__c.missAcct", 
   @{fields        =
       " 
      id  , name , breadwinner_ns__CompanyName__c,breadwinner_ns__InternalId__c,ncf_entity_eym_overdue_balance__c,breadwinner_ns__ExternalId__c,breadwinner_ns__Salesforce_Account__c
   ";
       importOrder = "1";
       #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
       where       = " where  breadwinner_ns__ExternalId__c != null and breadwinner_ns__Salesforce_Account__c = null " +
       "   ";
       externalId  = "Id";
       orderBy     = "order by breadwinner_ns__CompanyName__c  desc  limit 30"
      # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
     ignore      = $true
   
   } )  


   # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
   $packageHash.add("breadwinner_ns__BW_Company__c.NoExternal_id", 
   @{fields        =
       " 
      id  , name , breadwinner_ns__CompanyName__c,breadwinner_ns__InternalId__c,ncf_entity_eym_overdue_balance__c,breadwinner_ns__ExternalId__c,breadwinner_ns__Salesforce_Account__c
   ";
       importOrder = "1";
       #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
       where       = " where  breadwinner_ns__ExternalId__c = null  and breadwinner_ns__CompanyName__c > 'm' " +
       "   ";
       externalId  = "Id";
       orderBy     = "order by breadwinner_ns__CompanyName__c    limit 100000 "
      # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
      ignore      = $true
   
   } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Contact.updtss", 
  @{fields        =
      " 
     id ,SCG_Billing_Shipping_Email__c 
  ";
      importOrder = "1";
      where       = " where SCG_Billing_Shipping_Email__c != null  and Email_Billing_Shipping_1__c = null "  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate  "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  


  

   
  


  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Fulfillment_Case__c.updte", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
      where       = " where Status__c!='Closed'   "  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
         ignore      = $true
  
  } )  

    # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
    $packageHash.add("Provisioning_Case__c.updte", 
    @{fields        =
        " 
       id  
    ";
        importOrder = "1";
        where       = " where Completed_Date__c = null "  +
                      "   ";
        externalId  = "Id";
        orderBy     = "order by createdDate    "
      #  ignoreDeploy = $true;
          ignore      = $true
    
    } )  
  

return $packageHash
 

