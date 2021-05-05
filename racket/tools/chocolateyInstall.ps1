$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.1/installers/racket-8.1-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.1/installers/racket-8.1-x86_64-win32-cs.exe'
	checksum = '3dca322b217c97b539f57f6830916047f26cf4e5'
	checksum64 = '0a803d91dbc9e21459494f4ab8ca0bc6ac45f442'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
