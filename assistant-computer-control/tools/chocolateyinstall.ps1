$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://assistantcomputercontrol.com/versions/install.php?v=hotfix/1.4.1&latest=true'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'assistantcomputercontrol*'
  checksum      = '368ED017C7454DE651DA7ED332676C42616852C8'
  checksumType  = 'sha1'
  validExitCodes= @(0, 5)
  silentArgs   = '/q' # Advanced Installer
}

Install-ChocolateyPackage @packageArgs