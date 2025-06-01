 
$packageHash = @{}


# a5UDo000000XdboMAC 
# a65Do000000wrQVIAY

$packageHash.add("Subscription_Total__c.sysupdate", 
    @{fields        =
        " 
    Id   
    
";
        importOrder = "1";
        where1      = " where Sys_Needs_Update__c = true  and FullFillment_Family__c = 'BlueBook'" 
        where3       = " where Sys_Needs_Update__c = true  and FullFillment_Family__c = 'Horizon'"         
        where2 = " where Sys_Needs_Update__c = true "
        where = " where Sys_Needs_Update__c=true  and contract__r.Is_Status_Dead__c = false   "  +      
        "   ";

  #        " and Is_Subscription_Valid__c = false  ";
        externalId  = "Id";
        orderBy     = "order by  contract__c asc  limit 50000    ";
    ignore      = $true

    } )

 

    $packageHash.add("Contract.preserveBundle", 
    @{fields        =
        " 
        Id ,SBQQ__PreserveBundleStructureUponRenewals__c,createdDate
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Order__c != null and SBQQ__PreserveBundleStructureUponRenewals__c = false and Is_Status_Dead__c = false ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Order__c    ";
        ignore      = $true
    } )


$packageHash.add("Contract.ArcvNew", 
    @{fields        =
        " 
        Id ,ContractNumber, Active_Arcv__c,ARCV__c,Net_total__c,Net_Total_Arcv__c, StartDate,EndDate,Status,Name
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Order__c != null and Active_Arcv__c != 0 ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Order__c    ";
        ignore      = $true
    } )



$packageHash.add("SBQQ__Subscription__c.decomponent", 
@{fields        =
    " 
    id ,SBQQ__Contract__r.ContractNumber,  Is_Subscription_Valid_Text__c,SBQQ__Product__r.Name
 
";
    importOrder = "1";
    where       = " where Is_Subscription_Valid_Text__c like '001%' and  is_Subscription_Valid__c = false and SBQQ__Contract__r.Is_Status_Dead__c = false  " +
    " "  
    # " Subscription_Total__r.Sys_Needs_Update__c = true "
    #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
    externalId  = "Id";
    orderBy     = "order by SBQQ__Contract__r.ContractNumber,SBQQ__Product__r.Name  " +
    #  "groupd by  Contract__c,Id,SBQQ__Product__c,SBQQ__ProductOption__c,SBQQ__Dimension__c " + 
    "   ";
  ignore      = $true

} )


$packageHash.add("SBQQ__Subscription__c.sysupdate", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
       where       = " where Sys_needs_update__c = true "
     #   where1       = " where Account_Sequence__c != null and Account_Sequence__r.Sequence_Number__c != Sequence_Number__c "        
       where3 =   "  where  SBQQ__NetPrice__c !=0 and sbqq__contract__r.Is_Status_Dead__c = false and  subscription_total__r.Sys_needs_update__c = true  "  ;
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = " order by lastmodifiedDate desc   ";
        ignore      = $true

    } )

    $packageHash.add("SBQQ__Subscription__c.zQuntity", 
    @{fields        =
        " 
    Id ,createdDate  
    
";
        importOrder = "1";
       # where       = " where Account_Sequence__c != null and Account_Sequence__r.LASTMODIFIEDDATE = LAST_N_WEEKS:2  "
     #   where1       = " where Account_Sequence__c != null and Account_Sequence__r.Sequence_Number__c != Sequence_Number__c "        
       where =   "  where SBQQ__Quantity__c < 0 and SBQQ__RevisedSubscription__c != null ";
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = " order by sbqq__Contract__c desc  ";
        ignore      = $true

    } )


    $packageHash.add("SBQQ__Subscription__c.decomponentId", 
    @{fields        =
        " 
        id   
     
  ";
        importOrder = "1";
        where       = " where  is_Subscription_Valid__c = false and SBQQ__Contract__r.Is_Status_Dead__c = false  " +
        " "  
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Contract__r.ContractNumber,SBQQ__Product__r.Name  " +
        #  "groupd by  Contract__c,Id,SBQQ__Product__c,SBQQ__ProductOption__c,SBQQ__Dimension__c " + 
        "   ";
     ignore      = $true

    } )



$packageHash.add("SBQQ__Subscription__c.Legacy", 
    @{fields        =
        " 
        SBQQ__Contract__c,SBQQ__Contract__r.ContractNumber,SBQQ__Product__r.name,SBQQ__Product__c ,SBQQ__Contract__r.Name
     
  ";
        importOrder = "1";
        where       = " where SBQQ__Product__c  in ( '01tDo000000Ua2FIAS')  " +
        " "  
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Product__c  " +
        #  "groupd by  Contract__c,Id,SBQQ__Product__c,SBQQ__ProductOption__c,SBQQ__Dimension__c " + 
        "   ";
      ignore      = $true

    } )
$packageHash.add("SBQQ__Subscription__c.seat1", 
    @{fields        = " 
    Id,SBQQ__Product__c , 
     max(SBQQ__Product__r.Name)  SBQQ__Contract__c,SBQQ__Contract__r.Name,SBQQ__Contract__r.ContractNumber  ";
        importOrder = "1";
        where       = " where SBQQ__Product__c  in ( '01tDo000000UZLdIAO','01tDo000000UZQUIA4')  " ;
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Product__c     " + 
        "groupd by  SBQQ__Product__c ";
        ignore      = $true

    } )



$packageHash.add("sbqq__quoteline__c.seat", 
    @{fields        =
        " 
        SBQQ__PriorQuantity__c,  SBQQ__EffectiveQuantity__c,  SBQQ__Renewal__c,SBQQ__Existing__c,SBQQ__Product__c ,SBQQ__NetTotal__c,Annual_Recurring_Revenue__c,SBQQ__Product__r.Name,Id   ,SBQQ__Quote__r.Name,SBQQ__Optional__c
    
";
        importOrder = "1";
        where       = " where  SBQQ__Quote__c = 'a6GDo000000H2qjMAC'  " 
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by createdDate desc  limit 50000  ";
        ignore      = $true

    } )


    $packageHash.add("sbqq__quoteline__c.subTotls", 
    @{fields        =
        " 
        SBQQ__Quote__c ,
    sum(SBQQ__NetTotal__c) netTotal,
    sum(Annual_Recurring_Revenue__c	) Annual_Recurring_Revenue__c	

    
";
        importOrder = "1";
        where       = " where  SBQQ__Quote__c = 'a6GDo000000H2qjMAC'  " 
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = " Group by SBQQ__Quote__c ";
     ignore      = $true

    } )


$packageHash.add("SBQQ__Subscription__c.seat11", 
    @{fields        =
        " 
    Id,SBQQ__Product__c ,SBQQ__Product__r.Name  ,SBQQ__Contract__c,SBQQ__Contract__r.Name,SBQQ__Contract__r.ContractNumber
  ";
        importOrder = "1";
        where       = " where SBQQ__Product__c  in ( '01tDo000000UZLdIAO','01tDo000000UZQUIA4')  " 
        # " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by createdDate desc  limit 50000  ";
        ignore      = $true

    } )


    $packageHash.add("Subscription_Total__c.sysupdate1", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
        where       = "  where Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by createdDate desc    ";
       ignore      = $true

    } )



$packageHash.add("SBQQ__Subscription__c.sysupdate1", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
        where       = " where Subscription_Total__c != null and " +
        " Subscription_Total__r.Sys_Needs_Update__c = true "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by createdDate desc  limit 50000  ";
      ignore      = $true

    } )


$packageHash.add("SBQQ__Subscription__c.revisions", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
        where       = " where  SBQQ__RevisedSubscription__c!=null"
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Contract__c desc  limit 50000  ";
        ignore      = $true

    } )

$packageHash.add("SBQQ__Subscription__c.STotals", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
        where       = " where  Count_of_Subscription_Total__c = 0 "
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Contract__c desc  limit 50000  ";
        ignore      = $true

    } )

$packageHash.add("SBQQ__Subscription__c.bad", 
    @{fields        =
        " 
    Id  
    
";
        importOrder = "1";
        where       = " where  SBQQ__RequiredById__c != null  " +
        " and Parent_Subscription__c = null " +
        " and z_Bad_RequiredBy__c = null "   
        #    " And  SBQQ__Contract__c  = '800DI0000004xuWYAQ'  ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__ContractNumber__c   limit 2000  ";
        ignore      = $true

    } )

  
$packageHash.add("Contract.Group", 
    @{fields        =
        " 
    Id ,EndDate,CreatedDate
    
";
        importOrder = "1";
        where       = " where CustomerSignedId != null " 
        # " And SBQQ__Order__r.Type != null ";
        externalId  = "Id";
        orderBy     = "order by CreatedDate desc    ";
        ignore      = $true

    } )



$packageHash.add("Contract", 
    @{fields        =
        " 
        Id 
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Order__c !=null and SBQQ__Order__r.contract__C = null " +
        " And SBQQ__Order__r.Type != null ";
        externalId  = "Id";
        orderBy     = "order by SBQQ__Order__c    ";
        ignore      = $true
 
    } )



$packageHash.add("Order", 
    @{fields        =
        " 
        Id 
        
    ";
        importOrder = "1";
        where       = " where SBQQ__Quote__c !=null and OpportunityId != null  " +
        "  and Opportunity.iswon = true ";
        externalId  = "Id";
        orderBy     = "order by LastmodifiedDate desc   limit 100 ";
        ignore      = $true
 
    } )



$packageHash.add("Opportunity", 
    @{fields        =
        " 
        Id 
        
    ";
        importOrder = "1";
        where       = " where Pricebook2Id = null and type = 'renewal' " +
        " and isclosed= false and SBQQ__RenewedContract__c != null  ";
        externalId  = "Id";
        orderBy     = "order by Name  limit 100  ";
        ignore      = $true
 
    } )
 


return $packageHash
 

