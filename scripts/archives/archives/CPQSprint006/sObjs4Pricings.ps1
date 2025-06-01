
 

$packageHash = @{}

$packageHash.add("SBQQ__Dimension__c.Invalid__c", 
  @{fields      = "
  SBQQ__Product__c,SBQQ__Product__r.SBQQ__SubscriptionPricing__c,
   id,External_id__c,SBQQ__Product__r.Name,SBQQ__Type__c ,is_Invalid_Dimension__c
 
  ";
    importOrder = "1"
    where       = " where  SBQQ__Dimension__c.is_Invalid_Dimension__c = true " +
    " ";
    externalId  = "Id";
    orderBy     = "order by createdDate    ";
    ignore      = $true  
  } ) 

$packageHash.add("SBQQ__Dimension__c.Invalid", 
  @{fields      = "
  SBQQ__Product__c,SBQQ__Product__r.SBQQ__SubscriptionPricing__c,
   id,External_id__c,SBQQ__Product__r.Name,SBQQ__Type__c ,is_Invalid_Dimension__c
 
  ";
    importOrder = "1"
    where       = " where  SBQQ__Dimension__c.is_Invalid_Dimension__c = true " +
    " ";
    externalId  = "Id";
    orderBy     = "order by createdDate    ";
     ignore      = $true  
  } ) 

 
$packageHash.add("Pricebook2", 
  @{fields      = "
External_id__c,
IsActive,
Name ,
Description,
IsStandard
  ";
    importOrder = "1"
    ignore      = $true ;
  } ) 

$packageHash.add("SBQQ__BlockPrice__c",
  @{fields      = 
    " External_id__c,
    SBQQ__EffectiveDate__c,
    SBQQ__LowerBound__c,
    SBQQ__OrderProduct__c,
    SBQQ__OriginalBlockPrice__c,
    SBQQ__Price__c,
    SBQQ__PriceBook2__r.External_id__c,
    SBQQ__Product__c,
    SBQQ__QuoteLine__c,
    SBQQ__UpperBound__c ";
    importOrder = "2";
    ignore      = $true   ;
    #Not used currently 
  } )   



$packageHash.add("SBQQ__DiscountSchedule__c", 
  @{fields      = "
    External_id__c,
    Name,
    SBQQ__Product__r.External_id__c,
    SBQQ__Pricebook__r.External_id__c,
    SBQQ__Account__c,
    SBQQ__AggregationScope__c,
    SBQQ__ConstraintField__c,
    SBQQ__CrossOrders__c,
    SBQQ__CrossProducts__c,
    SBQQ__Description__c,
    SBQQ__DiscountUnit__c,
    SBQQ__ExcludedPricebookIds__c,
    SBQQ__IncludeBundledProducts__c,
    SBQQ__Order__c,
    SBQQ__OrderProduct__c,
    SBQQ__OriginalDiscountSchedule__c,
    SBQQ__OverrideBehavior__c,
    SBQQ__PriceScale__c,
    SBQQ__Quote__c,
    SBQQ__QuoteLine__c,
    SBQQ__QuoteLineQuantityField__c,
    SBQQ__Type__c,
    SBQQ__UsePriceForAmount__c,
    SBQQ__UserDefined__c
  ";
    importOrder = "2"
    ignore      = $true   ;
  } ) 



$packageHash.add("SBQQ__DiscountTier__c", 
  @{fields      = "
    External_id__c,
    SBQQ__Schedule__r.External_id__c,
    Name ,
    SBQQ__Discount__c,
    SBQQ__DiscountAmount__c,
    SBQQ__LowerBound__c,
    SBQQ__Number__c,
    SBQQ__Price__c,

    SBQQ__UpperBound__c
      ";
    importOrder = "2"
    ignore      = $true   ;
  } ) 




return $packageHash
 

