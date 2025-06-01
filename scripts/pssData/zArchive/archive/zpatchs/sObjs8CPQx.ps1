 
$packageHash = @{}

 
  

    $packageHash.add("SBQQ__RecordJob__c.new", 
    @{fields        =
        " 
        SBQQ__RecordId__c, 
        SBQQ__RedirectUrl__c,  
        SBQQ__Stacktrace__c,
        SBQQ__JobStatus__c,
         CreatedDate, 
         LastModifiedDate,
        Name, SBQQ__IsRead__c, 
        SBQQ__JobDetails__c, 
        SBQQ__JobId__c

       
      
        
    ";
        importOrder = "1";
        wherex       = " where di !=null  SBQQ__JobStatus__c like 'Can%' ";
        where       = " where id !=null ";
        externalId  = "Id";
        orderBy     = " ORDER BY LastModifiedDate DESC  limit 20 ";
     ignore      = $true
     
    } )

 



return $packageHash
 

