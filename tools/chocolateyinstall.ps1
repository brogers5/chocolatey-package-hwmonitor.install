$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  softwareName   = 'CPUID HWMonitor *'
  url            = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.67.exe'
  checksum       = '8c6799f8ece4ab5846cc8beddcf52bd887a5ae896279652960ef8d943d453473'
  checksumType   = 'sha256'
  silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).Install.log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
