﻿param($p1)

if (!$p1){
    Write-Output "Ping Sweeper By mHiluxS"
    Write-Output "Exemplo de Uso .\script.ps1 192.168.0"

}else{
    foreach ($ip in 1..254){
    try{
        $resp = ping -n 1 -w 1 "$p1.$ip" | Select-String "bytes=32"
        $resp.Line.split(' ')[2] -replace ":",""

}catch{}
}}
