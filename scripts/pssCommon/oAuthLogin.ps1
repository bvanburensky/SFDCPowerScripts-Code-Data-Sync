 
<#
 
 Used to configure your logins to sandboxs and prod 
 The alias are needed in the deploy of code and data such that no ambiguity as to org names. 
 Default vscodeOrg is not used
 see C:\Users\your.name\.sfdx\alias.json to clean up any duplicates or junk 
 the default should be your personal sandbox  --setdefaultusername
 #>
 Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass


    sf org login web -r "https:/test.salesforce.com" --alias MIDev
    sf org login web  -r "https:/login.salesforce.com" --alias MIDev 
    sf org login web  -r "https:/login.salesforce.com" --alias PCProd 
     sf org login web  -r "https://site-speed-1475-dev-ed.scratch.my.salesforce.com/" --alias bvbtest20 

$Reauth = $true
if ($Reauth -eq $false) {

   # adjust as needed

    sf org login web -r "https:/test.salesforce.com" --alias XRXFull --set-default
    sf org login web -r "https:/test.salesforce.com" --alias XRXFullIn --set-default


    sf org login web -r "https:/test.salesforce.com" --alias XRXFullBk  
    sf org login web  -r "https:/login.salesforce.com" --alias XRXProd 
 

  
    sf org login web  -r "https:/login.salesforce.com" --alias XRXProdIn 
    sf org login web  -r "https:/login.salesforce.com" --alias XRXProdBk
 
    sf org login web  -r "https:/test.salesforce.com" --alias    
    
 
###  Verify connections 
sf org display -o XRXFull
}
 
bvbtest20@menorah-intc.com

<#
 git config --global user.email bburen@datainnovations.com

 git config --global user.name "bburen"

 #>

 