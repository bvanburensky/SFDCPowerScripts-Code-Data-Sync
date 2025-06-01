 
$aReplace = @()


$aReplace += @{from = "'Activated'"; to = "'Terminated'"; }
$aReplace += @{from = "'Draft'"; to = "'Terminated'"; } 
$aReplace += @{from = "'Presented'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Signing in Progress'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Payment Pending'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Signing in Progress'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Pending Activation'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Payment Received'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Declined'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Data Error'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Expired'"; to = "'Terminated'"; }  
$aReplace += @{from = "'Pending'"; to = "'Terminated'"; }  


return $aReplace
 

