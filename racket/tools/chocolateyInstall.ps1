$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.8/installers/racket-8.8-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.8/installers/racket-8.8-x86_64-win32-cs.exe'
	checksum = '10829d184f87605d020182c8ffcff3508beebac2ada33b5fd8f98544b56d261a'
	checksum64 = 'adc4ac4efedc1c5a84baaaaa989ba300de3b65e02979a8bfc366cfefd6d9f767'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
