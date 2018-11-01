$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.1/installers/racket-7.1-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.1/installers/racket-7.1-x86_64-win32.exe'
	checksum = '4ba282fd51de10e0a9eec3f4c7c2badd80fbe71b'
	checksum64 = '42b247b65421d8012b8c39a1db15857218c4296a'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
