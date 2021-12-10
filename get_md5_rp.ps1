$time = Get-Date
$order_nr = Read-Host -Prompt 'Enter the order number'
echo "Order number is: $order_nr"
$string = "($order_nr)" + "($time)"
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = New-Object -TypeName System.Text.UTF8Encoding
$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($string)))
echo "Time is: $time"
echo "Hash is: $hash"