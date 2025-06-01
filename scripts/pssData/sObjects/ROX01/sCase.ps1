 
$packageHash = @{}
 
 
 
$packageHash.add("case.fixExternal", 
    @{fields        =
        "id, External_Id_Auto__c
    ";
    orderBy     = "order by id desc   ";
    where       = "where External_Id__c = null ";
    importOrder = "1";
    ignore      = $true
    } )


$packageHash.add("Case.migrate", 
    @{fields        =
   " 
        Contact.External_Id__c,  
        Account.External_Id__c ,
        External_Id_Auto__c,
        Comments, 
        Description,   
        Origin, 
        Priority,  Reason,  Status, 
        Subject, SuppliedCompany, 
        SuppliedEmail, SuppliedName, 
        SuppliedPhone,Type,

slaviolation__c,

potentialliability__c,
credit_amt__c

     ";
        orderBy     = "order by casenumber desc     ";
       # where       = "where AccountId = '001Ox00000lROCwIAO' ";
        importOrder = "1";
        ignore      = $false

   
       
    } )
 
 
return $packageHash
 

