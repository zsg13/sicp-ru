#!/bin/bash

git clone https://github.com/zsg13/sicp-ru.git /sicp-ru
cd /sicp-ru/src/
make
[ -d '/sicp-out' ] && make save
