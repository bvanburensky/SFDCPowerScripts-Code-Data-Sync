 
$packageHash = @{}

## reload addresses to loawer environment

 
 
    
 
 
    $packageHash.add("Account.tosends", 
    @{fields        =
        " 
       id,
       Netsuite_Account_Number__c,
       Netsuite_Customer_Name__c
       
        
    ";
        importOrder = "1";
        where       = " where netsuite_internal_id__c != null and "+
                        " last_close_won__c != null and  NEtsuite_Customer_Name__c != null";
        externalId  = "id";
         orderBy     = "order by  createdDate desc  limit 9  ";
       #ignoreDeploy = $true
       $ignore = $true;
    } )
  
    $packageHash.add("Account.invoice", 
    @{fields        =
        " 
       id,
       Invoice_amount_Due__c
        
       
        
    ";
        importOrder = "1";
        where       = " where netsuite_internal_id__c != null and "+
                        " last_close_won__c != null and  NEtsuite_Customer_Name__c != null" + 
                        " and Invoice_amount_Due__c = 0 ";
        externalId  = "id";
         orderBy     = "order by  createdDate desc  limit 5000 ";
       ignoreDeploy = $true
       ignore = $true
     
    } )
    $packageHash.add("MI_PEvent_Log__c.toUpsert", 
    @{fields        =
        " 
       id
       
        
    ";
        importOrder = "1";
        where       = " where id = ''";
        externalId  = "id";
         orderBy     = "order by  createdDate desc ";
        ignore      = $true
        ignoreGet      = $true ;
        #ignoreDeploy = $true

     
    } )



return $packageHash
 

