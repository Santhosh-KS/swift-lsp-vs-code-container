#!/bin/bash

cd ~ && git clone https://github.com/apple/sourcekit-lsp.git 
cd ~/sourcekit-lsp  
git checkout swift-5.2-branch 
echo $(pwd)
swift package update
swift build -Xcxx -I/usr/lib/swift -Xcxx -I/usr/lib/swift/Block 
cp .build/debug/sourcekit-lsp /usr/bin/

