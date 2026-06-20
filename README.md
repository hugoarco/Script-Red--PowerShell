<h1 align = "center" >🌐 Script de Red en PowerShell</h1>

Este es un script interactivo hecho en PowerShell que incluye un menú con varias herramientas básicas de red. Está pensado para facilitar tareas de diagnóstico y administración de red desde la consola de Windows.

Es un proyecto sencillo pero muy útil para aprender y practicar comandos de red en PowerShell.

<br><br>

⚙️ ¿Qué hace este script?

El script te muestra un menú donde puedes elegir diferentes acciones relacionadas con la red, como comprobar conexión, ver configuración o liberar IP.

<br><br>
<br><br>
🧰 Funciones disponibles

Estas son las opciones que puedes usar dentro del script:

🔁 Prueba de loopback
Comprueba la conectividad local con: ping 127.0.0.1
<br><br>

🌐 Configuración básica de red
Muestra la configuración de red con: ipconfig
<br><br>

📡 Configuración completa de red
Muestra información detallada con: ipconfig /all
<br><br>
🧭 Rastreo de ruta
Permite ver la ruta hacia una IP o dominio con: tracert
<br><br>
🟢 Ping a Google DNS
Comprueba conexión con: ping 8.8.8.8
<br><br>
🌍 Ping a Google
Comprueba conectividad a internet con: ping google.com
<br><br>
⬇️ Liberar dirección IP
Ejecuta: ipconfig /release
<br><br>
⬆️ Renovar dirección IP
Ejecuta: ipconfig /renew
<br><br>
🧹 Limpiar caché DNS
Ejecuta: ipconfig /flushdns
<br><br>
🚪 Salir
Cierra el script
<br><br>
<br><br>

🚀 Instalación y ejecución

Sigue estos pasos para usar el script:

Guarda el archivo como red.ps1
Abre PowerShell como administrador
Ejecuta el script:
.\red.ps1
Si te da error de permisos, ejecuta:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

<br><br>
<br><br>
🧠 Estructura del script

El script está organizado de forma sencilla:

🔐 Identificación de usuario
📋 Menú principal en bucle
🌐 9 funciones de red independientes
🚪 Función de salida

<br><br>
<br><br>

📌 Requisitos
Windows 10 u 11
PowerShell 5.0 o superior
Permisos de administrador (necesarios para algunas opciones)
<br><br>
<br><br>
👨‍💻 Autor
Creado por Hugo Arcones
Proyecto personal para aprender y practicar administración de redes con PowerShell.
<br><br>
<br<br>

⭐ Nota final

Si este proyecto te ha servido o te ha ayudado a aprender algo nuevo, se agradece mucho una estrella en GitHub 👍

<br><br>
<br><br>

* Windows 10 o 11

* PowerShell 5.0 o superior

* Permisos de administrador (para opciones 7 y 8)

Si te ha sido útil, no dudes en darme una estrella.
