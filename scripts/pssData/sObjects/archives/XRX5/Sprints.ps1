 
$packageHash = @{}


$packageHash.add("xrx_Stabilization_Issue__c.SetBacklog", 
@{fields        =
    " 
   id,Sprint__c,Effort__c
";
    importOrder = "1";
    where       = " where  name != null " +
                  "   ";
    externalId  = "Id";
    orderBy     = "order by createdDate      "
  #  ignoreDeploy = $true;
    ignore      = $true

} )  

return $packageHash
 

