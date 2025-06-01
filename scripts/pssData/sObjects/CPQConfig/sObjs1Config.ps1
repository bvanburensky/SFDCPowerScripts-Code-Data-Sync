 

###
# This script defines a hash table containing configuration for various Salesforce CPQ objects.
#  be careful about moving action conditions
##

$packageHash = @{}

$packageHash.add("SBQQ__SummaryVariable__c.parent", 
    @{fields        = 
        " 
    external_id__c,
    Name,
    SBQQ__AggregateField__c,
    SBQQ__AggregateFunction__c,
    SBQQ__CompositeOperator__c,
    SBQQ__ConstraintField__c,
    SBQQ__FilterField__c,
    SBQQ__FilterValue__c,
    SBQQ__TargetObject__c,
    SBQQ__Operator__c,
    SBQQ__Scope__c,
    SBQQ__ValueElement__c
 ";
        importOrder = "1";
        where       = " where SBQQ__CombineWith__c = '' "
        ignore      = $false ;
    } )

       
$packageHash.add("SBQQ__SummaryVariable__c.child", 
    @{fields        = 
        "    external_id__c,
        Name,
        SBQQ__AggregateField__c,
        SBQQ__AggregateFunction__c,
        SBQQ__CombineWith__r.external_id__c,
        SBQQ__CompositeOperator__c,
        SBQQ__ConstraintField__c,
        SBQQ__FilterField__c,
        SBQQ__FilterValue__c,
        SBQQ__TargetObject__c,
        SBQQ__Operator__c,
        SBQQ__Scope__c,
        SBQQ__ValueElement__c"  ;
        importOrder = "2"
        ignore      = $false ;
    } ) 



$packageHash.add("SBQQ__CustomScript__c", 
    @{fields        = "
    external_id__c
    , Name 
    , SBQQ__Code__c 
    , SBQQ__ConsumptionRateFields__c 
    , SBQQ__ConsumptionScheduleFields__c 
    , SBQQ__GroupFields__c 
    , SBQQ__QuoteFields__c 
    , SBQQ__QuoteLineFields__c 
    , SBQQ__TranspiledCode__c     ";
        importOrder = "1";
        ignore      = $true
    } ) 
    
$packageHash.add("SBQQ__CustomAction__c.NoAction", 
    @{fields                =
        " 
    external_id__c
    ,Name
    , SBQQ__Active__c
    , SBQQ__BrandButton__c
    , SBQQ__Class__c
    , SBQQ__ConditionsMet__c
    , SBQQ__Default__c
 
    , SBQQ__DisplayOrder__c
    , SBQQ__EventHandlerName__c
    , SBQQ__IconClass__c
    , SBQQ__Icon__c
    , SBQQ__Label__c
    , SBQQ__Location__c
    , SBQQ__PageHandlerName__c
    , SBQQ__Page__c
    , SBQQ__ReturnURL__c
    , SBQQ__TargetObject__c
    , SBQQ__Type__c
    , SBQQ__URLTarget__c
    , SBQQ__URL__c
    ";
        importOrder         = "1";
        ignore              = $true
        # where               = " where SBQQ__Active__c = true or SBQQ__URLTarget__c>'' ";
        where_toProdIgnored = " and external_id__c in ('EX-020120050','EX-020120014') "
    } )

$packageHash.add("SBQQ__CustomAction__c.Action", 
    @{fields                =
        " 
    external_id__c
    ,Name
   ,  SBQQ__Action__c
    , SBQQ__Active__c
    , SBQQ__BrandButton__c
    , SBQQ__Class__c
    , SBQQ__ConditionsMet__c
    , SBQQ__Default__c
 
    , SBQQ__DisplayOrder__c
    , SBQQ__EventHandlerName__c
    , SBQQ__IconClass__c
    , SBQQ__Icon__c
    , SBQQ__Label__c
    , SBQQ__Location__c
    , SBQQ__PageHandlerName__c
    , SBQQ__Page__c
    , SBQQ__ParentCustomAction__r.external_id__c
    , SBQQ__ReturnURL__c
    , SBQQ__TargetObject__c
    , SBQQ__Type__c
    , SBQQ__URLTarget__c
    , SBQQ__URL__c
    ";
        importOrder         = "2";
        # where               = " where SBQQ__Active__c = true or SBQQ__URLTarget__c>'' ";
        where_toProdIgnored = " and external_id__c in ('EX-020120050','EX-020120014') ";
        ignore              = $true
    } )


$packageHash.add("SBQQ__CustomActionCondition__c", 
    @{fields        = "
    
    external_id__c
    , name
    , SBQQ__CustomAction__r.external_id__c
    , SBQQ__TargetObject__c 
    , SBQQ__Field__c 
    , SBQQ__Operator__c 
    , SBQQ__FilterValue__c   ";
        #  where       = " where SBQQ__CustomAction__r.SBQQ__Active__c = true or SBQQ__CustomAction__r.SBQQ__URLTarget__c>'' "; 
        importOrder = "2"
        ignore      = $true
        

    } ) 



$packageHash.add("SBQQ__SearchFilter__c", 
    @{fields        = "
    external_id__c,  Name
    , SBQQ__Action__r.external_id__c
    , SBQQ__DisplayOrder__c
    , SBQQ__FilterSourceField__c
    , SBQQ__FilterSourceObject__c
    , SBQQ__FilterValue__c
    , SBQQ__HiddenSourceField__c
    , SBQQ__HiddenSourceObject__c
    , SBQQ__Hidden__c
    , SBQQ__Operator__c
    , SBQQ__TargetField__c,
      SBQQ__TargetObject__c  ";
        #where       = " where SBQQ__Action__r.SBQQ__Active__c = true  "; 
        importOrder = "2";
        orderby     = " Order By Name"
        ignore      = $true
    } ) 
    


return $packageHash
 

