
 

$packageHash = @{}
 
  
$packageHash.add("SBQQ__BlockPrice__c",
    @{fields   = 
    "id,  Unique_ID__c
 ,Name 
    ,SBQQ__EffectiveDate__c,SBQQ__LowerBound__c,SBQQ__OrderProduct__c
    ,SBQQ__OriginalBlockPrice__c,SBQQ__PriceBook2__c
    ,SBQQ__Price__c
    ,SBQQ__Product__r.Unique_ID__c
    ,SBQQ__UpperBound__c  ";
        importOrder ="1"
    } )   
 


    $packageHash.add("SBQQ__DiscountSchedule__c", 
    @{fields   = "
   id,  Unique_ID__c
 , Name
  
    , SBQQ__AggregationScope__c 
    , SBQQ__ConstraintField__c 
    , SBQQ__CrossOrders__c 
    , SBQQ__CrossProducts__c 
    , SBQQ__Description__c 
    , SBQQ__DiscountUnit__c 
    , SBQQ__ExcludedPricebookIds__c 
    , SBQQ__IncludeBundledProducts__c 
    , SBQQ__OriginalDiscountSchedule__c 
    , SBQQ__OverrideBehavior__c 
    , SBQQ__PriceScale__c 
    , SBQQ__Pricebook__c 
    , SBQQ__Product__r.Unique_ID__c
    , SBQQ__QuoteLineQuantityField__c 

    , SBQQ__Type__c 
    , SBQQ__UsePriceForAmount__c 
    , SBQQ__UserDefined__c 
  
    , Lower_Bound__c 
    , Upper_Bound__c 
    , Use_Tier_Upper_Bound__c ";
        importOrder ="1"
    } ) 

    $packageHash.add("SBQQ__DiscountTier__c", 
    @{fields   = "
    id,  Unique_ID__c
 , Name 
    , SBQQ__Schedule__r.Unique_ID__c 
    , SBQQ__DiscountAmount__c 
    , SBQQ__Discount__c 
    , SBQQ__LowerBound__c 
    , SBQQ__Number__c 
    , SBQQ__Price__c 
    , SBQQ__UpperBound__c 
      ";
        importOrder ="2"
    } ) 



return $packageHash
 

