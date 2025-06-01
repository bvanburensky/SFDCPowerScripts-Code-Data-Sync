 
$packageHash = @{}
 
$packageHash.add("opportunity.Updates", 
  @{
    ignore = $false ;
    suffix      = "x1" ;
    importOrder = "2";
    #where       = " where Unique_ID__c in ('EX-00000002','EXasd05') ";
    fields        =
        "  
        Sales_Order__c,
        Pricebook2.IsActive,
        Pricebook2.Id,
        Pricebook2.Name    ,    
        Name,
        
 
        CloseDate,
        Type,
        StageName,
        IsClosed 
   
 
      
     ";
     orderBy = "order by Sales_Order__c";
     where = "where  CloseDate =  NEXT_N_YEARS:5  AND IsClosed = false "+ 
            " AND HasOpportunityLineItem = false " + 
            " AND SBQQ__PrimaryQuote__c = ''   " + 
            " and Pricebook2id > '' " +
            " and Pricebook2id != '01s2M000008ohpYQAQ'" ;
   } )

 

return $packageHash
 

