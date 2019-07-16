# ESP32 Homebrew install

## Installation

    brew tap tasanakorn/homebrew-esp32
    brew install xtensa-esp32-elf

## Get ESP-IDF

    git clone --recursive https://github.com/espressif/esp-idf.git

## Setting envronment

    export IDF_PATH=~/esp-idf

## Install the Required Python Packages

    python -m pip install --user -r $IDF_PATH/requirements.txt
