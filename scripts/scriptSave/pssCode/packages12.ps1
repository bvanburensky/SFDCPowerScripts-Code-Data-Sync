asaa
<#

 
sf package create --name "Expenser App" --package-type Managed 
--path "expenser-main" --target-dev-hub my-hub --error-notification-username me@devhub.org

sf package create -n miComponents -t Unlocked -v miDevHub --path force-app  

sf package list  -v miDevHub 
 



sf config set  target-dev-hub miDevHub  --json
sf config list
sf config unset org-api-version --global
sf config set target-org bvbtest19 
sf config set org-api-version=62.0  --Global
sf config list

 sf lightning dev app -o bvbtest19 -t desktop -n Sales

#>