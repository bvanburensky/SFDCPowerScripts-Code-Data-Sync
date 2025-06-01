 
$aReplace = @()

$aReplace += @{from = "',External_id_Auto__c'"; to = "',External_id__c'"; }
 
return $aReplace

$aReplace += @{from = "'autothis__c,'"; to = "'unique_id__c,'"; }
$aReplace += @{from = "'casenumber,'"; to = "'unique_id__c,'"; }
$aReplace += @{from = "',Closed'"; to = "',Escalated'"; }
$aReplace += @{from = "'New'"; to = "'Working'"; }
$aReplace += @{from = "'New'"; to = "'Parked'"; }
$aReplace += @{from = "'phone'"; to = "'email'"; }

$aReplace += @{from = "'No'"; to = "'Yes'"; }

$aReplace += @{from = "'Web'"; to = "'Text'"; }
#$aReplace += @{from = "',Performance,'"; to = "',DriveThru,'"; }
$aReplace += @{from = "'Breakdown'"; to = "'Breakdown'"; }
$aReplace += @{from = "'Other'"; to = "'Bad ANews Bees'"; }
$aReplace += @{from = "'Breakdown'"; to = "'Crushed'"; }
$aReplace += @{from = "'Performance'"; to = "'Tin Roof Rusted'"; }

 

return $aReplace
 
<#

Installation
Equipment Complexity
Performance
Breakdown
Equipment Design
Feedback
Tin Roof Rusted
Poor Documentaion
Other

New
Working
Escalated
Closed

Mechanical
Electrical
Electronic
Structural
Other
Water
Crushed

Phone
Email
Web
Peigon
Rock
Text
DriveThru
#>