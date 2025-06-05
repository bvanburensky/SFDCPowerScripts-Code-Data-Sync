 
$packageHash = @{}

# after options are mported 
 
 
#new products
$packageHash.add("Product2.Updates", 
  @{
    ignore = $false ;
    suffix      = "x1" ;
    importOrder = "2";
    #where       = " where External_id__c in ('EX-00000002','EXasd05') ";
    fields        =
        " id
        Name ,
        External_id__c
     ";
   } )

    $packageHash.add("PriceBookEntry", 
    @{
      ignore = $true ;
      suffix      = "x1" ;
      importOrder = "2";

   #   where       = " where External_id__c in ('EX-00000002','EXasd05') ";
      fields        =
          "  
    Id,
    IsActive,
    Name,
    Pricebook2Id,
    Product2Id,
 
    ";
   } )

return $packageHash
 

