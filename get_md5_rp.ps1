$time = Get-Date
$string = "377f159b-a908-4245-a2b9-ac9300855722" + "($time)"
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = New-Object -TypeName System.Text.UTF8Encoding
$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($string)))
echo "Time is: " + "($time)"
echo "Hash is: " + "($hash)"