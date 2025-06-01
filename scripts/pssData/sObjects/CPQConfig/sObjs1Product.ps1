 
$packageHash = @{}

# after options are mported 
$packageHash.add("Products2.finn", 
  @{fields      =
    " Name 
   , external_id__c  
   , Financial_Category__c ";
    ignore      = $true ;
    importOrder = "1";
  } )
 
#new products
$packageHash.add("Product2.Updates", 
  @{
    ignore      = $true ;
    suffix      = "x1" ;
    importOrder = "2";
    #where       = " where external_id__c in ('EX-00000002','EXasd05') ";

    ##    CurrencyIsoCode, -- Add if multi currency
    fields      =
    " 
        Name,
        external_id__c,
        IsActive,
        Description,
        DisplayUrl,
 
        SBQQ__AssetAmendmentBehavior__c,
        SBQQ__AssetConversion__c,
        SBQQ__BatchQuantity__c,
        SBQQ__BillingFrequency__c,
        SBQQ__BillingType__c,
        SBQQ__BlockPricingField__c,
        SBQQ__ChargeType__c,
        SBQQ__Component__c,
        SBQQ__CompoundDiscountRate__c,
        SBQQ__ConfigurationEvent__c,
        SBQQ__ConfigurationFields__c,
        SBQQ__ConfigurationFieldSet__c,
        SBQQ__ConfigurationFormTitle__c,
        SBQQ__ConfigurationType__c,
        SBQQ__ConfigurationValidator__c,
        SBQQ__ConfiguredCodePattern__c,
        SBQQ__ConfiguredDescriptionPattern__c,
        SBQQ__CostEditable__c,
        SBQQ__CostSchedule__c,
        SBQQ__CustomConfigurationPage__c,
        SBQQ__CustomConfigurationRequired__c,
        SBQQ__CustomerCommunityAvailability__c,
        SBQQ__DefaultPricingTable__c,
        SBQQ__DefaultQuantity__c,
        SBQQ__DescriptionLocked__c,
        SBQQ__DiscountCategory__c,
        SBQQ__DiscountSchedule__c,
        SBQQ__DynamicPricingConstraint__c,
        SBQQ__EnableLargeConfiguration__c,
        SBQQ__ExcludeFromMaintenance__c,
        SBQQ__ExcludeFromOpportunity__c,
        SBQQ__ExternallyConfigurable__c,
        SBQQ__GenerateContractedPrice__c,
        SBQQ__HasConfigurationAttributes__c,
        SBQQ__HasConsumptionSchedule__c,
        SBQQ__Hidden__c,
        SBQQ__HidePriceInSearchResults__c,
        SBQQ__IncludeInMaintenance__c,
        SBQQ__NewQuoteGroup__c,
        SBQQ__NonDiscountable__c,
        SBQQ__NonPartnerDiscountable__c,
        SBQQ__Optional__c,
        SBQQ__OptionLayout__c,
        SBQQ__OptionSelectionMethod__c,
        SBQQ__PriceEditable__c,
        SBQQ__PricingGuidance__c,
        SBQQ__PricingMethod__c,
        SBQQ__PricingMethodEditable__c,
        SBQQ__ProductPictureID__c,
        SBQQ__QuantityEditable__c,
        SBQQ__QuantityScale__c,
        SBQQ__ReconfigurationDisabled__c,
        SBQQ__RenewalProduct__c,
        SBQQ__SortOrder__c,
        SBQQ__Specifications__c,
        SBQQ__SubscriptionBase__c,
        SBQQ__SubscriptionCategory__c,
        SBQQ__SubscriptionPercent__c,
        SBQQ__SubscriptionPricing__c,
        SBQQ__SubscriptionTarget__c,
        SBQQ__SubscriptionTerm__c,
        SBQQ__SubscriptionType__c,
        SBQQ__Taxable__c,
        SBQQ__TaxCode__c,
        SBQQ__TermDiscountLevel__c,
        SBQQ__TermDiscountSchedule__c,
        SBQQ__UpgradeCredit__c,
        SBQQ__UpgradeRatio__c,
        SBQQ__UpgradeSource__c,
        SBQQ__UpgradeTarget__c
   
 

     ";
  } )

$packageHash.add("PriceBookEntry", 
  @{
    ignore      = $true ;
    suffix      = "x1" ;
    importOrder = "2";

    #   where       = " where external_id__c in ('EX-00000002','EXasd05') ";
    fields      =
    "  
    Id,
    IsActive,
    Name,
    Pricebook2Id,
    Product2Id,
    PriceBookEntryId__c
    ";
  } )

return $packageHash
 

