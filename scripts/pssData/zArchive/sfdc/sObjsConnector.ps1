 
$packageHash = @{}
$packageHash.add("Connector__c", 
    @{fields        = " 
    Unique_ID__c
    ,Id
    ,Avalara_Product__c
    , ProductName__c
    , Name
    , Connector_Description__c
    , Vibrancy__c ";
        importOrder = "7";
        where       = " Vibrancy__c = 'Launch'" ;
        ignore=$true;

    } )

return $packageHash 

