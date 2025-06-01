 
$packageHash = @{}




    $packageHash.add("Asset.ToTouch", 
    @{fields        =
        " 
       AssetNumber__c,
       Sbqq__Requiredbyid__c,
       SBQQ__Rootid__c
       
        
    ";
        importOrder = "1";
        where       = " where Sbqq__Requiredbyid__c != null and Active__c = true and lastModifiedDate = last_N_Days:2  ";
        externalId  = "AssetNumber__c";
         orderBy     = "order by  Sbqq__Requiredbyid__c desc   ";
      ignore      = $true
     
    } )


    $packageHash.add("Asset.toTouchDiscountU", 
    @{fields        =
        " 
        id,
   
        SBQQ__Discount__c
 
  
     
 
   
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Discount__c != null and SBQQ__AdditionalDiscountAmount__c != null and Asset_Status__c ='Active' ";
        externalId  = "id";
         orderBy     = "order by  Sbqq__Requiredbyid__c desc   ";
        ignore      = $true
     
    } )

    
    $packageHash.add("Asset.toTouchDiscount", 
    @{fields        =
        " 
        SEQ__c,
        Account.Name,
        Name,        
        Asset_Status__c,
        SBQQ__ListPrice__c,
        SBQQ__Discount__c,
        SBQQ__AdditionalDiscountAmount__c,
        Price,
        Quantity,
        id,
        Net_Quantity__c,
        Amended_Date__c
     
 
   
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Discount__c != null and SBQQ__AdditionalDiscountAmount__c != null and Asset_Status__c ='Active' ";
        externalId  = "AssetNumber__c";
         orderBy     = "order by  SEQ__c desc   ";
        ignore      = $true
     
    } )

    
    $packageHash.add("Asset.ALL", 
    @{fields        =
        " 
    
        AccountId,
        Active__c,
        Amended__c,
        Amended_Date__c,
        Asset_Number__c,
        Asset_Status__c,
        AssetLevel,
        AssetNumber__c,
        AuditTracking__c,
        AVA_SFCPQ__SalesTaxAmount__c,
        Cache_License_ID__c,
        Cache_License_Type__c,
        Cache_Order_Nbr__c,
        Connection_Notes__c,
        ContactId,
        Contract__c,
        Contract_No_Text__c,
        Count_Asset_Relation__c,
        CPQ_Contract_Number__c,
        CPQContract__c,
        CreatedById,
        CreatedDate,
        CurrencyIsoCode,
        Customer_Account__c,
        Customer_Account_Id__c,
        Customer_Account_Name__c,
        Date_Made_Inactive__c,
        Description,
        Expiration_Date__c,
        Expiring__c,
        Id,
        IM_Software_Version__c,
        IM_Software_Version_Last_Update__c,
        InstallDate,
        Instrument_Manager_Base_License__c,
        Is_Asset_Status__c,
        Is_Asset_Status_Text__c,
        Is_Exclude_from_Maintenance__c,
        IsCompetitorProduct,
        IsDeleted,
        Last_PEvent_DateTime__c,
        Last_PEvent_Sec__c,
        Last_Quantity__c,
        LastModifiedById,
        LastModifiedDate,
        LastReferencedDate,
        LastViewedDate,
        Legacy_Asset_Description__c,
        License__c,
        License_ID__c,
        License_Number__c,
        Name,
        Net_Quantity__c,
        Notes__c,
        OwnerId,
        Parent_SF_18_ID__c,
        ParentId,
        Price,
        Process_Base_Time__c,
        Product_Code__c,
        Product2Id,
        ProductCode,
        ProductDescription,
        ProductFamily,
        Purchased_Date__c,
        PurchaseDate,
        QMGR__c,
        Quantity,
        QuoteLineSeq__c,
        Recalled__c,
        Record_Type_Name__c,
        RecordTypeId,
        Reporting_Partner_Account__c,
        Returned_Date__c,
        RootAssetId,
        SBQQ__AdditionalDiscountAmount__c,
        SBQQ__BillingFrequency__c,
        SBQQ__BillingType__c,
        SBQQ__Bundle__c,
        SBQQ__Bundled__c,
        SBQQ__BundledQuantity__c,
        SBQQ__ChargeType__c,
        SBQQ__CombineKey__c,
        SBQQ__ComponentDiscountedByPackage__c,
        SBQQ__CreditProductId__c,
        SBQQ__CurrentSubscription__c,
        SBQQ__Dimension__c,
        SBQQ__Discount__c,
        SBQQ__DiscountSchedule__c,
        SBQQ__DiscountScheduleType__c,
        SBQQ__DistributorDiscount__c,
        SBQQ__DynamicOptionId__c,
        SBQQ__FromServiceCloud__c,
        SBQQ__LatestQuoteLine__c,
        SBQQ__ListPrice__c,
        SBQQ__MarkupAmount__c,
        SBQQ__MarkupRate__c,
        SBQQ__Number__c,
        SBQQ__OptionDiscount__c,
        SBQQ__OptionDiscountAmount__c,
        SBQQ__OptionLevel__c,
        SBQQ__OptionType__c,
        SBQQ__OrderProduct__c,
        SBQQ__OriginalUnitCost__c,
        SBQQ__PackageProductCode__c,
        SBQQ__PackageProductDescription__c,
        SBQQ__PartnerDiscount__c,
        SBQQ__PriceDimension__c,
        SBQQ__PricingMethod__c,
        SBQQ__ProductOption__c,
        SBQQ__QuoteLine__c,
        SBQQ__RegularPrice__c,
        SBQQ__RenewalUpliftRate__c,
        SBQQ__RequiredByAsset__c,
        SBQQ__RequiredById__c,
        SBQQ__RequiredByProduct__c,
        SBQQ__RequiredBySubscription__c,
        SBQQ__RevisedAsset__c,
        SBQQ__RootAsset__c,
        SBQQ__RootId__c,
        SBQQ__SegmentIndex__c,
        SBQQ__SegmentKey__c,
        SBQQ__SegmentLabel__c,
        SBQQ__Subscription__c,
        SBQQ__SubscriptionEndDate__c,
        SBQQ__SubscriptionQuoteLine__c,
        SBQQ__SubscriptionStartDate__c,
        SBQQ__TermDiscountSchedule__c,
        SBQQ__UnitCost__c,
        SBQQ__VirtualAsset__c,
        Seq__c,
        SerialNumber,
        SF_18_ID__c,
        Softkey_Type__c,
        Software_Base_License_Lookup__c,
        Software_Version__c,
        Software_VersionF__c,
        Status,
        StockKeepingUnit,
        Support_End_Date__c,
        Support_Start_Date__c,
        sys_Needs_Update__c,
        SystemModstamp,
        TechExcel_Asset_Id__c,
        Time_Zone_Awareness__c,
        Top_Level_Asset__c,
        Total_3rd_Party_Connections__c,
        Total_Direct_Connections__c,
        Total_Non_3rd_Party_Connections__c,
        Total_Revision_Qty__c,
        Type__c,
        UsageEndDate
   
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Discount__c != null and SBQQ__AdditionalDiscountAmount__c != null  ";
        externalId  = "AssetNumber__c";
         orderBy     = "order by  Sbqq__Requiredbyid__c desc   ";
      ignore      = $true
     
    } )


return $packageHash
 

