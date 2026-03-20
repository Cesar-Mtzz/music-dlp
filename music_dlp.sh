#!/usr/bin/env bash

# =====================================================================
# Project: music_dlp
# File: music_dlp.sh
# Description: Lightweight TUI to download .m4a via yt-dlp
# Author: César Martínez
# License: MIT
# =====================================================================

source lib/theme.sh
source lib/config.sh
source lib/download.sh
source lib/menu.sh

# Comprobar archivos y carpetas
comprobacion

# Usar el tema para dialog
export DIALOGRC="$TEMA"

# Llamar el menu principal
menu_principal

clear
