# Vimfiles

Most of this repository is respectfully stolen from Ian Langworth's excellent article [Vim After 15
Years][1]. I've tried to adopt only the features I understand and am currently getting used to so it
is not a verbatim copy of [Ian's repository][2].

## Initial Installation

The setup entails the following steps:

1. Install [FZF][3] via git
1. Clone into `~/.vim`
1. Symlink `.vimrc` into your home directory
1. Initialize git submodules
1. Open Vim and do `:source %` followed by `:PluginInstall`

or, more concretely:

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    git clone https://github.com/attadanta/Vimfiles.git .vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    cd .vim
    git submodule init
    git submodule update
    vim -c :PluginInstall

[1]: https://statico.github.io/vim3.html
[2]: https://github.com/statico/dotfiles/blob/master/.vim/vimrc
[3]: https://github.com/junegunn/fzf
