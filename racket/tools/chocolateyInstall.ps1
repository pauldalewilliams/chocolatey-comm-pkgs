$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.9/installers/racket-8.9-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.9/installers/racket-8.9-x86_64-win32-cs.exe'
	checksum = 'ea288a8fa268c8d6c79c982842f8c663a1b46efe38aeda22d0d524ad148a0278'
	checksum64 = 'c78a5295f28d041c799c2463ef5f24c509da283fdaa8521437e7daec47bba139'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
