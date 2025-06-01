 
$packageHash = @{}
$packageHash.add("Codex__c.Jurs", 
    @{fields        = " 
    Unique_ID__c 
   , Name 
   , Codex_Country_Code__c 
   , Codex_Jurisdiction_Name__c 
   , Codex_Jurisdiction_Code__c 
   , Jurisdiction_Target__c 
   , RecordTypeId
   , Sequence_Number__c 
    , Codex_Feature_Target__c "  ;
        importOrder = "7";
        where       = " Where RecordTypeName__c = 'Jurisdiction' " 

    } )

$packageHash.add("Codex__c.Forms", 
    @{fields        = "
      Unique_ID__c 
    , Name 
    , Effective_Date__c 
    , Form_Type__c 
    , Obsolete_Date__c 
    , Taxpayer_Type__c 
    , Codex_Country_Code__c 
    , Codex_Jurisdiction_Code__c 
    , Codex_Jurisdiction_Name__c 
    , Codex_Jurisdiction__r.Unique_ID__c 
    , RecordTypeId
    , Form_Code__c 
    , Form_Description__c 
    , Jurisdiction_Has_Forms__c 
    , Jurisdiction_Target__c 
    , Parent_Form__c 
    , Parent_Formx__c 
    , Sequence_Number__c 
    , Taxpayer_Type_Description__c 
    , Codex_Feature_Target__c       ";
        ignore      = $false ;
        importOrder = "8";
        where       = " Where RecordTypeName__c = 'Form'" 
    } )

return $packageHash 

