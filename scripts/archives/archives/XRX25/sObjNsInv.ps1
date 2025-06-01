 
$packageHash = @{}


  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("breadwinner_ns__BW_Invoice__c.invtot", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
    #  where       = " where  Invoice_Total__c = null or Invoice_Total__r.sys_Needs_Update__c = true "  +
      where       = " where  invoice_total__c  = null and breadwinner_ns__AmountRemaining__c != 0 "  +
      "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc  "
     # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
     ignore      = $true
  
  } )  
  
return $packageHash
 

