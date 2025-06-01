 
$packageHash = @{}



 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("Subscript.group", 
 @{fields        =
     " 
    id,SBQQ__Product__r.Name,Product_Line__c,SBQQ__ProductFamily__c
 ";
     importOrder = "1";
     where       = " where  quote__c " +
                   "   Shipping_Address__c != null and Product_Line__c = 'Print'";
     externalId  = "Id";
     orderBy     = "order by createdDate    ";
       ignore      = $true
 
 } )  


 # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
 $packageHash.add("sbqq__quoteline__c.group", 
 @{fields        =
     " 
    id,SBQQ__Product__r.Name,Product_Line__c,SBQQ__ProductFamily__c
 ";
     importOrder = "1";
     where       = " where  quote__c " +
                   "   Shipping_Address__c != null and Product_Line__c = 'Print'";
     externalId  = "Id";
     orderBy     = "order by createdDate    ";
       ignore      = $true
 
 } )  


$packageHash.add("Contract.qDate", 
@{fields        =
    " 
    Id  
    
";
    importOrder = "1";
    where       =   " where  Start_Service_Immediately__c = true and  Status = 'Draft' " + 
                    " and sbqq__Order__c != null "
              #    " And  SBQQ__Contract__c  = '800XRX0000004xuWYAQ'  ";
    externalId  = "Id";
    orderBy     = "order by createdDate desc  limit 50000  ";
   ignore      = $true

} )

return $packageHash
 

