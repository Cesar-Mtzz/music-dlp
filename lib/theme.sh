#!/usr/bin/env bash

# =====================================================================
# Project: music_dlp
# File: theme.sh
# Description: Lightweight TUI to download .m4a via yt-dlp
# Author: César Martínez
# License: MIT
# =====================================================================

crear_tema(){
cat <<EOF > "${TEMA}"
use_shadow = OFF
use_colors = ON

screen_color = (WHITE,BLACK,OFF)
shadow_color = (BLACK,BLACK,OFF)

dialog_color = (WHITE,BLACK,OFF)
title_color = (WHITE,BLACK,ON)
border_color = (WHITE,BLACK,ON)

button_active_color = (WHITE,RED,ON)
button_inactive_color = (WHITE,BLACK,OFF)

button_key_active_color = (WHITE,RED,ON)
button_key_inactive_color = (WHITE,BLACK,OFF)

button_label_active_color = (WHITE,RED,ON)
button_label_inactive_color = (WHITE,BLACK,OFF)

inputbox_color = (WHITE,BLACK,OFF)
inputbox_border_color = (WHITE,BLACK,OFF)

searchbox_color = (WHITE,BLACK,OFF)
searchbox_title_color = (WHITE,BLACK,ON)
searchbox_border_color = (WHITE,BLACK,ON)

position_indicator_color = (WHITE,BLACK,OFF)

menubox_color = (WHITE,BLACK,OFF)
menubox_border_color = (WHITE,BLACK,ON)

item_color = (WHITE,BLACK,OFF)
item_selected_color = (WHITE,RED,ON)

tag_color = (WHITE,BLACK,ON)
tag_selected_color = (WHITE,RED,ON)

tag_key_color = (WHITE,BLACK,ON)
tag_key_selected_color = (WHITE,RED,ON)

check_color = (WHITE,BLACK,OFF)
check_selected_color = (WHITE,RED,ON)

uarrow_color = (WHITE,BLACK,ON)
darrow_color = (WHITE,BLACK,ON)

itemhelp_color = (WHITE,BLACK,OFF)

form_active_text_color = (WHITE,RED,ON)
form_text_color = (WHITE,BLACK,OFF)

form_item_readonly_color = (WHITE,BLACK,OFF)

gauge_color = (WHITE,RED,ON)

border2_color = (WHITE,BLACK,ON)
inputbox_border2_color = (WHITE,BLACK,OFF)
searchbox_border2_color = (WHITE,BLACK,OFF)
menubox_border2_color = (WHITE,BLACK,OFF)
EOF
}
