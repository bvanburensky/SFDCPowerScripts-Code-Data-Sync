 
$packageHash = @{}

 
$packageHash.add("SBQQ__RecordJob__c.failed.Yes", 
    @{fields        =
        " 
    id 
    
        ";
        importOrder = "1";
        where       = " where  SBQQ__JobStatus__c ='Failed'  ";
        externalId  = "Id";
        orderBy     = " ORDER BY LastModifiedDate DESC  ";
        ignore      = $true
 
    } )

$packageHash.add("SBQQ__RecordJob__c.failed1", 
    @{fields        =
        " 
        id,
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
        where       = " where  SBQQ__JobStatus__c ='Failed'   ";
        externalId  = "Id";
        orderBy     = " ORDER BY LastModifiedDate DESC   ";
      ignore      = $true
     
    } )

 



return $packageHash
 

