
<# 
Delete unused fields
Not part of the deploy but this is the only way i figured out to do it with sfdx 
 testing
 #sfdx force:source:retrieve -m CustomField:Contract.CPOStatus__c -u sfcpqdev2
 #sfdx force:source:deploy -m CustomField:Contract.CPOStatus__c -u sfcpqdev
 #sfdx force:source:delete --sourcepath force-app\main\default\objects\Contract\fields\CPOStatus__c.field-meta.xml --noprompt -u sfcpqdev --loglevel trace 

#>

sfdx force:source:delete --sourcepath force-app\main\default\objects\Contract\fields\CPOStatus__c.field-meta.xml --noprompt -u sfcpqdev --loglevel trace 

 