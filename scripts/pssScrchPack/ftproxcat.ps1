# Define FTP server details
Write-Output start
$ftpServer = "ftp.rox-dog.com"
$username = "brucevbftpmenorah@menorah-intc.com"
$password = "Brucevb1gd@"
#$username = "brucevbmenorah@menorah-intc.com"
$remoteDirectory = "/"
#$client = Connect-FTP -Server $ftpServer  -Verbose -Username $username -Password $password 
$webClient = New-Object System.Net.WebClient
$webClient.Credentials = New-Object System.Net.NetworkCredential($username, $password)
Write-Output connecting to ftp server

$uri = New-Object System.Uri("$ftpServer$remoteDirectory")
Write-Output get directory listing
try {
 $directoryListing = $webClient.DownloadString($uri)
 Write-Output "Directory Listing:"
 Write-Output $directoryListing
} catch {
 Write-Error "Failed to connect to FTP server or retrieve directory listing. Error: $_"
}

#$List = Get-FTPList -Client $Client
#$List | Format-Table


# Create FTP request object
#$ftpRequest = [System.Net.FtpWebRequest]::Create("ftp://$ftpServer/")
#$ftpRequest.Credentials = New-Object System.Net.NetworkCredential($username, $password)
#$ftpRequest.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectory
