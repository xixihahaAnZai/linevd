#!/bin/bash
# Get Google Drive files here
# To view drive file, go to the link:
# https://drive.google.com/file/d/<file_id>

if [[ -d storage/external ]]; then
    echo "storage exists, starting download"
else
    mkdir --parents storage/external
fi

cd storage/external

if [[ ! -f "MSR_data_cleaned.zip" ]]; then
    gdown https://drive.google.com/uc\?id\=1-0VhnHBp9IGh90s2wCNjeCMuy70HPl8X
    unzip MSR_data_cleaned.zip
    rm MSR_data_cleaned.zip
else
    echo "Already downloaded bigvul data"
fi
