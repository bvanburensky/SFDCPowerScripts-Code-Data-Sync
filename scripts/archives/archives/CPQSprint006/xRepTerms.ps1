 
$aReplace = @()

$aReplace += @{from = "',Required,Always'"; to = "',#N/A,#N/A'"; }
$aReplace += @{from = "',Allowed,Always'"; to = "',#N/A,#N/A'"; }
return $aReplace
$aReplace += @{from = "'true'"; to = "'false'"; }

$aReplace += @{from = "'EX-000'"; to = "'EX-002'"; }
$aReplace += @{from = "'SBQQ__OptionalSKU__r.'"; to = "''"; }
#$aReplace += @{from = "'EX-001'"; to = "'EX-002'"; }
#$aReplace += @{from = "'"",'"; to = "' - 1x"",'"; }
#$aReplace += @{from = "'Fixed Price'"; to = "'#N/A'"; } 

$aReplace += @{from = "'DCC Geo'"; to = "'01s3i000001AtoAAAS'"; } 

 
$aReplace += @{from = "',id,'"; to = "',Product2Id,'"; } 
$aReplace += @{from = "'Family'"; to = "'Pricebook2Id'"; } 

$aReplace += @{from = "'CurrencyIsoCode'"; to = "'UnitPrice'"; } 
$aReplace += @{from = "'USD'"; to = "'0.0'"; } 

return $aReplace
 

