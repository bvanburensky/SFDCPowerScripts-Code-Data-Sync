 
$packageHash = @{}

## reload addresses to loawer environment

 
 
    
 
 
    $packageHash.add("OrderItem.tosends", 
    @{fields        =
        "  
       id
    
       
        
    ";
        importOrder = "1";
        where       = "where unitprice > 0 and Netsuite_Sync_Target__c = null and order.sbqq__quote__c != null"+ 
                     #" and order.Order_Status__c ='Order Fulfilled' " +
                    # " and order.Order_Status__c ='Draft Order' "+                     
                    # " and order.Order_Status__c ='Sales Complete' "+                     
                    # " and order.Order_Status__c ='Sales Complete' "+                     
                    " and order.Order_Status__c ='Build Test' "+                                         
                    " and order.createdDate >= Last_Year" +
                    " and order.invoiced__c = false";

        externalId  = "id";
         orderBy     = "order by  createdDate desc   ";
       #ignoreDeploy = $true
      # $ignore = $true;
    } )
  
return $packageHash
 

