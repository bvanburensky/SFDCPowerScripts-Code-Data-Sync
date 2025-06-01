
# not part of the deploy scripts
# pull down metadata that is incomplete using standard methods

sf project retrieve start -m CustomObject

 

sf project retrieve start -m CustomObject:Contract 
sf project retrieve start -m CustomObject:OrderItem

sf project retrieve start -m CustomObject:Order
sf project retrieve start -m CustomObject:Account
sf project retrieve start -m CustomObject:Contact
sf project retrieve start -m CustomObject:Opportunity
# sf project retrieve start -m customObject:AV2_Setting__mdt
sf project retrieve start -m customObject:Opportunity
sf project retrieve start -m customObject:OpportunityLineItem
sf project retrieve start -m customObject:Order_IQ_Line__c
sf project retrieve start -m customObject:Account_Service__c  
sf project retrieve start -m Flow
sf project retrieve start -m flexipage
sf project retrieve start -m ApexClass
sf project retrieve start -m ApexTrigger
sf project retrieve start -m layout
sf project retrieve start -m customPermission
sf project retrieve start -m permissionSet

 
 
sf project retrieve start -m approvalProcess 
 
sf project retrieve start -m StandardValueSet

sf project retrieve start -m EmailTemplate

sf project retrieve start -m AuraDefinitionBundle

sf project retrieve start -m GlobalValueset
 
sf project retrieve start -m QuickAction
sf project retrieve start -m ValidationRule
 
 