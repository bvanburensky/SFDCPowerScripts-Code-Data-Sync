 
$packageHash = @{}


$packageHash.add("Account.KBIn", 
@{fields        =
    " 

 Id ,BB_Stats__c,BB_Last_Access_Date__c,NS_Invoice_Due_Date__c,BB_Account__c, BB_Account_Sequence__c,Revenue_Account_ID__c,NS_Invoice_Amt_Due__c


";
    importOrder = "1";
  where       = " where  BB_Stats__c != null" +
    "     ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
  #  ignore      = $true

} )   

$packageHash.add("Account.kb1", 
@{fields        =
    " 

 Id ,BB_Stats__c,Account_Number__c,BB_Last_Sync_Date__c,NS_Invoice_Due_Date__c,BB_Account__c, BB_Account_Sequence__c,Revenue_Account_ID__c,NS_Invoice_Amt_Due__c


";
    importOrder = "1";
  where       = " where  BB_Stats__c != null" +
    "     ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
    ignore      = $true

} )  


$packageHash.add("Account.kablueie", 
@{fields        =
    " 

 Id ,BB_KB_Cancellation__c 


";
    importOrder = "1";
    where       = " where   BB_KB_Cancellation__c  = true" +
    "     ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
    ignore      = $true

} )  




# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.billFreq", 
@{fields        =
    " 

 Id 


";
    importOrder = "1";
    where       = " where   Sales_Rep_User__C = null and SBQQ__Quote__c != null" +
    "     ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
   ignore      = $true

} )  





# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.Cancels", 
@{fields        =
    " 

 Id,   Amendment_Type__c


";
    importOrder = "1";
    where       = " where   " +
    "   Amendment_Type__c = 'Cancellation' ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
    ignore      = $true

} )  


 
# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.ckShps", 
@{fields        =
    " 

 Id,  Amendment_Type__c 


";
    importOrder = "1";
    where       = " where   " +
    "   Amendment_Type__c = 'Cancellation' ";
    externalId  = "Id";
    orderBy     = "order by id  limit 50000 ";
    ignore      = $true

} )  

# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.bbpurgeReverse", 
    @{fields        =
        " 
 
     Id, StartDate,EndDate,
      Amendment_Type__c, SBQQ__AmendmentOwner__c,Status,
         SBQQ__AmendmentStartDate__c,Auto_Close_Cancellation__c,
         Renewal_Mode__c,Account.Customer_id__c,Count_of_Blue_Book_Subs__c

    
";
        importOrder = "1";
        where       = " where   " +
        "   Amendment_Type__c = 'Cancellation' ";
        externalId  = "Id";
        orderBy     = "order by id  limit 50000 ";
        ignore      = $true

    } )  

# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.bbpurge", 
    @{fields        =
        " 
 
     Id, StartDate,EndDate,
      Amendment_Type__c, SBQQ__AmendmentOwner__c,Status,
         SBQQ__AmendmentStartDate__c,Auto_Close_Cancellation__c,
         Renewal_Mode__c,Account.Customer_id__c,Count_of_Blue_Book_Subs__c

    
";
        importOrder = "1";
        where       = " where   " +
        "   Amendment_Type__c = 'Cancellation' ";
        externalId  = "Id";
        orderBy     = "order by id  limit 50000 ";
        ignore      = $true

    } )  

# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.ASeqContracts", 
    @{fields        =
        " 
   Account_Seq_Number__c,Id ,Renewal_Mode__c,Account_Name__c " + 
        ",ContractNumber,StartDate,EndDate,SBQQ__RenewalOpportunity__c,
        SBQQ__RenewalOpportunity__r.Name,SBQQ__RenewalOpportunity__r.StageName
    
";
        importOrder = "1";
        where       = " where   " +
        "   Account_Sequence__c != null ";
        externalId  = "Id";
        orderBy     = "order by id  limit 50000 ";
        ignore      = $true

    } )  




$packageHash.add("Contract.CkAcctSeq", 
    @{fields        =
        " 
       Id 
       
   ";
        importOrder = "1";
        where       = " where ( Count_of_Blue_Book_Subs__c > 0 " +
        " And Account_Sequence__c = null )";
        externalId  = "Id";
        orderBy     = "order by id  limit 50000 ";
        ignore      = $true

    } )


$packageHash.add("Contract.InvalidTExt", 
    @{fields        =
        " 
       Id  
       
   ";
        importOrder = "1";
        where       = " where Count_of_Blue_Book_Subs__c > 0 and Account_Seq_Number__c = null  " +
        " And Account_Sequence__c = null ";
        externalId  = "Id";
        orderBy     = "order by id  limit 50000 ";
        ignore      = $true

    } )




$packageHash.add("SBQQ__Subscription__c.x", 
    @{fields        =
        " 
    id
    
";
        importOrder = "1";
        where       = " where Account_Sequence__c != null " +
        "  and Sequence_number__c =  null";
        externalId  = "Id";
        orderBy     = "   Order by CreatedDate Desc  ";
        ignore      = $true

    } )


$packageHash.add("Contract.x", 
    @{fields        =
        " 
    id
    
";
        importOrder = "1";
        where       = " where ( Count_of_Blue_Book_Subs__c > 0 " +
        " And Account_Sequence__c = null )";
        externalId  = "Id";
        orderBy     = "   Order by SBQQ__Order__C  ";
        ignore      = $true

    } )

 
$packageHash.add("Contract.amendRecType", 
    @{fields        =
        " 
    id
    
";
        importOrder = "1";
        where       = " where SBQQ__AmendmentOpportunityRecordTypeId__c =null  " +
        " and SBQQ__Order__C != null and Status in ('Draft','Activated')";
        externalId  = "Id";
        orderBy     = "   Order by SBQQ__Order__C  ";
        ignore      = $true

    } )



# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("Contract.terms", 
    @{fields        =
        " 
      id,Payment_Terms__c 
 ";
        importOrder = "1";
        where       = " where SBQQ__Order__C != null and " +
        "   Payment_Terms__c = 'NET30'  ";
        externalId  = "Id";
        orderBy     = "order by id    ";
        ignore      = $true
 
    } )  



# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("sbqq__quote__c.Terms", 
    @{fields        =
        " 
    id, SBQQ__PaymentTerms__c,ApprovalStatus__c
 ";
        importOrder = "1";
        where       = " where   " +
        "    SBQQ__Opportunity2__r.IsClosed = false and SBQQ__PaymentTerms__c != null and" +
        " SBQQ__PaymentTerms__c = 'NET30' and ApprovalStatus__c != 'Sent to Customer' " 
        #" and SBQQ__StartDate__c  = NEXT_Month                     ";
        externalId  = "Id";
        orderBy     = "order by createdDate  ";
        ignore      = $true
 
    } )  

 

# ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
$packageHash.add("sbqq__quoteline__c.address", 
    @{fields        =
        " 
    id,SBQQ__Product__r.Name,Product_Line__c,SBQQ__ProductFamily__c
 ";
        importOrder = "1";
        where       = " where   " +
        "   Shipping_Address__c != null and Product_Line__c = 'Print'";
        externalId  = "Id";
        orderBy     = "order by createdDate    ";
        ignore      = $true
 
    } )  
 

return $packageHash
 

