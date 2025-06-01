 
$packageHash = @{}


$packageHash.add("Order.update", 
@{fields        =
    " 
   OrderNumber,Verified_NS_Sales_Order_Id__c
";
    importOrder = "1";
    where       = " where  Verified_NS_Sales_Order_Id__c != null " +
                  "   ";
    externalId  = "OrderNumber";
    orderBy     = "order by createdDate      "
  #  ignoreDeploy = $true;
    ignore      = $true

} )  


$packageHash.add("Order.bad", 
@{fields        =
    " 
   OrderNumber,Verified_NS_Sales_Order_Id__c,
";
    importOrder = "1";
    where       = " where  Verified_NS_Sales_Order_Id__c != null " +
                  "   ";
    externalId  = "OrderNumber";
    orderBy     = "order by createdDate      "
  #  ignoreDeploy = $true;
   ignore      = $true

} )  

#IF( OR(ISBLANK( Fulfillment_Case__c ),  Product2.Provisioning_Queue__c = True) && ISBLANK( Custom_Billing_Date__c ) , 
#    IF(ISBLANK(Billing_Schedule_Name_Twin__c), SBQQ__QuoteLine__r.Billing_Schedule_Name_Twin__c, Billing_Schedule_Name_Twin__c),

$packageHash.add("OrderItem.BillSched", 
@{fields        =
    "  
  id,Billing_Schedule_Name__c,order.ActivatedDate,order.OrderNumber,createdDate,Do_Not_Integrate_to_NS__c,
  Billing_Schedule_Name_Twin__c,order.sbqq__quote__r.SBQQ__BillingFrequency__c,  Fulfillment_Case__c,Product2.Provisioning_Queue__c,Product2.Name,"+
  " Custom_Billing_Date__c,"+
  "order.CreatedBy.UserName "+
  "  
"; 
    importOrder = "1";
    where       = " where  Billing_Schedule_Name__c = null  and order.opportunityid  != null and Do_Not_Integrate_to_NS__c=false" +
                  "   ";
    externalId  = "OrderNumber";
    orderBy     = "order by Order.OrderNumber desc     "
  #  ignoreDeploy = $true;
  # ignore      = $true

} )  

$packageHash.add("Order.Verified", 
@{fields        =
    " 
   OrderNumber,Verified_NS_Sales_Order_Id__c
";
    importOrder = "1";
    where       = " where  name != null " +
                  "   ";
    externalId  = "OrderNumber";
    orderBy     = "order by createdDate   limit 10   "
  #  ignoreDeploy = $true;
  ignore      = $true

} )  

return $packageHash
 

