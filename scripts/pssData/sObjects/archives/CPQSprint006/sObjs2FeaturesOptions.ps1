 

$packageHash = @{}

$packageHash.add("SBQQ__ProductOption__c.optionSKUupdate",
    @{fields        = 
        "  
        Id,
 
        SBQQ__OptionalSKU__r.External_id__c     
   
        
        
        " ;

        where       = " where SBQQ__ConfiguredSKU__r.ProductCode ='METSTX-B' and invalid_Option_Subscription__c = true and Is_Subscription_Configured__c = false   " ;
        importOrder = "1" ;
        orderBy     = "   order by Name    "
       # ignoreGet      = $false  ;
       ignore      = $true 
       
       } )

$packageHash.add("Product2.FP1",
@{fields        = 
    "  
    Id,
    SBQQ__SubscriptionPricing__c
     
 ";
 where       = " where SBQQ__SubscriptionPricing__c != null  " ;
 importOrder = "1" ;
 orderBy     = "   order by Name    "
 ignoreGet      = $true ;
 ignore      = $true

} )


$packageHash.add("SBQQ__ProductOption__c.ProdFPUpdate",
@{fields        = 
    "  
    SBQQ__OptionalSKU__r.Id,
    max(SBQQ__OptionalSKU__r.SBQQ__SubscriptionPricing__c )  SBQQ__SubscriptionPricing__c
 

    
 ";
 where       = " where  SBQQ__ConfiguredSKU__r.ProductCode ='LOOKEBS-B' and  Is_Subscription__c = true and  invalid_Option_Subscription__c =true   " ;
 importOrder = "1" ;
 orderBy     = " group by SBQQ__OptionalSKU__r.Id order by  SBQQ__OptionalSKU__r.id     "
        ignore      = $true
      ignoreDeploy = $true ;
         ignoreGet    =   $true
} )  

$packageHash.add("SBQQ__ProductOption__c.invalid",
    @{fields        = 
        "  
        id,
        Name,
        invalid_Option_Subscription__c,
     
        SBQQ__ConfiguredSKU__r.Name, 
        Is_Subscription_Configured__c, 
        SBQQ__ConfiguredSKU__r.SBQQ__SubscriptionPricing__c, 
        SBQQ__OptionalSKU__r.Name,           
        Is_Subscription__c, 
        SBQQ__OptionalSKU__r.SBQQ__SubscriptionPricing__c,         
  
  
        SBQQ__Number__c,
 
        SBQQ__UpliftedByPackage__c";
    
        where       = " where      Is_Subscription__c = true and  invalid_Option_Subscription__c =true    " ;
        importOrder = "3" ;
        orderBy     = "order by SBQQ__ConfiguredSKU__r.Name, SBQQ__OptionalSKU__r.Name    "
        ignoreDeploy = $true ;
     #   ignoreGet    =   $true        
       ignore      = $true
    } )  

    $packageHash.add("SBQQ__ProductOption__c.AsProduct",
    @{fields        = 
        "  
        SBQQ__OptionalSKU__r.id,
        SBQQ__OptionalSKU__r.External_id__c,
        SBQQ__OptionalSKU__r.Name,      
        SBQQ__OptionalSKU__r.IsActive,                     
        SBQQ__OptionalSKU__r.ProductCode,      
        SBQQ__OptionalSKU__r.CurrencyIsoCode,
        SBQQ__OptionalSKU__r.Description,     
    
        SBQQ__OptionalSKU__r.Family,           
        SBQQ__OptionalSKU__r.Product_Line__c,           
    
        SBQQ__OptionalSKU__r.SBQQ__QuantityEditable__c,
        SBQQ__OptionalSKU__r.SBQQ__QuantityScale__c,
    
        SBQQ__OptionalSKU__r.Data_Content_Line__c,
        SBQQ__OptionalSKU__r.Do_Not_Fulfill__c,
        SBQQ__OptionalSKU__r.Do_Not_Integrate_to_NS__c,
        SBQQ__OptionalSKU__r.Fulfillment_family__c,        
        SBQQ__OptionalSKU__r.SBQQ__AssetAmendmentBehavior__c,
        SBQQ__OptionalSKU__r.SBQQ__AssetConversion__c,
        SBQQ__OptionalSKU__r.SBQQ__BatchQuantity__c,
        SBQQ__OptionalSKU__r.SBQQ__BillingFrequency__c,
        SBQQ__OptionalSKU__r.SBQQ__BillingType__c,
        SBQQ__OptionalSKU__r.SBQQ__BlockPricingField__c,
        SBQQ__OptionalSKU__r.SBQQ__ChargeType__c,
        SBQQ__OptionalSKU__r.SBQQ__Component__c,
        SBQQ__OptionalSKU__r.SBQQ__PricingMethod__c        
 
    
        
     ";
    
        where       = " where   Is_Subscription__c = true and invalid_Option_Subscription__c =true  " ;
        importOrder = "1" ;
        orderBy     = "order by SBQQ__ConfiguredSKU__r.Name, SBQQ__OptionalSKU__r.Name    "
        ignoreDeploy = $true ;
          ignore      = $true
    } )  

    
$packageHash.add("SBQQ__ProductFeature__c",
    @{fields        = 
        "  
        Name,
        External_id__c,
        SBQQ__Category__c,
        SBQQ__ConfigurationFieldSet__c,
        SBQQ__ConfiguredSKU__r.External_id__c,
        SBQQ__DiscountSchedule__r.External_id__c,
        SBQQ__DynamicProductFilterFieldSet__c,
        SBQQ__DynamicProductLookupFieldSet__c,
        SBQQ__MaxOptionCount__c,
        SBQQ__MinOptionCount__c,
        SBQQ__Number__c,
        SBQQ__OptionSelectionMethod__c
      ";
     
        importOrder = "2" ;
        where       = ""
        ignore      = $true
    } )         
   

$packageHash.add("SBQQ__ProductOption__c",
    @{fields        = 
        "  
      
        External_id__c,
        SBQQ__ConfiguredSKU__r.External_id__c, 
        SBQQ__DiscountSchedule__r.External_id__c,     
        SBQQ__OptionalSKU__r.External_id__c,    
        SBQQ__Feature__r.External_id__c,               
        Connection_Notes__c,
        COVID_19_Rapid_Response_Platform_Tier_1__c,
        COVID_19_Rapid_Response_Platform_Tier_2__c,
        COVID_19_Rapid_Response_Platform_Tier_3__c,
        Expiration_Date__c,
        Expiring__c,
          
        SBQQ__AppliedImmediately__c,
        SBQQ__AppliedImmediatelyContext__c,
        SBQQ__Bundled__c,
        SBQQ__ComponentCode__c,
        SBQQ__ComponentCodePosition__c,
        SBQQ__ComponentDescription__c,
        SBQQ__ComponentDescriptionPosition__c,
    
        SBQQ__DefaultPricingTable__c,
        SBQQ__Discount__c,
        SBQQ__DiscountAmount__c,
        SBQQ__DiscountedByPackage__c,
      
        SBQQ__ExistingQuantity__c,
  
        SBQQ__MaxQuantity__c,
        SBQQ__MinQuantity__c,
        SBQQ__Number__c,
        SBQQ__Quantity__c,
        SBQQ__QuantityEditable__c,
        SBQQ__QuoteLineVisibility__c,
        SBQQ__RenewalProductOption__c,
        SBQQ__Required__c,
        SBQQ__Selected__c,
        SBQQ__SubscriptionScope__c,
        SBQQ__System__c,
        SBQQ__Type__c,
        SBQQ__UnitPrice__c,
        SBQQ__UpliftedByPackage__c,
        Subscription_Term_for_Bundle__c,
        Time_Zone_Awareness__c,
        Total_3rd_Party_Connections__c,
        Total_Non_3rd_Party_Connections__c  ";
        #where       = " where (Codex__c = '' and SBQQ__OptionalSKU__r.is_AV2__c = true and SBQQ__OptionalSKU__r.isactive = true)  " ;
        importOrder = "3"
        ignore      = $true
    } )  


 
 

    $packageHash.add("SBQQ__OptionConstraint__c",
    @{fields        = 
        " External_id__c,
        Name,
        SBQQ__Active__c,
        SBQQ__CheckPriorPurchases__c,
        SBQQ__ConfiguredSKU__r.External_id__c ,
        SBQQ__ConstrainedOption__r.External_id__c ,
        SBQQ__ConstrainingOption__r.External_id__c ,
        SBQQ__OptionConstraintGroup__c,
        SBQQ__Type__c ";
        importOrder = "4" ;
        where       = ""
        ignore      = $true
    } ) 

$packageHash.add("SBQQ__ConfigurationAttribute__c",
    @{fields        = " 
        External_id__c,
        SBQQ__Feature__r.External_id__c,
        SBQQ__Product__r.External_id__c ,       
        Name,
        RecordTypeId,
       SBQQ__AppliedImmediately__c,
       SBQQ__ApplyToProductOptions__c,
       SBQQ__AutoSelect__c,
       SBQQ__ColumnOrder__c,
       SBQQ__DefaultField__c,
       SBQQ__DefaultObject__c,
       SBQQ__DisplayOrder__c,
       SBQQ__Hidden__c,
       SBQQ__HiddenValues__c,
       SBQQ__Position__c,
       SBQQ__Required__c,
       SBQQ__ShownValues__c,
       SBQQ__TargetField__c       ";
        where       = "" ;
        importOrder = "2";
        ignore      = $true
    } )  
    

    $packageHash.add("SBQQ__ConfigurationAttribute__c.del",
    @{fields        = " 
        id,
        External_id__c,
        SBQQ__Feature__r.External_id__c,
        SBQQ__Product__r.External_id__c ,       
        Name,
        RecordTypeId,
       SBQQ__AppliedImmediately__c,
       SBQQ__ApplyToProductOptions__c,
       SBQQ__AutoSelect__c,
       SBQQ__ColumnOrder__c,
       SBQQ__DefaultField__c,
       SBQQ__DefaultObject__c,
       SBQQ__DisplayOrder__c,
       SBQQ__Hidden__c,
       SBQQ__HiddenValues__c,
       SBQQ__Position__c,
       SBQQ__Required__c,
       SBQQ__ShownValues__c,
       SBQQ__TargetField__c       ";
        where       = " where SBQQ__TargetField__c = 'Account_Sequence__c'  " ;
        importOrder = "2";
     ignore      = $true
    } )  
    


return $packageHash
 

