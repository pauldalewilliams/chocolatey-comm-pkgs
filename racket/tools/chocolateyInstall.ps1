$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.14/installers/racket-8.14-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.14/installers/racket-8.14-x86_64-win32-cs.exe'
	checksum = 'fc1659023f9898232ce46ce3abda94517dea3b8df436e9aff0936d841d024650'
	checksum64 = 'f34a893c0560d2b68255b15691c2c12115ee6c0975bd392dc2fc43ddb130d26f'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
