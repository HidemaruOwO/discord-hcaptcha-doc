#!/bin/bash

rm doc/docs/index.md
curl https://raw.githubusercontent.com/HidemaruOwO/discordjs-hcaptcha/master/README.md | sed -e 's/<div align="center">//g' -e 's;</div>;;g' >> doc/docs/index.md
cd ./doc
mkdocs build
cd ..
