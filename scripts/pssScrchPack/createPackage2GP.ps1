 
 



sf package update  -v LWCPlayHub  -p rotcat -n "roxDogs Grid.rl for Salesforce (beta) "
sf package update  -v LWCPlayHub  -p rotcat -d  "roxDogs components for SalesForce"
sf package version create -v LWCPlayHub  -p rotcat -c  -k roxcat  -w 10 --releasenotes-url https://roxdog.net/installation

 


<#
sf package create -n rotcat -r force-app/main  -t Managed -v LWCPlayHub    
sf package version create  -v thDevHub01 -r force-app   -t Unlocked -e  -o
sf package install -k rotcat -p 04tak0000007N6LAAU -o DevHub01

sf package:install:report -i 0Hfaj0000038oM5CAI -o bruce.vanburen@creative-badger-8xmpx9.com

sf package version list -v thDevHub01
#>
 <#
 

# sf package create -h  

 -d, --description=<value>                  Description of the package.
  -e, --no-namespace                         Create the package with no
                                             namespace; available only for
                                             unlocked packages.
  -n, --name=<value>                         (required) Name of the package to
                                             create.
  -o, --error-notification-username=<value>  Active Dev Hub user designated to
                                             receive email notifications for
                                             package errors.
  -r, --path=<value>                         (required) Path to directory that
                                             contains the contents of the
                                             package.
  -t, --package-type=<option>                (required) Type of package.
                                             <options: Managed|Unlocked>
  -v, --target-dev-hub=<value>               (required) Username or alias of the
                                             Dev Hub org. Not required if the
                                             `target-dev-hub` configuration
                                             variable is already set.
      --api-version=<value>                  Override the api version used for
                                             api requests made by this command
      --org-dependent      
 
--------------------------  version 
  -a, --version-name=<value>         Name of the package version to be created;  
                                     overrides the sfdx-project.json value.      
  -b, --branch=<value>               Name of the branch in your source control   
                                     system that the package version is based on.
  -c, --code-coverage                Calculate and store the code coverage       
                                     percentage by running the packaged Apex     
                                     tests included in this package version.     
  -d, --path=<value>                 Path to the directory that contains the     
                                     contents of the package.
  -e, --version-description=<value>  Description of the package version to be    
                                     created; overrides the sfdx-project.json    
                                     value.
  -f, --definition-file=<value>      Path to a definition file similar to scratch
                                     org definition file that contains the list  
                                     of features and org preferences that the    
                                     metadata of the package version depends on. 
  -k, --installation-key=<value>     Installation key for key-protected package. 
                                     (either --installation-key or
                                     --installation-key-bypass is required)      
  -n, --version-number=<value>       Version number of the package version to be 
                                     created; overrides the sfdx-project.json    
                                     value.
  -p, --package=<value>              ID (starts with 0Ho) or alias of the package
                                     to create a version of.
  -t, --tag=<value>                  Package version’s tag.
  -v, --target-dev-hub=<value>       (required) [default:
                                     bruce.vanburen@menorah-intc.com] Username or
                                     alias of the Dev Hub org. Not required if   
                                     the `target-dev-hub` configuration variable 
                                     is already set.
  -w, --wait=<value>                 Number of minutes to wait for the package   
                                     version to be created.
  -x, --installation-key-bypass      Bypass the installation key requirement.    
                                     (either --installation-key or
                                     --installation-key-bypass is required)      
      --api-version=<value>          Override the api version used for api       
                                     requests made by this command
      --async-validation             Return a new package version before
                                     completing package validations.
      --language=<value>             Language for the package.
      --post-install-script=<value>  Name of the post-install script; applies to 
                                     managed packages only.
      --post-install-url=<value>     Post-install instructions URL.
      --releasenotes-url=<value>     Release notes URL.
      --skip-ancestor-check          Overrides ancestry requirements, which      
                                     allows you to specify a package ancestor    
                                     that isn’t the highest released package     
                                     version.
      --skip-validation              Skip validation during package version      
                                     creation; you can’t promote unvalidated     
                                     package versions.
      --uninstall-script=<value>     Uninstall script name; applies to managed   
                                     packages only.
      --verbose                      Display verbose command output.

GLOBAL FLAGS
  --flags-dir=<value>  Import flag values from a directory.
  --json               Format output as json.


USAGE
  $ sf package version COMMAND

TOPICS
  package version create  Commands to list and report package creation requests.

COMMANDS
  package version create           Create a package version in the Dev Hub org.
  package version delete           Delete a package version.
  package version displayancestry  Display the ancestry tree for a 2GP managed
                                   package version.
  package version list             List all package versions in the Dev Hub org.
  package version promote          Promote a package version to released.
  package version report           Retrieve details about a package version in
                                   the Dev Hub org.
  package version update           Update a package version.

 
  $ sf package install -o <value> -p <value> [--json] [--flags-dir
    <value>] [--api-version <value>] [-w <value>] [-k <value>] [-b <value>] [-r] [-a all|package]  
    [-s AllUsers|AdminsOnly] [-t DeprecateOnly|Mixed|Delete]

FLAGS
  -a, --apex-compile=<option>     [default: all] Compile all Apex in the org and package, or only  
                                  Apex in the package; unlocked packages only.
                                  <options: all|package>
  -b, --publish-wait=<value>      Maximum number of minutes to wait for the Subscriber Package     
                                  Version ID to become available in the target org before canceling
                                  the install request.
  -k, --installation-key=<value>  Installation key for key-protected package (default: null).      
  -o, --target-org=<value>        (required) [default: bruce.vanburen@brave-raccoon-d8ejq2.com]    
                                  Username or alias of the target org. Not required if the
                                  `target-org` configuration variable is already set.
  -p, --package=<value>           (required) ID (starts with 04t) or alias of the package version  
                                  to install.
  -r, --no-prompt                 Don't prompt for confirmation.
  -s, --security-type=<option>    [default: AdminsOnly] Security access type for the installed     
                                  package. Available options are AdminsOnly and AllUsers.
                                  <options: AllUsers|AdminsOnly>
  -t, --upgrade-type=<option>     [default: Mixed] Upgrade type for the package installation;      
                                  available only for unlocked packages.
                                  <options: DeprecateOnly|Mixed|Delete>
  -w, --wait=<value>              Number of minutes to wait for installation status.
      --api-version=<value>       Override the api version used for api requests made by this      
                                  command

GLOBAL FLAGS
  --flags-dir=<value>  Import flag values from a directory.
  --json               Format output as json.



sf package delete -p 0Hoak0000000TmnCAE -v LWCPlayHub -n 

USAGE
  $ sf package delete -v <value> -p <value> [--json] [--flags-dir <value>]
    [--api-version <value>] [-n]

FLAGS
  -n, --no-prompt               Don’t prompt before deleting the package.
  -p, --package=<value>         (required) ID (starts with 0Ho) or alias of the package to delete.
  -v, --target-dev-hub=<value>  (required) [default: bruce.vanburen@menorah-intc.com] Username or alias of the Dev    
                                Hub org. Not required if the `target-dev-hub` configuration variable is already       
                                set.
      --api-version=<value>     Override the api version used for api requests made by this command

GLOBAL FLAGS
  --flags-dir=<value>  Import flag values from a directory.
  --json               Format output as json.


 #>