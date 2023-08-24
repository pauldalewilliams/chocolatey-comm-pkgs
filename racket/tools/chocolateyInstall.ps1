$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.10/installers/racket-8.10-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.10/installers/racket-8.10-x86_64-win32-cs.exe'
	checksum = '54960e25417ed2b9b556ea0b611a4ea319c0346de59bbe57371f8cc4c962d3c7'
	checksum64 = '95edd19164ac289ef824e7fc6ce42bc7f16ab2a569f621d99c048bce50fef7f5'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
