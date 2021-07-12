source $HOME/.config/nvim/config/plug-config/coc.vim
luafile $HOME/.config/nvim/config/plug-config/lvim.lua
luafile $HOME/.config/nvim/config/plug-config/treesitter.lua

let g:startify_bookmarks = [
        \ { 'b': '~/code/docker-beevo' },
        \ { 'd1': '~/code/docker-beevo/html/delta' },
        \ { 'en': '~/code/ma-engine' },
        \ { 'ma': '~/code/ma-apps' },
        \ { 'mf': '~/code/ma-frontend' },
        \ { 'term': '~/.config/alacritty/alacritty.yml' },
        \ { 'tmux': '~/.tmux.conf' },
        \ { 'vim': '~/.config/nvim/init.vim' },
        \ { 'zsh': '~/.zshrc' },
        \ ]


let g:vimwiki_list = [{'syntax': 'markdown', 'ext':'.md'}] " Vim wiki

" Run single unit test
augroup UltestRunner
    au!
    au BufWritePost * UltestNearest
augroup END

let test#javascript#jest#options = "--color=always"
"let test#python#pytest#options = "--color=yes"
"let g:ultest_use_pty = 1
