 
$packageHash = @{}



  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Product2.active", 
  @{fields        =
      " 
     id  
  ";
      importOrder = "1";
      where       = " where isactive = true"  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
    ignore      = $true
  
  } )  

  #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
  $packageHash.add("Product2.GEO", 
  @{fields        =
      " 
     id ,Is_Component_Dynamic__c
  ";
      importOrder = "1";
      where       = " where family ='DCC Geo' or Zone_Type__c = 'DCC County'  or Zone_Type__c = 'County' " +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
  #  ignore      = $true
  
  } )  

  #,Name ,Should_Be_Segmented__c,SBQQ__Component__c,,Is_An_Option__c
  $packageHash.add("Product2.Legacy", 
  @{fields        =
      " 
     id ,Is_Component_Dynamic__c
  ";
      importOrder = "1";
      where       = " where name like 'CUSTOM LEGACY PKG%' and  Is_An_Option__c = false"  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
   ignore      = $true
  
  } )  

  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("Product2.x1", 
  @{fields        =
      " 
     id ,Should_Be_Segmented__c
  ";
      importOrder = "1";
      where       = " where name like '1x%' and  Should_Be_Segmented__c = true"  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
     ignore      = $true
  
  } )  
 
  # ,Renewal_Mode__c, Account_Seq_Number__c,Account_Name__c,ContractNumber
  $packageHash.add("SBQQ__Dimension__c.x1", 
  @{fields        =
      " 
     id ,SBQQ__Product__r.name,SBQQ__Product__r.Should_Be_Segmented__c
  ";
      importOrder = "1";
      where       = " where SBQQ__Product__r.name like '1x%' "  +
                    "   ";
      externalId  = "Id";
      orderBy     = "order by createdDate    ";
    #  ignoreDeploy = $true;
      ignore      = $true
  
  } )
  

return $packageHash
 

