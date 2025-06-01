 
$packageHash = @{}
#Unique_ID__c,
$packageHash.add("Product_Booking_Treatment__c", 
    @{fields   =
   " 
   Unique_ID__c 
   ,Bookings_Treatment_Field_Name__c
   ,Bookings_Treatment_Percent_Value__c
   ,Bookings_Treatment__c
   ,Geo__c
   ,Product_Treatment__c
   ,Product__r.Unique_ID__c
   ,Quote_Type__c
   ,Renewal_Bookings_Credit_Field_Name__c
   ,Short_Name__c  " ;
        ignore = $false ;
        importOrder ="2";
        orderBy=" order by name";


    } )

    
    $packageHash.add("Product_Booking_Treatment__c.clear", 
    @{fields   =
   "  Unique_ID__c ,Geo__c" ;
        suffix = "x1" ;
        importOrder ="1";
        orderBy=" order by name";
        ignore = $true ;

    } )

    
    
    return $packageHash 


