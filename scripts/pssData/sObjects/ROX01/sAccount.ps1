 
$packageHash = @{}
 
#for source set the external if if blank 
#replace External_Id_Auto__c to External_Id__c and usert by id
$packageHash.add("account.fixExternal", 
    @{fields        =
        "id, External_Id_Auto__c,name
    ";
    orderBy     = "order by name desc   ";
    where       = "where External_Id__c = null ";
    importOrder = "1";
    ignore      = $false
    } )


$packageHash.add("account.allFields", 
    @{fields        =
"       
        External_Id_Auto__c,
        name,
        type,
        
        billingstreet,
        billingcity,
        billingstate,
        billingpostalcode,
        billingcountry,
        billinglatitude,
        billinglongitude,
        billinggeocodeaccuracy,
        shippingstreet,
        shippingcity,
        shippingstate,
        shippingpostalcode,
        shippingcountry,
        shippinglatitude,
        shippinglongitude,
        shippinggeocodeaccuracy,
        phone,
        fax,
        industry,
        annualrevenue,
        numberofemployees,
    
        description 
 
     ";
        orderBy     = "order by name desc     ";
       # where       = "where AccountId = '001Ox00000lROCwIAO' ";
        importOrder = "1";
        ignore      = $true

  
       
    } )

$packageHash.add("account.new", 
    @{fields        = "
    id,name,website
     ";
        orderBy     = "order by name  desc     ";
        where       = "where id = '001Ox00000lROCwIAO' ";
        importOrder = "1";
        ignore      = $true

        #   ignore      = $true
       
    } )
 
return $packageHash
 

