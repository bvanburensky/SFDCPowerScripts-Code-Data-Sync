 
$aReplace = @()


$aReplace += @{from = "'Id,'"; to = "'Record_Id_Source__c,'"; }
$aReplace += @{from = "'Netsuite_Account_Number__c'"; to = "'Object_Source__c'"; }
$aReplace += @{from = "'Netsuite_Customer_Name__c'"; to = "'Action__c,Is_Integration__c'"; }
$aReplace += @{from = "',,'"; to = "',Account,sync ns account,true'"; }

return $aReplace
 

