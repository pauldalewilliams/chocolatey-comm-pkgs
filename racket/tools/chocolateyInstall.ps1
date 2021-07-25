$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.2/installers/racket-8.2-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.2/installers/racket-8.2-x86_64-win32-cs.exe'
	checksum = 'a095f87525c9170ea34fa0dfd6fd38250a919668968523a1dd2a911ed08fa962'
	checksum64 = '59dee852f645599aa48f3f455d57bc4dc49d237b19785a4ab2295459cc7cc0bd'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
