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

linkDotfile bspwm 
linkDotfile dunst
linkDotfile lf 
linkDotfile eww 
linkDotfile newsboat
linkDotfile picom
linkDotfile polybar
#linkDotfile sxhkd
linkDotfile zathura
linkDotfile betterlockscreenrc
