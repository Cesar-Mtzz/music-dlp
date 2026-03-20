#!/usr/bin/env bash

# =====================================================================
# Project: music_dlp
# File: config.sh
# Description: Lightweight TUI to download .m4a via yt-dlp
# Author: César Martínez
# License: MIT
# =====================================================================

# Definir rutas
DIRECTORIO="$HOME/.config/music_dlp"
COOKIES="${DIRECTORIO}/cookies.txt"
TEMA="${DIRECTORIO}/theme.rc"

#Ubicacion predeterminada de descarga:
RUTA_MUSICA=$(xdg-user-dir MUSIC)

obtenerCookies(){
    rm -f "${COOKIES}"

    dialog --title "Configuración de cookies" \
        --msgbox "Nota: Debe seleccionar su archivo usando la barra inferior, la tabla de la parte superior es solo una guia" 10 40

    cookies=$(dialog \
        --nocancel \
        --title "Selecciona el archivo cookies.txt:" \
        --stdout \
        --fselect $HOME/  15 70 \
    )

        dialog --msgbox "El archivo ${cookies} fue seleccionado" 15 40
        cp "${cookies}" "${COOKIES}/"
}

comprobacion(){
    # Comprobar exista el directorio.
    if [ ! -d "${DIRECTORIO}" ]; then
        mkdir -p "${DIRECTORIO}"
    fi
    
    # Comrrobar que existe el archivo de cookies, si no se crea.
    if [ ! -f "${COOKIES}" ]; then 
        obtenerCookies
    fi

    # Comprobar que existe el tema, si no se crea.
    if [ ! -f "${TEMA}" ]; then
        crear_tema
    fi
}
