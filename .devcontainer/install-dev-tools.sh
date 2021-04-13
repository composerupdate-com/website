#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.profile

nvm install 15.14.0

source ~/.profile

npm install --global @gridsome/cli
