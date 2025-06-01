 
$packageHash = @{}

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Opportunity.FU", 
  @{fields        =
      " 
     id,Name,TYpe
   
  "; 
      importOrder = "1";
    #  where       = " " 
     where = " where isClosed=true and  SBQQ__RenewedContract__r.Latest_Amendment_Opportunity_Type__c !='Cancellation' and Loss_Description__c  = 'Cancellation' and lastmodifieddate = Today and  SBQQ__RenewedContract__r.Amendment_Type__c !='Cancellation'  " ; 
     #   where = " where  Renewal_Opp_Current_Stage__c = 'Closed Won'   " + 
     #       " and  SBQQ__RenewalOpportunity__r.CPQ_Order__c != null  "  +
     #       " and  SBQQ__RenewalOpportunity__r.CPQ_Order__r.Status = 'Activated' "
                   
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } ) 


  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Contract.terminate", 
  @{fields        =
      " 
     id
   
  "; 
      importOrder = "1";
    #  where       = " " 
     where = " where Sys_Needs_Update__c  = true and  Renewal_Opp_Current_Stage__c != 'Closed Won' " ; 
     #   where = " where  Renewal_Opp_Current_Stage__c = 'Closed Won'   " + 
     #       " and  SBQQ__RenewalOpportunity__r.CPQ_Order__c != null  "  +
     #       " and  SBQQ__RenewalOpportunity__r.CPQ_Order__r.Status = 'Activated' "
                   
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate     "
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } ) 


  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Contract.setAmnd", 
  @{fields        =
      " 
     id
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where1 = " where   is_Status_Dead__c = false and SBQQ__Order__c != null and SBQQ__AmendmentOwner__c = null"  
                   
          where =            "  where    amendment_type__c='Cancellation' and is_status_dead__c = false";
      externalId  = "Id";
      orderBy     = "order by createdDate desc   "
    #  ignoreDeploy = $true;
  ignore      = $true
  
  } ) 



  #3/31/23 at 11:47 PM
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Contract.recalc", 
  @{fields        =
      " 
     id
   
  "; 
      importOrder = "1";
    #  where       = " " 
   #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
        where = " where  Is_Active__c true " 
                   
          #          "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate desc limit 10  "
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } ) 

 
 
  
 

return $packageHash
 

