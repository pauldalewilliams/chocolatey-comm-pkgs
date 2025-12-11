$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url64bit = 'https://download.racket-lang.org/releases/9.0/installers/racket-9.0-x86_64-win32-cs.exe'
	checksum64 = '856bf9e82ad588d01fafdbf6002b2fd00137e687b140072506b92a35427851a8'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
