
function identifacionusuarios {

    $usuariosvalidos = @(
        "Hugo"
    )

    $eleccionusuario = Read-Host ("Introduzca el usuario valido ")

    if ($usuariosvalidos -contains $eleccionusuario) {
        write-Host ("El usuario esta en el sistema") -ForeGroundColor Green
    }

    else {
        write-Host ("El usuario no esta en el sistema") -ForeGroundColor Yellow
        exit
    }


}


function menu {
    Clear-Host
    $opcionmenu = 0 
    while ($opcionmenu -ne 10) {
    write-Host ("Opciones del menu")
    write-Host ("1.PingDireccionLoopback")
    write-Host ("2.Ipconfing")
    write-Host ("3.Ipconfig/all")
    write-Host ("4.Tracert")
    write-Host ("5.ping8.8.8.8")
    write-Host ("6.pingoogle.com")
    write-Host ("7.ipconfigrelease")
    write-Host ("8.ipconfigrenew")
    write-Host ("9.ipconfigflushdns")
    write-Host ("10.Salir")
       $opcionmenu = Read-Host ("Introduzca el numero del menu")
  
    switch ($opcionmenu) {
        1 {PingDireccionLoopback}
        2 {Ipconfing}
        3 {Ipconfig/all}
        4 {Tracert }
        5 {ping8.8.8.8}
        6 {pingoogle}
        7 {ipconfigrelease}
        8 {ipconfigrenew}
        9 {ipconfigflushdns}
        10 {Salir}
        Default {write-Host ("Opcion no valida")}
        }

        
    }
    
    }
        
    function PingDireccionLoopback {
        $PingDireccionLoopbacksino = Read-Host ("El usuario  $eleccionusuario  desea hacer ping a la direccion de loopback si o no ")
            if ( $PingDireccionLoopbacksino -eq "Si") {
                write-Host ("Ok vamos a proceder a la prueba de conectividad ") -ForeGroundColor Green
                ping 127.0.0.1
            }
            else {
                write-Host ("El usuario  $eleccionusuario no desea hacer la prueba de conectividad ") -ForeGroundColor Red
            }

    }

    function Ipconfing {

    $sino = Read-Host ("El usuario $eleccionusuario desea ejecutar ipconfig si o no ")

    if ($sino -eq "Si") {
        write-Host ("Mostrando IP") -ForeGroundColor Green
        ipconfig
    }
    else {
        write-Host ("No se ejecuta ipconfig") -ForeGroundColor Red
    }

}


function Ipconfig/all {

    $sino = Read-Host ("El usuario $eleccionusuario desea ejecutar ipconfig /all si o no ")

    if ($sino -eq "Si") {
        write-Host ("Mostrando informacion completa") -ForeGroundColor Green
        ipconfig /all
    }
    else {
        write-Host ("No se ejecuta") -ForeGroundColor Red
    }

}


function Tracert {

    $sino = Read-Host ("El usuario $eleccionusuario desea hacer tracert si o no ")

    if ($sino -eq "Si") {

        $direccion = read-Host ("Introduzca direccion")
        tracert $direccion

    }
    else {
        write-Host ("No se realiza tracert") -ForeGroundColor Red
    }

}


function ping8.8.8.8 {

    $sino = Read-Host ("El usuario desea hacer ping 8.8.8.8 si o no ")

    if ($sino -eq "Si") {

        ping 8.8.8.8

    }
    else {
        write-Host ("No se realiza ping") -ForeGroundColor Red
    }

}


function pingoogle {

    $sino = Read-Host ("El usuario desea hacer ping google.com si o no ")

    if ($sino -eq "Si") {

        ping google.com

    }
    else {
        write-Host ("No se realiza ping") -ForeGroundColor Red
    }

}


function ipconfigrelease {

    $sino = Read-Host ("Desea liberar la IP si o no ")

    if ($sino -eq "Si") {
        ipconfig /release
    }
    else {
        write-Host ("Cancelado") -ForeGroundColor Red
    }

}


function ipconfigrenew {

    $sino = Read-Host ("Desea renovar la IP si o no ")

    if ($sino -eq "Si") {
        ipconfig /renew
    }
    else {
        write-Host ("Cancelado") -ForeGroundColor Red
    }

}


function ipconfigflushdns {

    $sino = Read-Host ("Desea limpiar DNS si o no ")

    if ($sino -eq "Si") {
        ipconfig /flushdns
    }
    else {
        write-Host ("Cancelado") -ForeGroundColor Red
    }

}

function Salir {
$salirsino = Read-Host ("El usuario desea salir del script si o no ")
       if ($salirsino -eq "Si") {
       write-Host ("El usuario desea permanecer en el script")
  
       }

       else {
       write-Host ("Ok el usuario se quiere salir del script")
       exit
       
       }


}

    
  identifacionusuarios
  menu  

