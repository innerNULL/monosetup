# file: dotfolders_mnt.sh
# date: 2026-10-20


set -x

source $1


function main {
  mkdir -p ${DOT_CACHE_MNT_DIR}
  ln -s ${DOT_CACHE_MNT_DIR} ~/.cache
  mkdir -p ${DOT_PIP_MNT_DIR}
  ln -s ${DOT_PIP_MNT_DIR} ~/.pip
  mkdir -p ${DOT_CLAUDE_MNT_DIR}
  ln -s ${DOT_CLAUDE_MNT_DIR} ~/.claude
  mkdir -p ${DOT_CONDA_MNT_DIR}
  ln -s ${DOT_CONDA_MNT_DIR} ~/.conda    
  mkdir -p ${DOT_MAMBA_MNT_DIR}
  ln -s ${DOT_MAMBA_MNT_DIR} ~/.mamba
}


main
