$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.16/installers/racket-8.16-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.16/installers/racket-8.16-x86_64-win32-cs.exe'
	checksum = '6c479ab7500483ba0ef6512ed44da4496413d4846212fbca7271eae8807554f2'
	checksum64 = '5d7523211a6c9cbe116e04f8de1d6e50252e9b263220c2bd92b602c08eaa36cd'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
