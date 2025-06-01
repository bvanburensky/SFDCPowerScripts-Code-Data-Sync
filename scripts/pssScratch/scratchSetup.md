
## because I always forgeet how to do it



0 set hub alias 
   sf config set target-org master

1. set properties in scratch congig. 
    project-scratch-def.json
    new org name and user name    
    "orgName": "roxTest03",
    "adminEmail": "roxman@roxdogs.com",
    "username": "roxTest03@roxdogs.com"


2. create your org
  sf org create scratch -f config/project-scratch-def-cpq.json -y 30   --json --async -v master
  sf org resume scratch -i  2SRaj000000GkenGAC
 

3.  sf org list auth 
   -- restart vscode helps too
  ## to see generated id and url

4. login via org  browser
    Salesforce Toolkit extension

5. set new to default 
 sf config set target-org bvbtest26

6. set a password
  sf org generate password -o bvbtest26

 ## sf org login device --instance-url   roxTest@roxs.com --alias roxTest03

7.  login with generated new password and reset 



sf alias list
sf alias set roxTest03  roxTest@roxs.com 
sf alias set


 