################################################################################
##  File:  Install-VCRedist.ps1
##  Desc:  Install Visual C++ Redistributable
################################################################################

$vc2010x86Name = "vcredist_x86.exe"
$vc2010x86URI = "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/${vc2010x86Name}"
$vc2010x64Name = "vcredist_x64.exe"
$vc2010x64URI = "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/${Vc2010x64Name}"
$argumentList = ("/install", "/quiet", "/norestart")

Install-Binary -Url $vc2010x86URI -Name $vc2010x86Name -ArgumentList $argumentList
Install-Binary -Url $vc2010x64URI -Name $vc2010x64Name -ArgumentList $argumentList

Invoke-PesterTests -TestFile "Tools" -TestName "VCRedist"
