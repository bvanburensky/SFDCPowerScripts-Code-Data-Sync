 
$packageHash = @{}

 


$packageHash.add("Order.SetOrderx", 
@{fields        =
    " 
   id,SBQQ__Contracted__c
 
"; 
    importOrder = "1";
  #  where       = " " 
 #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
      where = " where  Contract__c = null and SBQQ__Contracted__c = true  and Opportunity_TYpe__c = 'Cancellation'  "  +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate limit 1   "
  #  ignoreDeploy = $true;
   ignore      = $true

} ) 



$packageHash.add("breadwinner_ns__BW_Sales_Order__c.xx", 
@{fields        =
    " 
   id ,breadwinner_ns__InternalId__c,createdDate
 
"; 
    importOrder = "1";
  #  where       = " " 
 #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; a
     where1 = " where CPQ_Order__c = null and breadwinner_ns__Salesforce_Account__c !=null and  ncf_body_sf_contract_no__c != null " 
     where = " where ncf_body_sf_contract_no__c != null and  breadwinner_ns__Salesforce_Account__c =null "                  
    # where = " where  breadwinner_ns__InternalId__c = '4081154'"                          #          "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate     "
  #  ignoreDeploy = $true;
     ignore      = $true

} ) 

$packageHash.add("Order.xx", 
@{fields        =
    " 
   id 
 
"; 
    importOrder = "1";
  #  where       = " " 
 #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; a
      where = " where createdDate = TODAY and ActivatedById = null  " 
                 
        #          "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate     "
  #  ignoreDeploy = $true;
    ignore      = $true

} ) 

$packageHash.add("Order.SetOrder", 
@{fields        =
    " 
   id 
 
"; 
    importOrder = "1";
  #  where       = " " 
 #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; a
      where = " where type !='Amendment'   and  NetSuite_Sales_Order__c = null and Account.Netsuite_Company__c != null  " 
                 
        #          "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate     "
  #  ignoreDeploy = $true;
    ignore      = $true

} ) 
  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SBQQ__Quote__c.recalc", 
  @{fields        =
      " 
     id,sys_Force_Recalculation__c
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where = " where SBQQ__TargetCustomerAmount__c> 0 and SBQQ__Uncalculated__c = true  and sys_Force_Recalculation__c = true" 
                   
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc limit 10  "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } ) 


  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SBQQ__Quote__c.xxx", 
  @{fields        =
      " 
     id,SBQQ__TargetCustomerAmount__c,sys_Force_Recalculation__c
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where = " where SBQQ__TargetCustomerAmount__c > 0 " 
                   
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc   "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } )  


  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("OpportunityHistory.hist", 
  @{fields        =
      " 
     id ,OpportunityId,createdbyid,createdDate,PrevAmount,Amount,StageName
  ";
      importOrder = "1";
    #  where       = " " 
       where = " where opportunityid = '006Do000002RQcvIAG'  " ;
      # where = " where createdDate > 2023-04-01T04:17:00Z and  createdDate < 2023-04-01T04:20:00Z  " +        " and createdbyid = '0053i000002Vx95AAC' " ;        
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc    ";
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  

    # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
    $packageHash.add("OpportunityFieldHistory.hist2", 
    @{fields        =
        " 
      CreatedById, CreatedDate, DataType, Field, Id, IsDeleted, NewValue, OldValue, OpportunityId
     
    "; 
        importOrder = "1";
      #  where       = " " 
       where = " where opportunityid = '006Do000002RQcvIAG'  " ; 
  
        externalId  = "Id";
        orderBy     = "order by OpportunityId,createdDate desc   "
      #  ignoreDeploy = $true;
        ignore      = $true
    
    } )  
  
  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("OpportunityFieldHistory.toQuote", 
  @{fields        =
      " 
     Opportunity.SBQQ__PrimaryQuote__c,OldValue
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where = " where createdDate > 2023-04-01T04:17:00Z and  createdDate < 2023-04-01T05:00:00Z  " +
                   " and createdbyid = '0053i000002Vx95AAC' and  Opportunity.Isclosed = false and  Opportunity.SBQQ__PrimaryQuote__c != null and DataType ='Currency'   " ; 
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by OpportunityId,createdDate desc   "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  

  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("OpportunityFieldHistory.hist", 
  @{fields        =
      " 
    CreatedById, CreatedDate, DataType, Field, Id, IsDeleted, NewValue, OldValue, OpportunityId,Opportunity.isclosed,Opportunity.name, Opportunity.SBQQ__PrimaryQuote__c
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where = " where createdDate > 2023-04-01T04:17:00Z and  createdDate < 2023-04-01T05:00:00Z  " +
                   " and createdbyid = '0053i000002Vx95AAC' and  Opportunity.SBQQ__PrimaryQuote__c != null and DataType ='Currency'" ; 
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by OpportunityId,createdDate desc   "
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SBQQ__Subscription__c.setContract", 
  @{fields        =
      " 
     id,SBQQ__COntract__C 
  ";
      importOrder = "1";
      where       = " where SBQQ__Contract__C = '800Do000000xgg4IAA'    " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
       ignore      = $true
  
  } )  

  $packageHash.add("OrderItem.setContract", 
  @{fields        =
      " 
     id,SBQQ__Contract__c 
  ";
      importOrder = "1";
      where       = " where Order.Id  = '802Do000000N2v6IAC'    " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } )  
 
 
 

return $packageHash
