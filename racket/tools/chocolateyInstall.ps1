$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/6.9/installers/racket-6.9-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/6.9/installers/racket-6.9-x86_64-win32.exe'
	checksum = 'bcb720d7165fec5f1d34a8c39242f3d9b2dd9aab'
	checksum64 = '524466608d889f7b647c20541125d6e36e16e7e5'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs