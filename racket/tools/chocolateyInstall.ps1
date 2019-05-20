$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.3/installers/racket-7.3-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.3/installers/racket-7.3-x86_64-win32.exe'
	checksum = '321c230899ed5fbfb7987c50bf07aacf528dd951'
	checksum64 = 'bf88276b4f708b00ba60b2524386ca09227048d0'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
