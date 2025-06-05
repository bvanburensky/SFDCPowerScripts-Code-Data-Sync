 

$packageHash = @{}

#### read in active records. 
### 
 
$packageHash.add("account.actives",
    @{fields        = 
        "  
        id,
        name,
        isActive__c
      ";
     
        importOrder = "2" ;
        where       = " where isActive__c = true"
        orderby   = " order by name"
        ignore      = $false
    } )         
   


return $packageHash
 

