 

$packageHash = @{}

 
$packageHash.add("SBQQ__ProductFeature__c",
    @{fields        = 
        "id, Unique_ID__c
        , Name 
        , SBQQ__Category__c 
        , SBQQ__ConfigurationFieldSet__c 
        , SBQQ__ConfiguredSKU__c 
        , SBQQ__DiscountSchedule__c 
        , SBQQ__DynamicProductFilterFieldSet__c 
        , SBQQ__DynamicProductLookupFieldSet__c 
        , SBQQ__MaxOptionCount__c 
        , SBQQ__MinOptionCount__c 
        , SBQQ__Number__c 
        , SBQQ__OptionSelectionMethod__c 
  ";
    
 
        importOrder = "1" ;
        #where       = " where SBQQ__ConfiguredSKU__r.is_AV2__c = true"
    } )  

$packageHash.add("SBQQ__ProductOption__c",
    @{fields        = 
        "id, Unique_ID__c
        ,SBQQ__OptionalSKU__r.Name
 , Codex__r.Unique_ID__c  
, SBQQ__ConfiguredSKU__r.Unique_ID__c 
, SBQQ__OptionalSKU__r.Unique_ID__c
, SBQQ__Feature__r.Unique_ID__c 
, SBQQ__AppliedImmediatelyContext__c 
, SBQQ__AppliedImmediately__c 
, SBQQ__Bundled__c 
, SBQQ__ComponentCodePosition__c 
, SBQQ__ComponentCode__c 
, SBQQ__ComponentDescriptionPosition__c 
, SBQQ__ComponentDescription__c 
, SBQQ__DefaultPricingTable__c 
, SBQQ__DiscountAmount__c 
, SBQQ__DiscountSchedule__r.Unique_ID__c
, SBQQ__Discount__c 
, SBQQ__DiscountedByPackage__c 
, SBQQ__ExistingQuantity__c 
, SBQQ__MaxQuantity__c 
, SBQQ__MinQuantity__c 
, SBQQ__Number__c 

 
, SBQQ__QuantityEditable__c 
, SBQQ__Quantity__c 
, SBQQ__QuoteLineVisibility__c 
, SBQQ__RenewalProductOption__c 
, SBQQ__Required__c 
, SBQQ__Selected__c 
, SBQQ__SubscriptionScope__c 
, SBQQ__System__c 
, SBQQ__Type__c 
, SBQQ__UnitPrice__c 
, SBQQ__UpliftedByPackage__c 
, Application_Scope__c 
, Billing_Frequency__c 
, Connector__c 
, Exclude_From_Component_Sum__c 
, Inherit_List_Price_from_Package__c 
, Primary_Product__c 
, Product_Line__c 
, Return_Code_Label__c 
, Return_Code__c 
 
 , connector_name__c 
, Related_Record__c 
, Billing_Schedule_Days__c 
 
, Codex_Product_Target__c 
 
, Country_Code__c 

, Feature_Item_Component_Description__c 
, Form_Code__c 
, Form_Description__c 
, Form_Type__c 
 
, Item_Allocation_Percent__c 
 
, Item_Component_Prefix__c 
, Jurisdiction_Code__c 
, Jurisdiction_Name__c 
, MPU_Proservices_RevRec__c 
, Netsuite_Item_Id__c 
, Note__c 
, OptionChangeTracking__c 
, Option_Configuration_Name__c 
, PDF_GroupField__c 
, PDF_Output_Config__c 
, Project_Group__c 
, Subscription_Term_Month__c 
, Summary_Code__c 
, Taxpayer_Type__c 
 
, No_Charge_Description__c  ";
    #    where       = " where (Codex__c = '' and SBQQ__OptionalSKU__r.is_AV2__c = true and SBQQ__OptionalSKU__r.isactive = true)  " ;
        importOrder = "3"
    } )  


$packageHash.add("SBQQ__OptionConstraint__c",
    @{fields        = 
        "id, Unique_ID__c
        , SBQQ__ConstrainedOption__r.Unique_ID__c 
        , SBQQ__Active__c 
        , SBQQ__CheckPriorPurchases__c 
        , SBQQ__ConfiguredSKU__r.Unique_ID__c  
        , SBQQ__ConstrainingOption__r.Unique_ID__c  
        , SBQQ__OptionConstraintGroup__c 
        , SBQQ__Type__c ";
        importOrder = "4" ;
       # where       = " where SBQQ__ConfiguredSKU__r.is_AV2__c = true  and SBQQ__ConfiguredSKU__r.isactive = true "
    } ) 

$packageHash.add("SBQQ__OptionConstraint__c.WIthId",
    @{fields        = 
        "id,name,id, Unique_ID__c
        , SBQQ__ConstrainedOption__r.Unique_ID__c 
        , SBQQ__Active__c 
        , SBQQ__CheckPriorPurchases__c 
        , SBQQ__ConfiguredSKU__r.Unique_ID__c  
        , SBQQ__ConstrainingOption__r.Unique_ID__c  
        , SBQQ__OptionConstraintGroup__c 
        , SBQQ__Type__c        ";
        importOrder = "4"  ;
        ignore      = $true

    } )  

$packageHash.add("SBQQ__ConfigurationAttribute__c",
    @{fields        = " 
       id, Unique_ID__c
        ,SBQQ__Feature__r.Unique_ID__c
        ,SBQQ__Product__r.Unique_ID__c        
        ,SBQQ__Product__r.Name
        ,SBQQ__TargetField__c        
        ,SBQQ__AppliedImmediately__c
        ,SBQQ__ApplyToProductOptions__c
        ,SBQQ__AutoSelect__c
        ,SBQQ__ColumnOrder__c
        ,SBQQ__DefaultField__c
        ,SBQQ__DefaultObject__c
        ,SBQQ__DisplayOrder__c

        ,SBQQ__HiddenValues__c
        ,SBQQ__Hidden__c
        ,SBQQ__Position__c

        ,SBQQ__Required__c
        ,SBQQ__ShownValues__c       ";
      #  where       = " where SBQQ__Product__r.is_AV2__c = true  and SBQQ__Product__r.isactive = true " ;
        importOrder = "2"
    } )  
    




return $packageHash
 

