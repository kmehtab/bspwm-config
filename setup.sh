#!/bin/bash
dotfilesDir=$(pwd)

function linkDotfile {
  dest="${HOME}/.config/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h "$dest" ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

linkDotfile .config/bspwm 
linkDotfile .config/dunst
linkDotfile .config/lf 
linkDotfile .config/newsboat
linkDotfile .config/picom
linkDotfile .config/polybar
linkDotfile .config/rofi
linkDotfile .config/sxhkd
linkDotfile .config/zathura
linkDotfile .config/betterlockscreenrc
