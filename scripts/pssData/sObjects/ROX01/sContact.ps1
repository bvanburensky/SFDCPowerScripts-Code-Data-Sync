 
$packageHash = @{}
 
 
$packageHash.add("contact.fixExternal", 
    @{fields        =
        "id, External_Id_Auto__c
    ";
    orderBy     = "order by name desc   ";
    where       = "where External_Id__c = null ";
    importOrder = "1";
    ignore      = $true
    } )


$packageHash.add("contact.allFields", 
    @{fields        =
"
Account.External_Id__c ,
External_Id_Auto__c,
lastname,
firstname,
salutation,
otherstreet,
othercity,
otherstate,
otherpostalcode,
othercountry,
otherlatitude,
otherlongitude,
othergeocodeaccuracy,
mailingstreet,
mailingcity,
mailingstate,
mailingpostalcode,
mailingcountry,
mailinglatitude,
mailinglongitude,
mailinggeocodeaccuracy,
phone,
fax,
mobilephone,
homephone,
otherphone,
assistantphone,
reportstoid,
email,
title,
department,
assistantname,
leadsource,
birthdate,
description,
 
emailbouncedreason,
emailbounceddate,
 
contactsource
 
     ";
        orderBy     = "order by lastname desc      ";
       # where       = "where AccountId = '001Ox00000lROCwIAO' ";
        importOrder = "1";
        ignore      = $false

  
       
    } )

$packageHash.add("contact.new", 
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
 

