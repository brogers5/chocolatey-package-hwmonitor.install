$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  softwareName   = 'CPUID HWMonitor *'
  url            = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.65.exe'
  checksum       = '14f46de20cbd1d166608f74e5774aeb2c52c59f2dade31c23c28a67cda5b32c9'
  checksumType   = 'sha256'
  silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).Install.log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
