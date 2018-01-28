$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/6.12/installers/racket-6.12-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/6.12/installers/racket-6.12-x86_64-win32.exe'
	checksum = '98c0c5c5c9511cc0d4319748f6c43109e5997ea8'
	checksum64 = '668cb97c479231e31f34137de85e595c448e9284'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
