$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://postimages.org/setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'postimage*'
  checksum      = '34D296E397FBFAAE31BACBDE8ADFFCF6018CCCBB'
  checksumType  = 'sha1'
  validExitCodes= @(0, 5)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
}

Install-ChocolateyPackage @packageArgs