# file: gcloud_disk_init.sh
# date: 2026-10-20


set -x

source $1


function main {
  sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard ${TARGET_DISK}
  sudo mkdir -p ${MNT_PATH}
  sudo mount -o discard,defaults /dev/sdb ${MNT_PATH}
  sudo chmod a+w ${MNT_PATH}
}


main
