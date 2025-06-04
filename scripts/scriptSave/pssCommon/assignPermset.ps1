 
<#
 
 Used to configure your logins to sandboxs and prod 
 The alias are needed in the deploy of code and data such that no ambiguity as to org names. 
 Default vscodeOrg is not used
 
 #>
 Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
 

  $sqol = ''
  $path =  "./scripts/pssCommon/users/userfileProd.csv"
 


    $sqol = "SELECT Id,PermissionSetId,AssigneeId,Assignee.username  from PermissionSetAssignment  "

   
    $sqol = "SELECT  PermissionSetId,Assignee.username  from PermissionSetAssignment  " 
    $sqol += " where PermissionSetId= '0PS3i000001z24kGAA'and Assignee.isactive=true order by Assignee.username"
    sfdx data query -q $sqol -o XRXProd -r csv  >> $path

 

 #>
 
 