 
$packageHash = @{}


  

$packageHash.add("Contract.touch", 
@{fields        =
    " 
    Id  
 

";
    importOrder = "1";
    where       = " where sys_Needs_Update__c = true and (Generate_Renewal_Quote__c = true  or Generate_Renewal_Opportunity__c = true)";
    externalId  = "Id";
    orderBy     = "order by endDate desc  limit 50  ";
    # ignore      = $true
 
} )

$packageHash.add("Order.touch", 
@{fields        =
    " 
    Id ,
    ownerid,
 

";
    importOrder = "1";
    where       = " where sys_Needs_Update__c = true ";
    externalId  = "Id";
    orderBy     = "order by OrderNUmber    ";
     ignore      = $true
 
} )


  
$packageHash.add("Order.ownerPatch", 
@{fields        =
    " 
    Id ,
    ownerid
    

";
    importOrder = "1";
    where       = " where ORder_Status__c = 'Order Fulfilled' "+
                    " and lastmodifiedDate = Last_n_Days:2 and createdDate < Last_n_Days:50  " +
                    "and ownerid = '00G2M000003bXlsUAE' ";
    externalId  = "Id";
    orderBy     = "order by OrderNUmber    ";
    ignore      = $true
 
} )

$packageHash.add("Order.ownerPatchUAT", 
@{fields        =
    " 
    Id ,
    ownerid
    

";
    importOrder = "1";
    where       = " where Order_Status__c = 'Order Fulfilled' "+
                    "and  createdDate = Last_n_Days:90  " +
                    "and ownerid != '00G2M000003bXlsUAE' ";
    externalId  = "Id";
    orderBy     = "order by OrderNUmber    ";
    ignore      = $true
 
} )  

$packageHash.add("OrderHa.ownerPatch", 
@{fields        =
    " 
    Id ,
    ownerid
    

";
    importOrder = "1";
    where       = " where ORder_Status__c = 'Order Fulfilled'  and lastmodifiedDate = Last_n_Days:2 ";
    externalId  = "Id";
    orderBy     = "order by OrderNUmber    ";
    ignore      = $true
 
} )


$packageHash.add("SBQQ__Subscription__c.touch", 
    @{fields        =
        " 
        Id 
    
    ";
        importOrder = "1";
        where       = " where sys_Needs_Update__c = true ";
        xwhere       = " where  SBQQ__RevisedSubscription__c !=null and "+
                        "is_Asset_Subscription__c=true  and Parent_Asset__c =null and IsActive__c = true";        
        externalId  = "Id";
        orderBy     = "order by SBQQ__Contract__c     ";
     ignore      = $true
     
    } )



 


 

    #is_One_Time__c,
    #is_Subscription__c

    $packageHash.add("SBQQ__QuoteLine__c.ToTouch", 
    @{fields        =
        " 
       id ,
       is_Subscription__c 
        
    ";
        importOrder = "1";
        where       = " where sbqq__Quote__r.sbqq__Opportunity2__c != null and is_Subscription__c = true and  Is_Maintenance__c = false and Terminated_Inactive__c = false and "+
                        "SBQQ__Product__r.Is_Maintenance__c = true and Is_Closed__c =false  and "+
                        "sbqq__Quote__r.sbqq__Opportunity2__r.SBQQ__Ordered__c = false ";
        externalId  = "id";
        
         orderBy     = " order by sbqq__Quote__c limit 20      "; 
          ignore      = $true
     
    } )



    $packageHash.add("SBQQ__QuoteLine__c.ToTouch1", 
    @{fields        =
        " 
       id ,
       is_Subscription__c 
        
    ";
        importOrder = "1";
        where       = " where sys_Needs_Update__c = true and sbqq__Quote__r.SBQQ__OPportunity2__c != null";
        externalId  = "id";
        
         orderBy     = " order by sbqq__Quote__c    "; 
       ignore      = $true
     
    } )

    $packageHash.add("SBQQ__QuoteLine__c.ToTouch2", 
    @{fields        =
        " 
       id ,
       is_Subscription__c ,
       SBQQ__Discount__c,
       SBQQ__AdditionalDiscountAmount__c

    ";
        importOrder = "1";
        where       = " where SBQQ__Discount__c != null and  SBQQ__AdditionalDiscountAmount__c !=null";
        externalId  = "id";
        
         orderBy     = " order by sbqq__Quote__c       "; 
       ignore      = $true
     
    } )

    $packageHash.add("MI_PEvent_Log__c.ToTouch", 
    @{fields        =
        " 
       id,createdDate
       
        
    ";
        importOrder = "1";
        where       = " where createdDate < LAST_N_DAys:30  ";
        externalId  = "id";
         orderBy     = "order by  createdDate desc   limit 20000";
        ignore      = $true
     
    } )

return $packageHash
 

