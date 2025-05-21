$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.17/installers/racket-8.17-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.17/installers/racket-8.17-x86_64-win32-cs.exe'
	checksum = '7461e47e77db138953c3fefe0218f84a0a99c6acfe47ae514c73ad065ac44e36'
	checksum64 = '47dad9100c5da357fb239cbb52c1dab52fbbe2b74911f2c070fa087e31ba8643'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
