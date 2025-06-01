 
$packageHash = @{}

$packageHash.add("Order.SBSyncedToSFDC", 
@{fields        =
    " 
   id ,OrderNumber,Name,Account.Name,   Verified_NS_Sales_Order_Id__c, NS_Sales_Order_Id__c,NetSuite_Sales_Order__c

"; 
    importOrder = "1";
  #  where       = " " 
 #    where = " where opportunityid = '0063i00000JpVgXAAV'  " ; 
      where = " where  Verified_NS_Sales_Order_Id__c != null and  NetSuite_Sales_Order__c = null "+
       "and Contract_Status__c = 'Activated'    "  +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate  ";
  #  ignoreDeploy = $true;
  #ignore      = $true 
} ) 
 
 

return $packageHash
