# file: ubuntu_cpu_init.sh
# date: 2026-10-18


set -x 

source $1


function install_apps {
  # Apt install
  sudo apt update --yes
  sudo apt install neovim --yes
  sudo apt install tree --yes

  # Install micromamba 
  "${SHELL}" <(curl -L micro.mamba.pm/install.sh) < /dev/null
}


function setting {
  cp ${VIMRC_PATH} ${HOME}/.vimrc 
  cp ${TMUX_CONF_PATH} ${HOME}/.tmux.conf
}


function main {
  install_apps
}


main
