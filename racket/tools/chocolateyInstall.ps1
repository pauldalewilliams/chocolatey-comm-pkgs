$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/6.8/installers/racket-6.8-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/6.8/installers/racket-6.8-x86_64-win32.exe'
	checksum = '5b32b6dfddf412c487a58e9c08c689cd2747d981'
	checksum64 = 'f987fa640bbec24ac1ba2a62067d75f011efbc6e'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs