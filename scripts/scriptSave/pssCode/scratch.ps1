asaa
<#
sf org create scratch -h
sf org get snapshot -s revSnap  --api-version 63
sf org create snapshot -n revSnap -o bvbTest10
sf org resume scratch -i  
sf org open      
sf org create scratch -f config/project-scratch-def.json -y 30  --json --async
sf auth device login --set-default-dev-hub --alias menorahDevHub 
-api-version API-VERSION

sf org create user --set-alias qa-user --target-org my-scratch

sf org:login:web --alias bvbtest15 --instance-url  https://site-nosoftware-3571-dev-ed.scratch.my.salesforce.com  --set-default

asda
sf org create scratch -h
sf config list
sf project deploy preview --target-org bvb01


sf org create user --set-alias qa-user --target-org my-scratchhttps://site-nosoftware-3571-dev-ed.scratch.my.salesforce-setup.com/secur/logout.jsp

sf org login device --instance-url https://customization-energy-5444-dev-ed.scratch.my.salesforce.com --alias bvbtest14

sf org login access-token --instance-url https://customization-energy-5444-dev-ed.scratch.my.salesforce.com -a bvbtest14 -s

 sf config list
sf config unset org-api-version --global
sf config set target-org bvbtest19 
sf config set org-api-version=62.0  --Global
sf config list



#>