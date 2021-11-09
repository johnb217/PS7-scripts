# To install WinSCP, run the following command in the PowerShell prompt in Administrator mode:
#Install-Module -Name WinSCP
 
# Import installed module WinSCP (uses WMF5)
Import-Module WinSCP
 
# Get Credentials with Popup Windows
#$credential = Get-Credential
 
# Or create a PSCredential from given username and password 
$username = "nsroot"                                                                                              # NetScaler username
$password = ConvertTo-SecureString "nsroot" -AsPlainText -Force                                                   # NetScaler password
$credential = New-Object -typename System.Management.Automation.PSCredential -argumentlist $username, $password   # Creating Credentials
$NSHost = "10.1.1.201"                                                                                            # NetScaler Hostname or IP-address
$SshHostKeyFingerprint = "ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"                           # Key for SSH session to NetScaler Host
 
# Create WinSCP session using captured credentials.
$session = New-WinSCPSession -Credential $credential -HostName $NSHost -Protocol Sftp -SshHostKeyFingerprint $SshHostKeyFingerprint
 
# Upload a file to the directory.
Send-WinSCPItem -WinSCPSession $session -Path 'C:\Install\Certificates\RootCA.cer' -Destination '/nsconfig/ssl/RootCA.cer'
 
# Close the session object.
Remove-WinSCPSession -WinSCPSession $session