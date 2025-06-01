 
$packageHash = @{}


#new products

<# 
,
        Description
#>


$packageHash.add("Product2.NetsuiteDeploy", 
  @{
    ignore      = $false ;
    suffix      = "x1" ;
    importOrder = "2";
    where       = " where NetSuite_Internal_Id__c != null";
    fields      =
    " 
         Unique_ID__c,

         NetSuite_Internal_Id__c	,
         NetSuite_Item_Code__c,	
         NetSuite_Item_Code_Renew__c 
 
  
";
} )

$packageHash.add("Product2.sfVersions", 
  @{
    ignore      = $false ;
    suffix      = "x1" ;
    importOrder = "2";
    where       = " where IMBase_Software_Product__c = true or SBQQ__OptionLayout__c != null or "+
                          "unique_id__c in ('EX-20221130.01','EX-20221117','EX-20221130.01') " +
                  "";
    fields      =
    " 
         Unique_ID__c,

         NetSuite_Internal_Id__c	,
         NetSuite_Item_Code__c,	
         NetSuite_Item_Code_Renew__c,

        SBQQ__OptionLayout__c,        
        IsActive,
        AVA_SFCPQ__TaxCode__c,
        BRL_List_Price__c,
        Bundle__c,
        Calculate_Maintenance__c,
        Name,   
        Is_Memo_Non_Financial__c,
        Is_Software_Configuration__c,
        Is_Bookings__c,
        CurrencyIsoCode,
    
        DisplayUrl,
        EP_Evaluator_Base_Software__c,
        EUR_List_Price__c,
        ExternalDataSourceId,
      
        Family,
        Feature__c,
        Financial_Category__c,
        Financial_Summary_Category__c,
        GBP_List_Price__c,
        GSA_Maintenance_Calculation__c,
        GSA_Only__c,
        IMBase_Software_Product__c,
        One_Time_or_Recurring__c,
        PriceBookEntryId__c,
        Product_Category__c,
        Product_Code_Id__c,
        Product_Id__c,
        Product_Line__c,
        Product_Line_Filter__c,
        Product_Name_FR__c,
        ProductCode,
        QuantityUnitOfMeasure,
        Region__c,
        Required_Version__c,
        Rules_Tips__c,
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
        SBQQ__UpgradeTarget__c,
        SBQQ_RenewalProduct_cPC__c,
        SBQQ_SubscriptionTarget_cPC__c,
        Signature_Requirements__c,
        Source_Id__c,
        Standard_Price__c,
        Standard_Pricebook_Id__c,
        StockKeepingUnit,
        UOM__c,
        USD_List_Price_DILA__c,
        USD_List_Price_DINA__c
     ";
  } )
 
$packageHash.add("PriceBookEntry.Stand", 
  @{
    ignore      = $false ;
   
    importOrder = "2";
    # 
    where       = " where Product2.unique_id__c in ('EX-20221130.01','EX-20221117') and Pricebook2.isStandard = true";
    fields      =
    "  
    Unique_id__c,
    IsActive,
    Pricebook2Id,
    Product2.unique_id__c,
    currencyIsoCode,
    unitprice
 

    ";
  } )


  $packageHash.add("PriceBookEntry.NonStand", 
  @{
    ignore      = $false ;
   
    importOrder = "3";
    # 
    where       = " where Product2.unique_id__c in ('EX-20221130.01','EX-20221117') and Pricebook2.isStandard = false";
    fields      =
    "  
    Unique_id__c,
    IsActive,
    Pricebook2Id,
    Product2.unique_id__c,
    currencyIsoCode,
    unitprice
 

    ";
  } )



 
$packageHash.add("Product2.netsuiteLoad", 

@{fields      =
  " 
  ProductCode
  ,Product_Code_Id__c  
  ,Unique_id__c
  ,Financial_Category__c.
  ,Name  "
  ;
  where       = " where Unique_id__c != null and ProductCode != null and (  Is_One_Time__c = true or is_subscription__c = true) ";
  importOrder = "1"

  orderby     = 'order by Financial_Category__c,'    ;
  ignore      = $true ;
} )

$packageHash.add("Product2.netsuiteimport", 

@{fields      =
  " 
  NetSuite_Internal_Id__c	,
  NetSuite_Item_Code__c,	
  NetSuite_Item_Code_Renew__c,
  SBQQ__TaxCode__c,
  ProductCode
  ,Product_Code_Id__c  
  ,Unique_id__c
"
  ;
  where       = " where Unique_id__c != null and NetSuite_Item_Code_Renew__c ='N/A'   ";
  importOrder = "1"
  orderby     = ' order by Financial_Category__c' ;
   ignore      = $true ;
} )

$packageHash.add("Product2.netsuiteimportRenewal", 

@{fields      =
  " 
  NetSuite_Internal_Id__c	,
  NetSuite_Item_Code__c,	
  NetSuite_Item_Code_Renew__c,
  SBQQ__TaxCode__c,
  ProductCode
  ,Product_Code_Id__c  
  ,Unique_id__c
  ,Financial_Category__c
  ,Name  "
  ;
  where       = " where Unique_id__c != null and ProductCode != null   ";
  importOrder = "1"
  orderby     = ' order by Financial_Category__c';
  ignore      = $true ;
} )

return $packageHash
 

