
<# 
Delete unused fields

 testing
 #sfdx force:source:retrieve -m CustomField:Contract.CPOStatus__c -u sfcpqdev2
 #sfdx force:source:deploy -m CustomField:Contract.CPOStatus__c -u sfcpqdev
 #sfdx force:source:delete --sourcepath force-app\main\default\objects\Contract\fields\CPOStatus__c.field-meta.xml --noprompt -u sfcpqdev --loglevel trace 

#>

80103000000jI3nAAE::CreateContract


sfdx force:data:bulk:delete -u fullqa -s sbqq__recordjob__c -f './scripts/data/delete.csv'

sfdx force:data:bulk:delete -u Sunsetnessdevnew -s sbqq__recordjob__c -f './scripts/pssData/data/org/tassd/SBQQ__LineColumn__c.toDelete.csv'

sfdx force:data:record:get -s SBQQ__LineColumn__c -i a0T2h000002Ct75EAC
 


sfdx force:data:bulk:status -i 75003000002L4VwAAK -b 75103000002oI95AAE

sfdx force:source:delete --sourcepath force-app\main\default\objects\Contract\fields\CPOStatus__c.field-meta.xml --noprompt -u sfcpqdev --loglevel trace 
 