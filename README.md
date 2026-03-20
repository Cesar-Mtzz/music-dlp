# music-dlp

A lightweight TUI to download YouTube audio in .m4a format via yt-dlp.
*Una TUI ligera para descargar audio de YouTube en formato .m4a mediante yt-dlp.*

## Features
- **Fast & Minimalist:** No bloat, just terminal efficiency.
- **M4A Format:** Optimized for music libraries.
- **Easy Management:** Interactive file selection and path handling.

## Requirements / Dependencias
This tool requires the following packages installed:
*Esta herramienta requiere los siguientes paquetes instalados:*

- **Bash**
- **yt-dlp**: The core engine for downloading.
- **ffmpeg**: Essential for converting and post-processing audio.
- **dialog**: To render the TUI (Terminal User Interface).
- **xdg-user-dirs**: To automatically detect system folders (Downloads, Music, etc.).

### Dependency Installation 

#### (Debian/Ubuntu):
  ```bash
 sudo apt update && sudo apt install -y dialog ffmpeg yt-dlp xdg-user-dirs
  ```

#### (Arch):
  ```bash
  sudo pacman -S dialog ffmpeg yt-dlp xdg-user-dirs
  ```

## Installation

### English version (Bin):
- Download the music_dlp binary.
- Copy the binary to the appropriate directory using the following command:
  ```bash
  sudo mv music_dlp /usr/local/bin/music_dlp
  ```
- Grant the necessary execution permissions with the following command:
  ```bash
  sudo chmod +x /usr/local/bin/music_dlp
  ```

### Versión en Español (Binario):
- Descarga el binario con el nombre music_dlp_esp.
- Copia el binario a la carpeta correspondiente con el siguiente comando:
  ```bash
  sudo mv music_dlp_esp /usr/local/bin/music_dlp
  ```
- Otorga los permisos de ejecución necesarios con el siguiente comando:
  ```bash
  sudo chmod +x /usr/local/bin/music_dlp
  ```

### Uso desde el código fuente (Source Code):
*Currently only available in Spanish / Actualmente solo disponible en español*

- Descargue el archivo .zip del repositorio y entre en la carpeta del proyecto
- Elimine la carpeta bin y continue con estos pasos desde la terminal
- Otorgue permisos de ejecución con el siguiente comando:
  ```bash
  chmod +x music_dlp.sh
  ```
- Ejecute la interfaz (TUI) con el siguiente comando:
  ```bash
  ./music_dlp.sh'
  ```
  
*Nota sobre el código fuente:*
*La limitación de utilizar esta versión es que el script no es ejecutable de forma global. Para iniciar la aplicación, es necesario que la terminal se encuentre ubicada dentro del directorio del proyecto.*

## Author's Notes

- I created this project for personal use and as a way to deepen my knowledge of scripting and Dialog. However, if you find it helpful, you are more than welcome to use it.
Additionally, you are free to review the source code; the comments and functions are in Spanish, but the logic is straightforward. I will continue adding features that I find useful for myself and the community.

- Creé este proyecto para uso personal y como una forma de profundizar mis conocimientos en scripting y Dialog. Sin embargo, si te resulta útil, eres más que bienvenido a utilizarlo.
El código está abierto para quien quiera revisarlo. Mi plan es seguir integrando herramientas y mejoras conforme me resulten útiles, esperando que también le sirvan a los demás usuarios.
