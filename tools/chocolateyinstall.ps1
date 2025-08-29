$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  softwareName   = 'CPUID HWMonitor *'
  url            = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.59.exe'
  checksum       = 'f1d942d963af1f3f3bde438bbfec68971a6bbeb55f8caa3c4182d10270b3802c'
  checksumType   = 'sha256'
  silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG=`"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).Install.log`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
