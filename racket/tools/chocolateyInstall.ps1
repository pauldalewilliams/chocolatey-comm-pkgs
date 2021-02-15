$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.0/installers/racket-8.0-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.0/installers/racket-8.0-x86_64-win32-cs.exe'
	checksum = '97f1a11813dee95a29ea7dbb36d4ee7dd745bcf2'
	checksum64 = 'f6ba1819dddb58e64257057835ebd49f6f702e1a'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
