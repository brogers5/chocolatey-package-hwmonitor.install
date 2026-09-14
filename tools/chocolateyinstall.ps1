$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  softwareName   = 'CPUID HWMonitor *'
  url            = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.68.exe'
  checksum       = 'a1c31c2d18df4bb98dd512ae101977bfe2c13193d68bea48c7ef6e62f245ce35'
  checksumType   = 'sha256'
  silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).Install.log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
