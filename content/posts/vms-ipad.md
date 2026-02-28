---
title: 'Máquinas virtuales en iPad'
date: '2026-02-27T10:02:32.298Z'
description: 'Instalación de Linux en un iPad pro M5'
draft: true
tags:
    - 'iPad'
    - 'VMs'
---

Hola! Ahora tengo un iPad Pro. Y siempre he querido instalar UTM, al ser el iPad Pro M5, todos los modelos tienen 12GB de RAM, así que aún mejor (En el iPhone cualquier VM se me bloqueaba por la RAM)

# ¿Qué es [UTM](https://getutm.app/)?
UTM es una aplicación para Mac e iOS para ejecutar maquinas virtuales (Un VirtualBox pero optimizado para dipositivos Apple).
Yo no tengo un Mac, así que solo diré mi experiencia con la versión de iOS.

{{< github repo="utmapp/utm" showThumbnail=false >}}

<br/>

# Instalación de la VM

UTM lo pone facil y ofrece varias máquinas virtuales en su [galería](https://getutm.app/gallery/). Como por ejemplo windows XP, Windows 7, Windows 10 y 11, varias versiones de Ubuntu, Fedora, Debian y la que me interesaba a mi, Arch Linux.

## Por qué Arch Linux?
A Arch Linux se le puede meter cualquier entorno gráfico, por tanto se puede hacer un sistema operativo bastante ligero. 

A parte, algo chulo es su modelo de actualizaciones continuas, es decir, no hay que reinstalar el sistema operativo si quiero cambiar de versión (Como pasa en Ubuntu), sino que ejecutando `sudo pacman -Syu` se actualiza todo el sistema y siempre voy a tener actualizaciones de seguridad.

## Descargando la imagen
Como Arch Linux no tiene varias versiones como otros sistemas operativos, no hay que pensar mucho para elegir la imagen. Me descargué al final la [imagen ya hecha](https://mac.getutm.app/gallery/archlinux-arm) de la galería de UTM.

Después, como se podía asignar más RAM y disco a la máquina virtual, lo configuré desde la interfaz.

## Ejecutando la máquina virtual

Sorprendentemente funciona! En Arch Linux no hay interfaz gráfica nada más empezar, solo tienes una linea de comandos. El sistema ya estaba instalado (al estar descargada desde la galería de UTM), y las credenciales eran las de por defecto (`root`,`root`).

{{< alert >}}
**Hay un punto en contra con las VMs en iOS** El gran problema es que mi iPad, aunque tenga un chip M5 (El mismo que el del Mac Book Pro ahora mismo), sigue siendo un iPad. No tiene el sistema operativo de un Mac, por tanto tampoco tiene todas las funciones de virtualización del Mac. Así que en vez de virtualizar (Descripción de virtualizar aquí) hay que emular (Descripción de emular aquí).
{{< /alert >}}

### Instalando el entorno gráfico

Para el entorno gráfico he elegido Xfce, porque quiero el sistema más ligero y optimizado posible.

Instalé Xfce con estos comandos:

```bash
sudo pacman -Syu
sudo pacman -S xfce4 xfce4-goodies
# Display Manager (Inicio automático):
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm
# Reiniciar
sudo reboot
```

Y si no quieres Display Manager, se puede iniciar el entorno con:

```bash
echo "exec startxfce4" >> ~/.xinitrc
startx
```

# Y ahora qué, ¿qué haré con ello?

Ahora esta máquina virtual es un linux que puedo tener en un dispositivo bastante portable sin gastar casi recursos. Esto abre bastantes posibilidades de cosas que se pueden hacer en el iPad.

Eso sí, nos olvidamos ya de primeras de la GPU, entonces no podríamos jugar a videojuegos AAA ni renderizar en Blender.
Pero si podríamos hacer cosas sencillas que podríamos hacer en un portatil normal y no en iOS por limitaciones del sistema operativo.

## Hacer un tunel con Visual Studio Code

Visual Studio Code da una opción de crear un tunel para que otro dispositivo desde el navegador o desde su aplicación se pueda conectar al entorno para que tenga acceso a la terminal, archivos y extensiones (Vamos, como si abrieras remotamente vscode).

Así que ejecutando el tunel de vscode con `a` o instalando el tunel como un servicio `a`. Abrimos un tunel al que se puede conectar si se inicia sesión con la misma cuenta de Github/Microsoft en [vscode.dev](https://vscode.dev).

Esto nos abre un montón de posibilidades, como ejecutar scripts de cualquier lenguaje de programación (Aunque ya hay apps en iOS que consiguen hacer eso)

### Programar páginas web

Yo soy mayoritariamente desarrollador frontend. Y claro, al trabajar con frameworks, no puedo previsualizar el resultado facilmente desde iOS. Pero con esto directamente es como si estuviera programando en un [GitHub Codespace](https://github.com/codespaces) (Antes programaba así desde el iPad), ejecuto npm i y npm run dev y listo. Ya puedo previsualizar la página web-

## Algo más?
De momento no he probado nada más, se podría usar para ffmpeg, pero no sé como de rápido codificará al no tener GPU.

# En conclusión

Lo bueno de esto es que tienes un dispositivo portable en el que puedes hacer más cosas de lo que estaba inicialmente diseñado, y así se aprovecharía todo el potencial del chip.

Pero el problema aqui viene cuando Apple limita exageradamente el dispositivo con su sistema operativo. El mismo chip con el que se podrían hacer maravillas en un Mac, en un iPad no sirve de casi nada. Para instalar esto al final he tenido que saltarme el bloqueo de aplicaciones de terceros firmando la aplicación, luego cada vez que quiera ejecutar la app tengo que arrancarlo con Jit... Ojala Apple hiciera algo. Aunque el Jit sería poco probable que lo quitaran porque desactiva una función de seguridad.

Con todas las complicaciones que conlleva arrancar la máquina virtual ya me da pereza programar en el iPad. Al final uso el ordenador que para algo tiene teclado físico unido y que no cuesta 300€. Ahora mismo el iPad puede servir para muchas cosas, como visualizar modelos 3D complejos, pero no para esto.