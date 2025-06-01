 
$packageHash = @{}

## reload addresses to loawer environment

$packageHash.add("Address__c.Label", 
    @{fields         =
        " 
        address_number__c,
        address__Street__s
 


    ";
        importOrder  = "4";
        
        where        = "  where  address__Street__s !=null";        

        externalId   = "address_number__c";   
        orderBy      = "order by address__Street__s ";  
        ignore       = $true ;
        # ignoreGet      = $true ;
        #ignoreDeploy = $true
     
    } )
    

    $packageHash.add("Address__c.touch", 
    @{fields         =
        " 
        id


    ";
        importOrder  = "4";
        
        where        = " where  name !=null";        

        externalId   = "id";   
        orderBy      = "order by address__Street__s ";  
       ignore       = $true ;
        # ignoreGet      = $true ;
        #ignoreDeploy = $true
     
    } )
    
 
 
    $packageHash.add("Account.tosend", 
    @{fields        =
        " 
       id,netsuite_Account_Number__c,NEtsuite_Customer_Name__c
       
        
    ";
        importOrder = "1";
        where       = " where netsuite_internal_id__c != null";
        externalId  = "id";
         orderBy     = "order by  createdDate desc   ";
        ignore      = $true
     
    } )
 

    $packageHash.add("MI_PEvent_Log__c.ToTouch", 
    @{fields        =
        " 
       id,createdDate
       
        
    ";
        importOrder = "1";
        where       = " where id = ''";
        externalId  = "id";
         orderBy     = "order by  createdDate desc   limit 20000";
        ignore      = $true
     
    } )



return $packageHash
 

