 
$packageHash = @{}
 
$packageHash.add("PricebookEntry.ProductCode", 
  @{
    ignore = $true ;
    suffix      = "x1" ;
    importOrder = "2";
     where = " where Pricebook2Id in ('01s2M000008ohpYQAQ','s' ) " ; # old
       
   # where = " where Pricebook2Id = '01s230000011pyPAAQ'" ; # New Uat  


    fields        =
        "
        ProductCode,
        UnitPrice,
        Pricebook2.name,

        Pricebook2Id,
        Unique_Id__c,
        Product2Id,

 

        isactive

   
 
      
     ";
     orderBy = "order by ProductCode";
 
     # old

   } )

   
   #PricebookEntry.PBUodate
   $packageHash.add("PricebookEntry.PBUodate", 
  @{
    ignore = $false ;
    suffix      = "x1" ;
    importOrder = "2";
    where = " where Pricebook2Id = '01s2M000008ohpYQAQ'" ; # old
       
   # where = " where Pricebook2Id = '01s230000011pyPAAQ'" ; # New Uat  
   #where = " where Unique_Id__c = '01s2M000008ohpYQAQ-01t2M00000FIPVIQA5'" ; # New Uat  

  
    fields        =
        "
        id,  
        Unique_Id__c,
        Product2Id,
        Pricebook2Id   ,
        UnitPrice,
        name
   
 
      
     ";
     orderBy = "order by Name";
 
     # old



   } )
 

$packageHash.add("PricebookEntry.bk", 
@{
  ignore = $true ;
  suffix      = "x1" ;
  importOrder = "2";
  #where       = " where Unique_ID__c in ('EX-00000002','EXasd05') ";
  fields        =
      "
      Unique_Id__c,
      UnitPrice
   

    
   ";
   orderBy = "order by Name";
   # old
#     where = " where Pricebook2Id = '01s2M000008ohpYQAQ'" ; # old
   where = " where Pricebook2Id = '01s230000011pyPAAQ'" ; # New Uat     
 
 } )

return $packageHash
 

