$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/6.10/installers/racket-6.10-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/6.10/installers/racket-6.10-x86_64-win32.exe'
	checksum = '73e373c4e63d4f849d4b541a40719c8ffeff3af2'
	checksum64 = '9f41894cc5c8f5139675ba210962e4af8eb28258'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs