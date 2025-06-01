 
$packageHash = @{}

$packageHash.add("SCG_Address__c.Incomplete", 
@{fields        =
    "   Id, Account__c, Address_1__c, Address_2__c, Address_3__c, Address_Type__c, 
    Billing_Default__c, Billing__c, Block_Edits__c, City__c, Contact_Email__c, Contact_First_Name__c,
     Contact_Last_Name__c, Contact_Name__c, Contact_Phone__c, Contact__c, Country_Code__c, Country_Name__c, 
     CreatedDate, Created_From_Flow__c, Cutover_Horizon_Addresses_to_Reload__c, 
      Invoice_Delivery_Method__c, Invoice_Name__c, 
     Is_Address_Status__c,  
      Legacy_Horizon_Id__c, Legacy_Horizon_Sub_Id__c, Name, NetSuite_Address_Id__c, OwnerId, Postal_Code__c,
       SCG_Disable_Automation__c, Shipping_Default__c, Shipping__c, State_Code__c, State_Name__c, Street__c 
 
    
";
    importOrder = "1";
    where       =  "  where Account__c != null and NetSuite_Address_Id__c = null and  "+
                    "          (Country_Code__c = null or  Postal_Code__c = null or Address_1__c = null or state_Code__c = null or  City__c = null) ";
    externalId  = "Id";
    orderBy     = "   order by createdDate  "
 
    
  #  ignoreDeploy = $true;
      ignore      = $true

} )  


$packageHash.add("SCG_Address__c.backup", 
@{fields        =
    "    Id,   Account__c, Address_1__c, Address_2__c, Address_3__c, Address_Type__c, 
    Billing_Default__c, Billing__c, Block_Edits__c, City__c, Contact_Email__c, Contact_First_Name__c,
     Contact_Last_Name__c, Contact_Name__c, Contact_Phone__c, Contact__c, Country_Code__c, Country_Name__c, 
     CreatedDate, Created_From_Flow__c, Cutover_Horizon_Addresses_to_Reload__c, 
   Invoice_Delivery_Method__c, Invoice_Name__c, 
     Is_Address_Status__c,  
      Legacy_Horizon_Id__c, Legacy_Horizon_Sub_Id__c, Name, NetSuite_Address_Id__c, OwnerId, Postal_Code__c,
       SCG_Disable_Automation__c, Shipping_Default__c, Shipping__c, State_Code__c, State_Name__c, Street__c 
 
    
";
    importOrder = "1";
    where       =  "  where Account__c != null  ";
    externalId  = "Id";
    orderBy     = "   order by createdDate  "
  #  ignoreDeploy = $true;
      ignore      = $true

} )  
 



$packageHash.add("SCG_Address__c.crap", 
@{fields        =
    "   Id, Account__c, Address_1__c, Address_2__c, Address_3__c, Address_Type__c, 
    Billing_Default__c, Billing__c, Block_Edits__c, City__c, Contact_Email__c, Contact_First_Name__c,
     Contact_Last_Name__c, Contact_Name__c, Contact_Phone__c, Contact__c, Country_Code__c, Country_Name__c, 
     CreatedDate, Created_From_Flow__c, Cutover_Horizon_Addresses_to_Reload__c, 
      Invoice_Delivery_Method__c, Invoice_Name__c, 
     Is_Address_Status__c,  
      Legacy_Horizon_Id__c, Legacy_Horizon_Sub_Id__c, Name, NetSuite_Address_Id__c, OwnerId, Postal_Code__c,
       SCG_Disable_Automation__c, Shipping_Default__c, Shipping__c, State_Code__c, State_Name__c, Street__c 
 
    
";
    importOrder = "1";
    where       =  "  where Account__c = null  ";
    externalId  = "Id";
    orderBy     = "   order by createdDate  "

    
  #  ignoreDeploy = $true;
       ignore      = $true

} )  




return $packageHash
 

