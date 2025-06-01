 
$packageHash = @{}




$packageHash.add("Account.NoParent", 
    @{fields        =
        " 
        Account_Number__c,
        AccountSource,
        Abbott_Pricing__c,
     
     
        BillingCity,
        BillingCountry,
        BillingLatitude,
        BillingLongitude,
        BillingState,
        BillingPostalCode,
        BillingStreet,
        CurrencyIsoCode,
        Customer_Number__c,
        DBA_Alias__c,
        Facility_Type__c,
        Facility_Type2__c,
        Government_Customer__c,
   
        Name,
    
        NetSuite_Internal_Id__c,

        PO_Requirements__c,
        Region__c,
     
    
        ShippingCity,
        ShippingCountry,
        ShippingState,
        ShippingStreet,
        ShippingPostalCode,
        ShippingLongitude,
        Strategic_Account__c,
        Type
    ";
        importOrder = "1";
        where       = " where BillingCity > '' ";
        externalId  = "Account_Number__c";
        orderBy     = "order by Name   ";
        ignore      = $true
     
    } )

    $packageHash.add("Account.InternalId", 
    @{fields        =
        " 
        id 

        
    ";
        importOrder = "2";
        where       = " where id != null and NetSuite_Internal_Id__c !=null";
        externalId  = "Account_Number__c";   
        orderBy     = "order by Name  ";  
        ignore      = $true
     
    } )

    $packageHash.add("MI_PEvent_Log__c.InternalId", 
    @{fields        =
        " 
        id ,
        action__c

        
    ";
        importOrder = "2";
        where       = " where action__c = 'verify ns'";
        externalId  = "id";   
        orderBy     = "order by Name  ";  
      ignore      = $true
     
    } )

    $packageHash.add("Account.Name", 
    @{fields        =
        " 
        Account_Number__c,
        Name 
        
    ";
        importOrder = "2";
        where       = " where id != null and NetSuite_Internal_Id__c !=null";
        externalId  = "Account_Number__c";   
        orderBy     = "order by Name  ";  
        ignore      = $true
     
    } )

$packageHash.add("Account.Parent", 
    @{fields        =
        " 
        Account_Number__c,
        Parent.Account_Number__c 
        
    ";
        importOrder = "2";
        where       = " where ParentId > ''  and   Parent.BillingCity > '' ";
        externalId  = "Account_Number__c";   
        orderBy     = "order by Name  ";  
        ignore      = $true
     
    } )



$packageHash.add("Account.Country", 
    @{fields        =
        " 
        Account_Number__c,
     
        BillingCountry,
        BillingState,
        ShippingCountry,
        ShippingState

        
    ";
        importOrder = "2";
        #where       = " where Billing_Address__c != null and Billing_Address__r.Is_Valid_Address__c =false ";
        where       = " where IS_Valid_Address__c = false and billingStreet != null ";        
        externalId  = "Account_Number__c";   
        orderBy     = "order by billingCountry  ";  
       ignore      = $true
     
    } )


    $packageHash.add("Account.fix", 
    @{fields        =
        " 
        Account_Number__c,
        Name ,
        BillingCity,
        BillingStreet,
        ShippingCity,
        ShippingStreet
              

        
    ";
        importOrder = "2";
        where       = " where  BillingCity > ''   ";
        externalId  = "Account_Number__c";   
        orderBy     = "order by Name  ";  
        ignore      = $true
     
    } )



$packageHash.add("Contact", 
    @{fields        =
        " 
    Account.Account_Number__c,
    Active__c,
 
    Add_l_Phone__c,
    Community_Access__c,
    Community_Access_Type__c,
    Contact_Number__c,
    Contact_Type__c,
    CurrencyIsoCode,
    CWP_Type__c,
    Department,
    DoNotCall,
    Email,
    FirstName,
    lastname,
    Functional_Department__c,
    IndividualId,
    LeadSource,
    MailingCity,

    MailingLatitude,
    MailingLongitude,
    MailingPostalCode,
    MailingCountry,
    MailingState,
    MailingStreet,
    MobilePhone,

    NetSuite_Internal_ID__c,
 
    OtherCity,
    OtherCountry,
    OtherLatitude,
    OtherPhone,
    OtherPostalCode,
    OtherState,
    OwnerId,
    Primary_Account_Contact__c,
    Title
    ";
        importOrder = "2";
        where       = " where firstname > '' and  Accountid > '' and DoNotCall = false and" +
        "  lastname > '' and Account.BillingCity > ''  and Email != null ";
    


        externalId  = "Contact_Number__c";   
        orderBy     = "order by Contact_Number__c    " #+ " limit 100 ";  
        ignore      = $true
     
    } )
    

    $packageHash.add("Contact.phones", 
    @{fields        =
        " 
    Account.Account_Number__c,
    Active__c,
    Phone,
    Add_l_Phone__c,
    Community_Access__c,
    Community_Access_Type__c,
    MobilePhone,
    Title



    ";
        importOrder = "2";
        where       = " where Phone != null  and  Accountid !=null and " +
        "  lastname > '' and Account.BillingCity != null  ";
    


        externalId  = "Contact_Number__c";   
        orderBy     = "order by Contact_Number__c    " #+ " limit 100 ";  
      # ignore      = $true
     
    } )



    $packageHash.add("Contact.Country", 
    @{fields        =
        " 
 
    Contact_Number__c,
    Active__c,
    MailingCountry,
    MailingState,
    OtherCountry,
    OtherPostalCode,
    OtherState
    ";
        importOrder = "2";
        where       = " where (MailingCountry != null or OtherCountry != null) and " + 
                    "( MailingCountry !='US' and  OtherCountry !='US' )  and Is_Valid_Address__c = false";
    
        externalId  = "Contact_Number__c";   
        orderBy     = "order by MailingCountry    " #+ " limit 100 ";  
        ignore      = $true
     
    } )
 
return $packageHash
 

