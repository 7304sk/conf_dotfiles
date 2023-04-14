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
    " call dein#add('preservim/nerdtree')
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
if (has("termguicolors"))
 set termguicolors
endif
colorscheme tender
let g:airline_theme = 'tender'

" Start Fern
autocmd VimEnter * nested Fern . -reveal=% -drawer -toggle -width=40
let g:fern#default_hidden=1
let g:fern#renderer#nerdfont#indent_markers=1


