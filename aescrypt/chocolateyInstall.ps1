

$name = "aescrypt"

$url = 'https://www.aescrypt.com/download/v3/windows/AESCrypt_v309_win32.zip'
$url64 = 'https://www.aescrypt.com/download/v3/windows/AESCrypt_v309_x64.zip'

try {
	$chocTempDir = Join-Path $env:TEMP "chocolatey"
    $tempDir = Join-Path $chocTempDir "$name"
	if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}

	$file = Join-Path $tempDir "$($name).zip"
	
	Get-ChocolateyWebFile "$name" "$file" "$url" "$url64"
	Get-ChocolateyUnzip "$file" "$tempdir" -packageName "$name"

	$msiFile = "$((Get-ChildItem "$tempDir\AESCrypt_v*\AESCrypt.msi")[0].Fullname)"
	
	Install-ChocolateyInstallPackage "$name" 'msi' '/quiet' "$msiFile"
	
	$exeFile = Join-Path $env:ProgramFiles (Join-Path "AESCrypt" "aescrypt.exe")
	
	Remove-BinFile "$name" "$exeFile"
	Generate-BinFile "$name" "$exeFile"
	
	Write-ChocolateySuccess "$name"
} catch {
	Write-ChocolateyFailure "$name" $($_.Exception.Message)
	throw
}
