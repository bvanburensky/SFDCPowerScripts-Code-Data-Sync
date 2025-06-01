 
$packageHash = @{}

## reload addresses to loawer environment

$packageHash.add("Address_Country__c.Load", 
    @{fields         =
        " 
       
        Name,
        Country_Code__c,
        NetSuite_Country__c


    ";
        importOrder  = "4";
        
    #    where        = "  where    Account__r.netsuite_Internal_id__c != null";        

        externalId   = "Country_Code__c";   
        orderBy      = "order by Country_Code__c ";  
        ignore       = $true ;
     
    } )
    
    $packageHash.add("Address_Country__c.Load", 
    @{fields         =
        " 
       
        Name,
        Country_Code__c,
        NetSuite_Country__c


    ";
        importOrder  = "4";
        
    #    where        = "  where    Account__r.netsuite_Internal_id__c != null";        

        externalId   = "Country_Code__c";   
        orderBy      = "order by Country_Code__c ";  
        ignore       = $true ;
     
    } )


return $packageHash
 

