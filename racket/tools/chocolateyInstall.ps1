$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://mirror.racket-lang.org/installers/6.7/racket-6.7-i386-win32.exe'
	url64bit = 'https://mirror.racket-lang.org/installers/6.7/racket-6.7-x86_64-win32.exe'
	checksum = '2852b0e2aceb6d20b8c9f2b5103cb4ee09ff2b5d'
	checksum64 = '7c95433a4c60c3c07f49e705a1d550dbc2f9fbb1'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs