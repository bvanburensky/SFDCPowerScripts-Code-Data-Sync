 
$aReplace = @()

$aReplace += @{from = "',AZ,'"; to = "',AZ,US'"; }
$aReplace += @{from = "',CA,'"; to = "',CA,US'"; }
$aReplace += @{from = "',CO,'"; to = "',CO,US'"; }
$aReplace += @{from = "',CT,'"; to = "',CT,US'"; }
$aReplace += @{from = "',FL,'"; to = "',FL,US'"; }
$aReplace += @{from = "',GA,'"; to = "',GA,US'"; }
$aReplace += @{from = "',IL,'"; to = "',IL,US'"; }
$aReplace += @{from = "',ID,'"; to = "',ID,US'"; }

$aReplace += @{from = "',KS,'"; to = "',KS,US'"; }
$aReplace += @{from = "',MD,'"; to = "',MD,US'"; }
$aReplace += @{from = "',MI,'"; to = "',MI,US'"; }
$aReplace += @{from = "',MN,'"; to = "',MN,US'"; }
$aReplace += @{from = "',MO,'"; to = "',MO,US'"; }
$aReplace += @{from = "',NJ,'"; to = "',NJ,US'"; }
$aReplace += @{from = "',NY,'"; to = "',NY,US'"; }
$aReplace += @{from = "',OH,'"; to = "',OH,US'"; }
$aReplace += @{from = "',OR,'"; to = "',OR,US'"; }
$aReplace += @{from = "',OK,'"; to = "',OK,US'"; }


$aReplace += @{from = "',SC,'"; to = "',SC,US'"; }
$aReplace += @{from = "',SD,'"; to = "',SD,US'"; }

$aReplace += @{from = "',TN,'"; to = "',AZ,US'"; }
$aReplace += @{from = "',TX,'"; to = "',AZ,US'"; }
$aReplace += @{from = "',WA,'"; to = "',WA,US'"; }
$aReplace += @{from = "',WI,'"; to = "',WI,US'"; }
$aReplace += @{from = "',AE,'"; to = "',AE,US'"; }
$aReplace += @{from = "',WV,'"; to = "',WV,US'"; }
$aReplace += @{from = "',VT,'"; to = "',VT,US'"; }

$aReplace += @{from = "',VIC,'"; to = "',VIC,AU'"; }
$aReplace += @{from = "',VI,'"; to = "',VIC,AU'"; }




$aReplace += @{from = "',UAE,'"; to = "',,AE'"; }


$aReplace += @{from = "',SP,'"; to = "',SP,BR'"; }

 
$aReplace += @{from = "',Iran,'"; to = "',,IR'"; }
$aReplace += @{from = "',Italy,'"; to = "',,IT'"; }
$aReplace += @{from = "',9000,'"; to = "',,BE'"; }
$aReplace += @{from = "',45804-2800,'"; to = "',OH,US'"; }


$aReplace += @{from = "'State_Province__c'"; to = "'Address__StateCode__s'"; }
$aReplace += @{from = "'Country__c'"; to = "'Address__CountryCode__s'"; }

return $aReplace
 

