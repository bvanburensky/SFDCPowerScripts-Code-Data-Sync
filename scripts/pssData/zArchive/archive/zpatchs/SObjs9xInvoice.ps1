 
$packageHash = @{}




    $packageHash.add("Invoice__c.ToTouch", 
    @{fields        =
        " 
       id 
       
        
    ";
        importOrder = "1";
       where       = " where status__c  = null  ";
        externalId  = "id";
        orderBy     = "order by  netsuite_internal_id__c   ";
      ignore      = $true
     
    } )


return $packageHash
 

