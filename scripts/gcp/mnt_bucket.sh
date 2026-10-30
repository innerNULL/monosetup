

set -x

source $1

sudo gcsfuse --implicit-dirs -o allow_other --uid=$(id -u) --gid=$(id -g) ${BUCKET_NAME} ${TARGET_DIR}
