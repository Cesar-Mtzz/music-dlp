#!/usr/bin/env bash

# =====================================================================
# Project: music_dlp
# File: menu.sh
# Description: Lightweight TUI to download .m4a via yt-dlp
# Author: César Martínez
# License: MIT
# =====================================================================

#Menu principal:
menu_principal(){
    OPCIONES=$( 
        dialog \
            --nocancel \
            --title "music_dlp" \
            --stdout \
            --menu "Selecciona una opción:" 10 60 5 \
                1 "Descargar Álbum/Single" \
                2 "Cambiar archivo Cookies.txt" \
                3 "Salir" \
    )

    case "${OPCIONES}" in
        1)
            clear
            album_individual 
            ;;
        2)
            clear
            obtenerCookies
            album_individual
            ;;
        3)
            clear
            exit
            ;;
    esac
}

#Menu secundario (Despues de 1 descarga):
menu_secundario(){
    
    OPCIONES_SEC=$(dialog --nocancel \
        --title "music_dlp" \
        --stdout \
        --menu "Selecciona una opción" 11 60 5 \
            1 "Descargar otro Álbum/Single de ${artista}"   \
            2 "Descargar otro Album/Single de otro artista" \
            3 "Regresar al menu principal"                  \
            4 "Salir"
    )

    case "${OPCIONES_SEC}" in
        1)
            clear
            url=""
            nombre=""
            album
            ;;
        2)
            clear
            url=""
            nombre=""
            artista=""
            album_individual
            ;;
        3)
            clear
            url=""
            nombre=""
            artista=""
            menu_principal
            ;;
        4)
            clear
            exit
            ;;
    esac
}
