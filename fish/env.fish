set -Ux flutter $HOME/.local/share/flutter/bin
set -Ux EDITOR nvim
set -Ux CHROME_EXECUTABLE /usr/bin/chromium
set -Ux ANDROID_SDK_ROOT $HOME/Android/Sdk
set -Ux SUDO_EDITOR /usr/bin/nvim
set -Ux GO_PATH $HOME/Coding/go
set PATH flutter $HOME/.local/share/flutter/bin $PATH
set PATH emacs $HOME/.emacs.d/bin $PATH
set PATH cargo $HOME/.local/cargo/bin $PATH
set PATH gobin $(go env GOPATH)/bin $PATH
