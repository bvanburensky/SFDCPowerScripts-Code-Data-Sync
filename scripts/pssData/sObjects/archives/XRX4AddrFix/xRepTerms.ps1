 
$aReplace = @()

$aReplace += @{from = "'Name'"; to = "'Address_Number__c'"; }


<#
$aReplace += @{from = "',,'"; to = "',US,'"; }

# $aReplace += @{from = "'USA'"; to = "'US'"; }
#$aReplace += @{from = "'a6ADo000000snZpMAI'"; to = "'a6ADo000000snZqMAI'"; }
#$aReplace += @{from = "',0'"; to = "',1'"; }
#$aReplace += @{from = "'800Do000000xgg4IAA'"; to = "'800Do000000xgfQIAQ'"; }
#$aReplace += @{from = "'Street__c'"; to = "'uAddress__Street__s'"; }
#$aReplace += @{from = "'Name'"; to = "'Address_Number__c'"; }

$aReplace += @{from = "'Country_Name__c'"; to = "'Country_Code__c'"; }
$aReplace += @{from = "'State_Name__c'"; to = "'State_Code__c'"; }
$aReplace += @{from = "'United States'"; to = "'US'"; }

$aReplace += @{from = "'Indiana'"; to = "'IN'"; }
$aReplace += @{from = "'Pennsylvania'"; to = "'PA'"; }
$aReplace += @{from = "'Iowa'"; to = "'IA'"; }
$aReplace += @{from = "'ILLINOIS'"; to = "'IL'"; }
$aReplace += @{from = "'Illinois'"; to = "'IL'"; }

$aReplace += @{from = "'New York'"; to = "'NY'"; }
$aReplace += @{from = "'California'"; to = "'CA'"; }
$aReplace += @{from = "'Maine'"; to = "'ME'"; }
$aReplace += @{from = "'Tennessee'"; to = "'TN'"; }
$aReplace += @{from = "'Missouri'"; to = "'MO'"; }
$aReplace += @{from = "'Kentucky'"; to = "'KY'"; }
$aReplace += @{from = "'COLORADO'"; to = "'CO'"; }
$aReplace += @{from = "'WISCONSIN'"; to = "'WI'"; }
$aReplace += @{from = "'FLORIDA'"; to = "'FL'"; }
$aReplace += @{from = "'ARIZONA'"; to = "'AZ'"; }
$aReplace += @{from = "'Idaho'"; to = "'ID'"; }
$aReplace += @{from = "'OHIO'"; to = "'OH'"; }

$aReplace += @{from = "'Kansas'"; to = "'KS'"; }
$aReplace += @{from = "'Louisiana'"; to = "'LA'"; }
$aReplace += @{from = "'Massachusetts'"; to = "'MA'"; }
$aReplace += @{from = "'MINNESOTA'"; to = "'MN'"; }
$aReplace += @{from = "'NEBRASKA'"; to = "'NE'"; }
$aReplace += @{from = "'Nevada'"; to = "'NV'"; }
$aReplace += @{from = "'New Jersey'"; to = "'NJ'"; }

$aReplace += @{from = "'New Mexico'"; to = "'NM'"; }
$aReplace += @{from = "'Texas'"; to = "'TX'"; }
$aReplace += @{from = "'Utah'"; to = "'UT'"; }
$aReplace += @{from = "'Virginia'"; to = "'VA'"; }
$aReplace += @{from = "'Vermont'"; to = "'VT'"; }
$aReplace += @{from = "'CONNECTICUT'"; to = "'CT'"; }
$aReplace += @{from = "'#N/A'"; to = "'CA'"; }
#>

return $aReplace
 

