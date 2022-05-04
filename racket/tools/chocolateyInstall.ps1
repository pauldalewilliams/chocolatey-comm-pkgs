$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.5/installers/racket-8.5-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.5/installers/racket-8.5-x86_64-win32-cs.exe'
	checksum = 'e467c11f7154a49274c765cf8912927b19f5e912c1d2a7a66e4de508a6512b7b'
	checksum64 = '9c8ffce6a41d3b16d0fcc461ccd86e262445591679c4c437378d6c3b9cad8539'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
