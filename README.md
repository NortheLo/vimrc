# vimrc
My personal vim and tmux config files for  developing mainly with C/C++, Rust and Fortran. Can be used with VIM and NeoVIM
Copy init.vim to ~/.config/nvim/init.vim and install plug with ``sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`` and nodejs. The coc conf to ~/.config/coc/.
The tmux conf is copied to the home directory.

## Language Servers:
``coc-clangd`` and ``coc-rust-analyzer`` with ``Cocinstall``
