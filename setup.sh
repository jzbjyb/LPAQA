#!/usr/bin/env bash

conda create -n lama37 -y python=3.7 && conda activate lama37
pip install -r requirements.txt
wget https://dl.fbaipublicfiles.com/LAMA/data.zip
unzip data.zip
rm data.zip
python3 -m spacy download en
chmod +x download_models.sh
./download_models.sh
pip install --editable .
