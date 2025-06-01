 
$packageHash = @{}



 #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
 $packageHash.add("Product2.MissFam", 
 @{fields        =
     " 
    id,name,Fulfillment_family__c
 ";
     importOrder = "1";
     where       = " where Fulfillment_family__c = 'Horizon'  "  +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by  Fulfillment_family__c,Family    ";
   #  ignoreDeploy = $true;
   ignore      = $true
 
 } )  



 #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
 $packageHash.add("Product2.produDetails", 
 @{fields        =
     " 
    id,name,Product_details__c
 ";
     importOrder = "1";
     where       = " where name like '%blue book%' "  +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by  Fulfillment_family__c,Family    ";
   #  ignoreDeploy = $true;
   ignore      = $true
 
 } )  

 $packageHash.add("Product2.buttonsx", 
 @{fields        =
     " 
    id,QLE_Button__c 
 ";
     importOrder = "1";
     where       = " where QLE_Button__c !=null "  +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by  QLE_Button__c   ";
   #  ignoreDeploy = $true;
   ignore      = $true
 
 } )  
 $packageHash.add("Product2.buttons", 
 @{fields        =
     " 
    id,QLE_Button__c,SBQQ__SortOrder__c,Provisioning_Team__c,Fulfillment_Team__c,Provisioning_Queue__c,
      Generate_Fulfillment_Case__c,productcode,Bundle_Wrapper__c,Fulfillment_family__c,Family,Revenue_Type__c,SBQQ__SubscriptionPricing__c,name
 ";
     importOrder = "1";
     where       = " where has_pricebook_entry__c = true and isactive = true "  +
                   "   ";
     externalId  = "Id";
     orderBy     = "order by  Fulfillment_family__c,Family    ";
   #  ignoreDeploy = $true;
   ignore      = $true
 
 } )  

 #, productcode,Fulfillment_family__c, Family,Revenue_Type__c,SBQQ__SubscriptionPricing__c,name


  #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
  $packageHash.add("Product2.BBAttrs", 
  @{fields        =
      " 
     id , SBQQ__ConfigurationType__c,SBQQ__ConfigurationEvent__c
  ";
      importOrder = "1";
      where       = " where Delivery_Method__c ='SOS' and name like '%zone%'" +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
  ignore      = $true
  
  } )  



  #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
  $packageHash.add("Product2.GEO", 
  @{fields        =
      " 
     id ,Is_Component_Dynamic__c
  ";
      importOrder = "1";
      where       = " where family ='DCC Geo' or Zone_Type__c = 'DCC County'  or Zone_Type__c = 'County' " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
    ignore      = $true
  
  } )  


$packageHash.add("Product2.components", 
  @{fields      = " 
      id,SBQQ__Component__c 
      ";
    ignore      = $true ;
    importOrder = "1";
    where       = " where  family = 'DCC Geo'   and SBQQ__Component__c = true  ";
    where1      = " where External_id__c != null";       
    orderBy     = "   order by Id    "
  } )


$packageHash.add("Product2.Invalid", 
  @{fields      = " 
      id,Name,IsActive
      ";
    ignore      = $true ;
    importOrder = "1";
    where       = " where  isactive = true and   SBQQ__SubscriptionPricing__c != null and Has_Price_Dimension__c = false ";
    where1      = " where External_id__c != null";       
    orderBy     = "   order by Id    "
  } )


$packageHash.add("Product2.CountyZone", 
  @{fields      = " 
      zone_Type__c,External_id__c
      ";
    ignore      = $true ;
    importOrder = "1";
    where       = " where  family = 'DCC Geo'  and isActive = true and External_id__c like '%EX-0000%' and zone_Type__c = 'County' ";
    where1      = " where External_id__c != null";       
    orderBy     = "   order by Id    "
  } )


$packageHash.add("Product2.pbe", 
  @{fields       =
    " 
        Family ,
        id, 
        CurrencyIsoCode,
        IsActive
        
      "
    ignore       = $true ;
    ignoreDeploy = $true ;      
    importOrder  = "1";
    where        = " where family = 'DCC Geo' and isActive = true and External_id__c != null and has_pricebook_entry__c = false";
    orderBy      = "   "

  } )
 

$packageHash.add("Product2.fix", 
  @{fields      =
    " id, 
        External_id__c  
      "
    ignore      = $true ;
    importOrder = "1";
    where       = " where family = 'DCC Geo' and isActive = true and External_id__c != null and has_pricebook_entry__c = false";

  } )
 
 
 
#new products
$packageHash.add("Product2.Updates", 
  @{ 
   
    ignore      = $true ;
    # suffix      = "x1" ;
    #  ignoreGet    =   $true     
    suffix      = "x1" ;
    importOrder = "2";
    where       = " where External_id__c like 'EX-002%' ";
    fields      =
    " 
   
 
        External_id__c,
        Name,      
        IsActive,                     
        ProductCode,      
        CurrencyIsoCode,
        Description,     
    
        Family,           
        Product_Line__c,           
    
        SBQQ__QuantityEditable__c,
        SBQQ__QuantityScale__c,
    
        Data_Content_Line__c,
        Do_Not_Fulfill__c,
        Do_Not_Integrate_to_NS__c,
        Fulfillment_family__c,        
        SBQQ__AssetAmendmentBehavior__c,
        SBQQ__AssetConversion__c,
        SBQQ__BatchQuantity__c,
        SBQQ__BillingFrequency__c,
        SBQQ__BillingType__c,
        SBQQ__BlockPricingField__c,
        SBQQ__ChargeType__c,
        SBQQ__Component__c,
        SBQQ__PricingMethod__c   
     ";
  } )

$packageHash.add("PriceBookEntry.update", 
  @{
    ignore      = $true ;
    # suffix      = "x1" ;
    ignoreGet   = $true            
    importOrder = "2";

    where       = " where Product2.External_id__c like 'EX-002%' ";
    orderBy     = " order by  Product2.External_id__c "
    fields      =
    "  
  
    IsActive,
 
    Pricebook2Id,
    Product2Id,
   
    unitPrice
    ";
  } )

return $packageHash
 

