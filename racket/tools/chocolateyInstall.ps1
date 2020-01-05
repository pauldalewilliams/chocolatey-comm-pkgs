$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.5/installers/racket-7.5-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.5/installers/racket-7.5-x86_64-win32.exe'
	checksum = 'c323aa007fbc31062d1f6dc3a63e5b5e3ba0b5c9'
	checksum64 = '76c068dff4cf8927da3ec1c8f7bfd50c948de906'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
