# Copyright (c) 2026 Hugo Arco
function identifacionusuarios {

    $usuariosvalidos = @(
        "Hugo"
    )

    # Usamos $global: para que la variable se pueda usar en cualquier otra función
    $global:eleccionusuario = Read-Host ("Introduzca el usuario valido")

    if ($usuariosvalidos -contains $global:eleccionusuario) {
        Write-Host "El usuario está en el sistema" -ForegroundColor Green
    }
    else {
        Write-Host "El usuario no está en el sistema" -ForegroundColor Red
        exit
    }
}

function menu {

    $opcionmenu = 0 
    while ($opcionmenu -ne 10) {
        Write-Host "--- Opciones del menú ---" -ForegroundColor Cyan
        Write-Host "1. Ping Direccion Loopback"
        Write-Host "2. Ipconfig"
        Write-Host "3. Ipconfig/all"
        Write-Host "4. Tracert"
        Write-Host "5. Ping 8.8.8.8"
        Write-Host "6. Ping google.com"
        Write-Host "7. Ipconfig /release"
        Write-Host "8. Ipconfig /renew"
        Write-Host "9. Ipconfig /flushdns"
        Write-Host "10. Salir"
        
        $opcionmenu = Read-Host ("Introduzca el numero del menu")
  
        switch ($opcionmenu) {
            1  { PingDireccionLoopback }
            2  { EjecutarIpconfig }
            3  { EjecutarIpconfigAll }
            4  { EjecutarTracert }
            5  { PingDNSGoogle }
            6  { PingGoogle }
            7  { IpconfigRelease }
            8  { IpconfigRenew }
            9  { IpconfigFlushDNS }
            10 { Salir }
            Default { Write-Host "Opción no válida" -ForegroundColor Red }
        }
    }
}
        
function PingDireccionLoopback {
    $PingDireccionLoopbacksino = Read-Host ("El usuario $global:eleccionusuario desea hacer ping a la direccion de loopback (Si/No)")
    if ($PingDireccionLoopbacksino -eq "Si") {
        Write-Host "Ok, vamos a proceder a la prueba de conectividad..." -ForegroundColor Green
        ping 127.0.0.1
        New-Item -Path "   Ping_Direccion_Loopback.txt." -ItemType File -Force
        write-Host ("Archivo de la prueba creado correctamente") -ForeGroundColor Green   
    }
    else {
        Write-Host "El usuario $global:eleccionusuario no desea hacer la prueba." -ForegroundColor Red
    }
}

function EjecutarIpconfig {
    $sino = Read-Host ("El usuario $global:eleccionusuario desea ejecutar ipconfig (Si/No)")
    if ($sino -eq "Si") {
        Write-Host "Mostrando direccionamiento IP básico..." -ForegroundColor Green
        ipconfig
        New-Item -Path " ipconfing.txt." -ItemType File -Force  
    }
    else {
        Write-Host "No se ejecuta ipconfig" -ForegroundColor Red
    }
}

function EjecutarIpconfigAll {
    $sino = Read-Host ("El usuario $global:eleccionusuario desea ejecutar ipconfig /all (Si/No)")
    if ($sino -eq "Si") {
        Write-Host "Mostrando información de red completa..." -ForegroundColor Green
        ipconfig /all
    New-Item -Path " ipconfing_all.txt." -ItemType File -Force   
    }
    else {
        Write-Host "No se ejecuta ipconfig /all" -ForegroundColor Red
    }
}

function EjecutarTracert {
    $sino = Read-Host ("El usuario $global:eleccionusuario desea hacer tracert (Si/No)")
    if ($sino -eq "Si") {
        $direccion = Read-Host "Introduzca la dirección IP o dominio (ej: 8.8.8.8)"
        Write-Host "Trazando ruta hacia $direccion..." -ForegroundColor Green
        tracert $direccion
         New-Item -Path " tracert.txt." -ItemType File -Force    
    }
    else {
        Write-Host "No se realiza tracert" -ForegroundColor Red
    }
}

function PingDNSGoogle {
    $sino = Read-Host ("¿Desea hacer ping a los servidores DNS de Google 8.8.8.8? (Si/No)")
    if ($sino -eq "Si") {
        ping 8.8.8.8
       New-Item -Path " Ping_DNS_Google.txt." -ItemType File -Force   
    }
    else {
        Write-Host "No se realiza el ping" -ForegroundColor Red
    }
}

function PingGoogle {
    $sino = Read-Host ("¿Desea hacer ping a google.com? (Si/No)")
    if ($sino -eq "Si") {
        ping google.com
        New-Item -Path " Ping_Google.txt." -ItemType File -Force   
    }
    else {
        Write-Host "No se realiza el ping" -ForegroundColor Red
    }
}

function IpconfigRelease {
    $sino = Read-Host ("¿Desea liberar la dirección IP actual? (Si/No)")
    if ($sino -eq "Si") {
        Write-Host "Liberando IP..." -ForegroundColor Yellow
        ipconfig /release
         New-Item -Path " IpconfigRelease.txt." -ItemType File -Force   
    }
    else {
        Write-Host "Operación cancelada" -ForegroundColor Red
    }
}

function IpconfigRenew {
    $sino = Read-Host ("¿Desea solicitar una nueva dirección IP al DHCP? (Si/No)")
    if ($sino -eq "Si") {
        Write-Host "Renovando IP..." -ForegroundColor Yellow
        ipconfig /renew
           New-Item -Path " ipconfig_renew.txt.txt" -ItemType File -Force  
    }
    else {
        Write-Host "Operación cancelada" -ForegroundColor Red
    }
}

function IpconfigFlushDNS {
    $sino = Read-Host ("¿Desea limpiar la caché de resolución de DNS? (Si/No)")
    if ($sino -eq "Si") {
        Write-Host "Vaciando caché DNS..." -ForegroundColor Yellow
        ipconfig /flushdns
      New-Item -Path "Ipconfig_FlushDNS.txt" -ItemType File -Force

    }
    else {
        Write-Host "Operación cancelada" -ForegroundColor Red
    }
}

function Salir {
    $salirsino = Read-Host ("¿Realmente desea salir del script? (Si/No)")
    if ($salirsino -eq "Si") {
        Write-Host "Cerrando el script de diagnóstico de red. ¡Hasta luego, $global:eleccionusuario!" -ForegroundColor Green
        exit
    }
    else {
        Write-Host "Permaneciendo en el menú..." -ForegroundColor Yellow
    }
}

identifacionusuarios
menu
identifacionusuarios
menu
