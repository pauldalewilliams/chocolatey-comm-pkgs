$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/6.10.1/installers/racket-6.10.1-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/6.10.1/installers/racket-6.10.1-x86_64-win32.exe'
	checksum = 'd9f39ceac00888072abe4e0b5739bea141a5e073'
	checksum64 = 'af5265d7e80d25d132c0ca72720bf508c9af989a'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs