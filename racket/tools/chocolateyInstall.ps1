$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.4/installers/racket-7.4-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.4/installers/racket-7.4-x86_64-win32.exe'
	checksum = '353d21707ca902483e618948c34b3253205fe742'
	checksum64 = 'ef76534d96cfd045e74b2191154a15fffe16b2e7'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
