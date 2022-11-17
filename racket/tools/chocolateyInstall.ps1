$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.7/installers/racket-8.7-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.7/installers/racket-8.7-x86_64-win32-cs.exe'
	checksum = '84a8dff78eb81bc2788101047276fa9e1177ad2dd0aa731e2985688276d13aeb'
	checksum64 = '70b031bdaf7f7d8512a639459357d7fa1c77a4dc4b939e8b1d6d211f6d0e5f3b'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
