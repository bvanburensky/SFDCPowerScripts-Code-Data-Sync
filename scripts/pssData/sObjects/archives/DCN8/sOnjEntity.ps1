 
$packageHash = @{}




$packageHash.add("EntityDefinition.Def", 
@{fields        =
    " 
   id,  DurableId,qualifiedApiName,Label,DeveloperName,MasterLabel
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  DurableId ='Setting'  " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by qualifiedApiName limit 100 "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  ignore      = $true

} ) 
 
$packageHash.add("EntityDefinition.addr", 
@{fields        =
    " 
   id,  DurableId,qualifiedApiName,Label,DeveloperName,MasterLabel
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  qualifiedApiName ='SCG_Address__C'  " +
    "   ";
    externalId  = "Id";
    orderBy     = "order by qualifiedApiName limit 100 "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true

} ) 


$packageHash.add("FieldDefinition.Def", 
@{fields        =
    " 
   id  ,DurableId,qualifiedApiName,Label,DeveloperName,MasterLabel
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  EntityDefinitionId = 'User'  and  DurableId ='User.Address'  " +
    "                ";
    externalId  = "Id";
    orderBy     = "order by qualifiedApiName limit 200 "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  ignore      = $true

} ) 


$packageHash.add("FieldDefinition.sfgObj", 
@{fields        =
    " 
   id  ,DataType,DurableId,ControllingFieldDefinitionId,ExtraTypeInfo,qualifiedApiName,Label,DeveloperName,MasterLabel
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  EntityDefinitionId = '01IDo000000gaLm'    " +
    "                ";
    externalId  = "Id";
    orderBy     = "order by qualifiedApiName limit 200 "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
   ignore      = $true

} ) 
$packageHash.add("EntityParticle.sfgObj", 
@{fields        =
    " 
   id  ,DataType,DurableId,ExtraTypeInfo,qualifiedApiName,Label,DeveloperName,MasterLabel
";
    importOrder = "1";
    #where       = " where  breadwinner_ns__ExternalId__c != null   "  +
    where       = " where  DurableId  = '01IDo000000gaLm.00NDo000005v3bh'    " +
    "                ";
    externalId  = "Id";
    orderBy     = "order by qualifiedApiName limit 200 "
   # ignoreDeploy = $true;breadwinner_ns__Salesforce_Account__c != null and  breadwinner_ns__AmountRemaining__c != 0  "
  ignore      = $true

} ) 
 

return $packageHash
 

