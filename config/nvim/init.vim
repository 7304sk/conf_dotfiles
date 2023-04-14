" Load vimrc
source ~/.vimrc

" dein.vim
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

call map(dein#check_clean(), "delete(v:val, 'rf')")

if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable

" color theme
colorscheme codedark
let g:airline_theme = 'codedark'

" Start Fern
autocmd VimEnter * nested Fern . -reveal=% -drawer -toggle -width=40
let g:fern#default_hidden=1
let g:fern#renderer#nerdfont#indent_markers=1

" Committia
let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    endif

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)
endfunction
