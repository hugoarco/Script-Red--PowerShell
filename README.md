## Script de Red en PowerShell

Script interactivo en PowerShell que ofrece un menú con herramientas de red para administrar y diagnosticar la red.

Este script es muy útil para trabajar con la red. Tiene un menú que te permite elegir entre diferentes herramientas de red.

**Funciones disponibles**

1. **Prueba de loopback**: Puedes probar la conectividad con el comando `ping 127.0.0.1`.

2. **Configuración básica de red**: Puedes ver la configuración básica de la red con el comando `ipconfig`.

3. **Configuración completa de red**: Puedes ver la configuración completa de la red con el comando `ipconfig /all`.

4. **Rastreo de ruta**: Puedes rastrear la ruta a una IP o dominio con el comando `tracert`.

5. **Prueba de conectividad a Google DNS**: Puedes probar la conectividad a Google DNS con el comando `ping 8.8.8.8`.

6. **Prueba de conectividad a Google**: Puedes probar la conectividad a Google con el comando `ping google.com`.

7. **Liberar dirección IP**: Puedes liberar la dirección IP con el comando `ipconfig /release`.

8. **Renovar dirección IP**: Puedes renovar la dirección IP con el comando `ipconfig /renew`.

9. **Limpiar caché DNS**: Puedes limpiar el caché DNS con el comando `ipconfig /flushdns`.

10. **Salir**: Puedes cerrar el script.

**Instalación y ejecución**

Para ejecutar este script, sigue estos pasos:

* Guarda el script como `red.ps1`.

* Abre PowerShell como administrador.

* Ejecuta el comando `.\red.ps1`.

Si aparece un error de ejecución, puedes ejecutar el comando `powershell Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`.

**Estructura del código**

Este script tiene una estructura sencilla:

* Identificación de usuarios

* Menú principal con bucle

* 9 funciones de red independientes

* Función de salida

**Autor y licencia**

Este script fue creado por Hugo Arcones y tiene una licencia MIT.

**Requisitos**

Para ejecutar este script, necesitas:

* Windows 10 o 11

* PowerShell 5.0 o superior

* Permisos de administrador (para opciones 7 y 8)

Si te ha sido útil, no dudes en darme una estrella.
