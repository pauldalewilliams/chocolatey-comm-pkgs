$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.11.1/installers/racket-8.11.1-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.11.1/installers/racket-8.11.1-x86_64-win32-cs.exe'
	checksum = '7324453cecff289c59b36bb5e0db83184b64cbb0427f4213341d6f7d1d3608c4'
	checksum64 = '56a050b029fcc7b43d31e53362deccc9abe7cc8f868a8052e47359cc8b9b16e2'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
