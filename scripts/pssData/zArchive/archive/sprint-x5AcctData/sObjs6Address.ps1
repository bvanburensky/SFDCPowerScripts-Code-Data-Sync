 
$packageHash = @{}



$packageHash.add("Address__c.fixCountryGet", 
    @{fields         =
        " 
    
    address_number__c,
    Country__c
  

    ";
        importOrder  = "4";
        where        = " where Address__City__s = null and Country__c != null";
        externalId   = "address_number__c";   
        orderBy      = "order by Country__c  ";  
        ignore       = $true ;
        ignoreDeploy = $true ;
        ignoreGet    = $true
     
    } )



$packageHash.add("Address__c.fixCountry", 
    @{fields        =
        " 
    
     id,
     State_Province__c,
     Country__c
  

    ";
        importOrder = "7";
        where       = " where id != null and Address__CountryCode__s = null ";
        externalId  = "id";   
        orderBy     = "order by State_Province__c,Country__c     ";  
           ignore      = $true ;
        #ignoreDeploy = $true ;
        #  ignoreGet    =   $true
     
    } )
 
# Address_Number__c,    
$packageHash.add("Address__c.SetAddress", 
    @{fields        =
        " 
    id,
 
    Street__c,
    City__c,
    Zip_Postal_Code__c
 
    ";
        importOrder = "2";
        where       = " where (Street__c != null or City__c != null or  Zip_Postal_Code__c!= null) " +
                        " and Address__Street__s = null and Address__City__s =null and Address__PostalCode__s =null ";
        externalId  = "id";   
        orderBy     = "order by Account__c   ";  
      #   ignore      = $true
     
    } )

 
## no address meta data .  

# Address_Number__c,    
$packageHash.add("Address__c.raw", 
    @{fields        =
        " 
    id,
   
    Type__c,
    Primary__c,
    Active__c,    
    Account__r.Account_Number__c, 
    Street__c,
    City__c,
    State_Province__c,
    Zip_Postal_Code__c,
    Country__c

    ";
        importOrder = "2";
        where       = " where Account__c != null ";
        externalId  = "id";   
        orderBy     = "order by Account__c   ";  
         ignore      = $true
     
    } )

<#
 Name,Primary__c,Active__c,Is_Valid_Address__c,Type__c,Address__Street__s,Address__City__s,Address__StateCode__s,     Address__PostalCode__s,Address__CountryCode__s,    
 Address__PostalCode__s:Post,Address__Street__s:Str, Address__City__s:City,Address__StateCode__s:State,Address__CountryCode__s:Contry,


 Primary__c,Active__c,Type__c,Is_Valid_Address__c,Address__c,Address__Street__s,
    Address__City__s,Address__StateCode__s,Address__CountryCode__s,Address__PostalCode__s,Name


    
    
    Address__PostalCode__s,Address__CountryCode__s,

     Street__c,City__c,State_Province__c,Country__c


 #>
## try different combos  ###############

$packageHash.add("Address__c.staged_xAll", 
    @{fields        =
        " 
      id    ,
    

  max(Street__c) Address__Street__s,
  max(City__c) Address__City__s,
  max(State_Province__c) Address__StateCode__s,    
  max(Zip_Postal_Code__c) Address__PostalCode__s,
  max( Country__c ) Address__CountryCode__s

  ";
        importOrder = "5";
        where       = " where  Address__City__s = null and City__c != null  and " +
                     "State_Province__c != null and Country__c  != null  ";
        externalId  = "id";   
        orderBy     = "group by id  order by  max( Country__c )    limit 2000";  
        ignore      = $true
   
    } )


$packageHash.add("Address__c.staged_xState", 
    @{fields        =
        " 
    address_number__c,    

    max(Street__c) Address__Street__s,
    max(City__c) Address__City__s,

    max(Zip_Postal_Code__c) Address__PostalCode__s,
    max( Country__c ) Address__CountryCode__s

    ";
        importOrder = "5";
        where       = " where Address__City__s = null and City__c != null";
        externalId  = "address_number__c";   
        orderBy     = "group by address_number__c  order by  max( Country__c )    limit 2000";  
        ignore      = $true
     
    } )

 
 
$packageHash.add("Address__c.staged_xCountry", 
    @{fields        =
        " 
    address_number__c,    
    max(Street__c) Address__Street__s,
    max(City__c) Address__City__s,
    max(State_Province__c) Address__StateCode__s,
    max(Zip_Postal_Code__c) Address__PostalCode__s
 

    ";
        importOrder = "5";
        where       = " where Address__City__s = null and City__c != null"; ;
        externalId  = "address_number__c";   
        orderBy     = "group by address_number__c  order by  max( Country__c )    limit 2000";  
        ignore      = $true
     
    } )


$packageHash.add("Address__c.staged_xPostalCode_", 
    @{fields        =
        " 
    address_number__c,    

    max(Street__c) Address__Street__s,
    max(City__c) Address__City__s,
    max(State_Province__c) Address__StateCode__s
 

    ";
        importOrder = "5";
        where       = " where  Address__City__s = null   " ;
        externalId  = "address_number__c";   
        orderBy     = "group by address_number__c  order by  max( Country__c )    limit 2000";  
        ignore      = $true
     
    } )


$packageHash.add("Address__c.addressCk", 
    @{fields         =
        " 
    
    address_number__c,
    name,
    Primary__c,
   
    Active__c,
    Type__c,
 
    Address__Street__s,
    Address__City__s,
    Address__PostalCode__s,
    Address__StateCode__s,

    Address__CountryCode__s,
    Address__Latitude__s,
    Address__Longitude__s, 
    Address__GeocodeAccuracy__s,

    State_Province__c,
    Street__c,
    City__c,
    Zip_Postal_Code__c,
    Country__c


    ";
        importOrder  = "4";
        
        where3       = " where Country__c != null   and Street__c != null and City__c != null and Zip_Postal_Code__c !=null and Address__Street__s = null  ";
        where1       = "  where Address__Country__s = null and address_number__c = 'A-010989' ";
        where        = "  where Address__City__s = null  ";        

        externalId   = "address_number__c";   
        orderBy      = "order by Country__c  ";  
        ignore       = $true ;
        # ignoreGet      = $true ;
        ignoreDeploy = $true
     
    } )
    

$packageHash.add("Address__c.Ok", 
    @{fields         =
        " 
    
    address_number__c,
    name,
    Primary__c,
   
    Active__c,
    Type__c,
 
    Address__Street__s,
    Address__City__s,
    Address__PostalCode__s,
    Address__StateCode__s,

    Address__CountryCode__s,
    Address__Latitude__s,
    Address__Longitude__s, 
    Address__GeocodeAccuracy__s,

    State_Province__c,
    Street__c,
    City__c,
    Zip_Postal_Code__c,
    Country__c


    ";
        importOrder  = "10";
        
        where3       = " where Country__c != null   and Street__c != null and City__c != null and Zip_Postal_Code__c !=null and Address__Street__s = null  ";
        where1       = "  where Address__Country__s = null and address_number__c = 'A-010989' ";
        where        = "  where Address__City__s != null  ";        

        externalId   = "address_number__c";   
        orderBy      = "order by Country__c  ";  
        ignore       = $true ;
        # ignoreGet      = $true ;
        ignoreDeploy = $true
     
    } )

## pull it down then upload

return $packageHash
 

