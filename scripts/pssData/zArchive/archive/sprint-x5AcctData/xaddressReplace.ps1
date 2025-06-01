 
$aReplace = @()


$aReplace += @{from = "'Street__c'"; to = "'Address__Street__s'"; }
$aReplace += @{from = "'City__c'"; to = "'Address__City__s'"; }
$aReplace += @{from = "'Zip_Postal_Code__c'"; to = "'Address__PostalCode__s'"; }


return $aReplace
 

