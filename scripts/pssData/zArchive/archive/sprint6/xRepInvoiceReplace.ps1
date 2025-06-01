 
$aReplace = @()


$aReplace += @{from = "'Id,'"; to = "'Record_Id_Source__c,'"; }
$aReplace += @{from = "'Invoice_Amount_Due__c'"; to = "'Object_Source__c,Action__c,Is_Integration__c'"; }
$aReplace += @{from = "',0'"; to = "',Account,sync invoice ns,true'"; }

return $aReplace
 

