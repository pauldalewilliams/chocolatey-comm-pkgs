$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.6/installers/racket-8.6-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.6/installers/racket-8.6-x86_64-win32-cs.exe'
	checksum = '4c68bcc6028853f24a346f445de2d9500b9dbcefe2ee1c52ab014409debc20fb'
	checksum64 = '20a8a6ce8178e00b1f0e4760844d71fcdafafde3f42ec09044e1d1e24912b4c9'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
