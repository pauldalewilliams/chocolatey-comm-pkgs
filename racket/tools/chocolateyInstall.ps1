$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url64bit = 'https://download.racket-lang.org/releases/8.18/installers/racket-8.18-x86_64-win32-cs.exe'
	checksum64 = '93512374a4f0b029c4cc46520ddf258a744ccf86e92c0d59eb9ea1813f868610'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
