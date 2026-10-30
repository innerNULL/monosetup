# file: cache_reset.sh
# date: 2026-10-30


set -x

source $1

function main {
  mkdir -p ${CACHE_ROOT}

  echo " "
  echo "# ======== Caches setting start ========" >> ${SHELL_CFG_PATH}
  echo "export CACHE_ROOT=${CACHE_ROOT}" >> ${SHELL_CFG_PATH}
  echo "export PIP_CACHE_DIR=${PIP_CACHE_DIR}" >> ${SHELL_CFG_PATH}
  echo "export HF_HOME=${HF_HOME}" >> ${SHELL_CFG_PATH}
  echo "export CONDA_PKGS_DIRS=${CONDA_PKGS_DIRS}" >> ${SHELL_CFG_PATH}
  echo "export MAMBA_ROOT_PREFIX=${MAMBA_ROOT_PREFIX}" >> ${SHELL_CFG_PATH}
  echo "export XDG_CACHE_HOME=${XDG_CACHE_HOME}" >> ${SHELL_CFG_PATH}
  echo "# ======== Caches setting end ========" >> ${SHELL_CFG_PATH}
  echo "Pls run: source ${SHELL_CFG_PATH}"
}


main
