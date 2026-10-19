# file: ubuntu_cpu_init.sh
# date: 2026-10-18


set -x 

source $1


function install_apps {
  # Apt install
  sudo apt update --yes
  sudo apt install neovim --yes
  sudo apt install tree --yes
  sudo apt install tmux --yes

  # Install micromamba 
  "${SHELL}" <(curl -L micro.mamba.pm/install.sh) < /dev/null
}


function install_ai_tools {
  # claude
  curl -fsSL https://claude.ai/install.sh | bash
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
}


function setting {
  cp ${VIMRC_PATH} ${HOME}/.vimrc 
  cp ${TMUX_CONF_PATH} ${HOME}/.tmux.conf
}


function main {
  install_apps
  install_ai_tools
  setting
  echo "Finished all, pls run `source ~/.bashrc`"
}


main
