# Install Chocoloatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Install .Net Version Manager (DNVM)
iex ((new-object net.webclient).DownloadString('https://github.com/nurtenkovacheva/DnvmInstall/blob/master/dnvminstall.ps1'))

# Open and Upgrade in Separate Window
start-process "powershell" "dnvm upgrade"


# Install SQL Server Express
# choco install mssql2014express-defaultinstance -y
choco install sqlserverlocaldb -y

# Create Launch-Pad DB
cd .\approot\src\LaunchPad\
dnx ef migrations add IntialDB
dnx ef database update

# Start Launch-Pad
start-process -FilePath "http://localhost:5000"

# Run Web Server
..\..\web.cmd