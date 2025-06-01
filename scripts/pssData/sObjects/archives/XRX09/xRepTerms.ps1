 
$aReplace = @()


# $aReplace += @{from = "'NET30'"; to = "'Due on receipt'"; }
#$aReplace += @{from = "'a6ADo000000snZpMAI'"; to = "'a6ADo000000snZqMAI'"; }
#$aReplace += @{from = "',0'"; to = "',1'"; }
#$aReplace += @{from = "'800Do000000xgg4IAA'"; to = "'800Do000000xgfQIAQ'"; }
#$aReplace += @{from = "'xrx_Billing_Shipping_Email__c'"; to = "'Email_Billing_Shipping_1__c'"; }
$aReplace += @{from = "'Proposal'"; to = "'Sales Complete'"; }
#$aReplace += @{from = "'Negotiation - IMS'"; to = "'Proposal'"; }
#$aReplace += @{from = "'Trial/Demo'"; to = "'Solution/Value'"; }
#$aReplace += @{from = "'Verbal Acceptance'"; to = "'Proposal'"; }
#$aReplace += @{from = "'Contract Review'"; to = "'Sales Complete'"; }


return $aReplace
 

