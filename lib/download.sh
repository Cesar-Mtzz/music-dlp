#!/usr/bin/env bash

# =====================================================================
# Project: music_dlp
# File: download.sh
# Description: Lightweight TUI to download .m4a via yt-dlp
# Author: César Martínez
# License: MIT
# =====================================================================

#Descargar en segundo plano:
descarga(){
    (
    yt-dlp -f "ba[ext=m4a]/bestaudio" --extract-audio --audio-format m4a \
    --js-runtimes node --cookies "${COOKIES}"                            \
    -o "${RUTA_MUSICA}/${artista}/${nombre}/%(title)s.%(ext)s"           \
    "${url}" > /dev/null 2>&1 &
    id_proceso=$!
    barra=0
    a=1
    espera=50

    while kill -0 $id_proceso 2>/dev/null; do

        a=$(( barra + a))
        barra=$(( a - barra ))

        if [ "${barra}" -gt 95 ]; then
            barra=95
        else
            echo "${barra}"
        fi
    
        temp=$(( espera/100 ))
        sleep "${temp}"
        espera=$((espera + 50))

    done
        sleep 0.05
        echo 100
    ) | dialog --gauge "Descargando...\nPor favor espera" 10 70 0
}

#Mostrar la lista de archivos descargados
listar_descargas(){

    lista=$(ls -1 "${RUTA_MUSICA}/${artista}/${nombre}" 2>/dev/null)
    count=$(echo "${lista}" | wc -l)

    mensaje=$(printf "Descarga del album \"${nombre}\" completada :\n#%s archivos descargados:\n\n%s" "$count" "$lista")

    dialog --title "Descarga completada" \
    --msgbox "${mensaje}" 20 60
}

# Formulario que requiere de ingresar el nombre del artista
album_individual(){
    clear
    
    #Formulario para la descarga:
    DESCARGA_INDIVIDUAL=$( 
        dialog \
            --nocancel \
            --title "Descargar álbum/single"   \
            --separate-widget $"\n"               \
            --form  "Introduce tus datos"         \
                   0 0 0                                 \
                   "URL:"     1 1 "$url"      1 15 40 0 \
                   "Artista:" 2 1 "$artista"  2 15 40 0 \
                   "Nombre:"  3 1 "$nombre"   3 15 40 0 \
                   3>&1 1>&2 2>&3 3>&-
    )
    
    url=$(echo "${DESCARGA_INDIVIDUAL}" | sed -n 1p)
    artista=$(echo "${DESCARGA_INDIVIDUAL}" | sed -n 2p)
    nombre=$(echo "${DESCARGA_INDIVIDUAL}" | sed -n 3p)
    
    mkdir -p "${RUTA_MUSICA}/${artista}/${nombre}"
        
    clear
    
    descarga
    
    clear

    listar_descargas

    clear

    menu_secundario 
}

#Formulario que no requiere de ingresar el nombre del artista
album(){
    clear
    
    #Formulario para la descarga:
    DESCARGA=$( 
        dialog \
            --nocancel \
            --title "Descargar álbum/single ${artista} "   \
            --separate-widget $"\n"               \
            --form  "Introduce tus datos"         \
                    0 0 0                                 \
                    "URL:"     1 1 "$url"      1 15 40 0 \
                    "Nombre:" 2 1 "$nombre"  2 15 40 0 \
                    3>&1 1>&2 2>&3 3>&-
    )
    
    url=$(echo "${DESCARGA}" | sed -n 1p)
    nombre=$(echo "${DESCARGA}" | sed -n 2p)

    mkdir -p "${RUTA_MUSICA}/${artista}/${nombre}"
        
    clear
    
    descarga

    clear

    listar_descargas

    clear

    menu_secundario
}
