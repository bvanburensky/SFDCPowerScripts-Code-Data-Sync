 
$packageHash = @{}

 
  

    $packageHash.add("SBQQ__RecordJob__c.new", 
    @{fields        =
        " 
        LastModifiedDate,
        SBQQ__RecordId__c, 
        SBQQ__RedirectUrl__c,  
        SBQQ__Stacktrace__c,
        SBQQ__JobDetails__c,
        SBQQ__JobStatus__c,
        Name, SBQQ__IsRead__c, 
        SBQQ__JobId__c

       
      
        
    ";
        importOrder = "1";
        wherex       = " where di !=null  SBQQ__JobStatus__c like 'Can%' ";
        where       = " where id !=null and  SBQQ__JobStatus__c = 'Failed'";
        externalId  = "Id";
        orderBy     = " ORDER BY LastModifiedDate DESC    ";
    ignore      = $true
     
    } )

 



return $packageHash
 

