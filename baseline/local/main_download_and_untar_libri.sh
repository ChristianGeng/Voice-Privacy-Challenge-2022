#!/bin/bash

set -e

. ./config.sh

for part in $libri_train_sets; do
    echo "directory for corpora: "$corpora
    echo "download url: "$data_url_librispeech
    echo "PART: "$part
    local/download_and_untar.sh --remove-archive $corpora $data_url_librispeech $part LibriSpeech || exit 1
done

echo '  Done'
