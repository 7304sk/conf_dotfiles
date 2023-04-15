" setting
if has('vim_starting')
    set nocompatible
endif

set fenc=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set nobomb
set binary
set ttyfast
set backspace=indent,eol,start
set softtabstop=0
set expandtab
set tabstop=4
set shiftwidth=4
set splitright
set splitbelow
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac
syntax on
set ruler
set number
set gcr=a:blinkon0
set scrolloff=3
set laststatus=2
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set autoread
set noerrorbells visualbell t_vb=
set clipboard+=unnamedplus
set mouse=a
set whichwrap=b,s,h,l,<,>,[,]
if has('persistent_undo')
  set undofile
endif

set shortmess+=c
set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()
" CoCの入力補完をEnterで決定
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" keymap
" : Swap colon and semicolon
nnoremap ; :
nnoremap : ;
" escape
inoremap <silent> jj <Esc>
inoremap jf <Esc>:w
" Move to beginning or end of line
noremap <S-h> 0
noremap <S-l> $
" increment, decrement
nnoremap + <C-a>
nnoremap - <C-x>
" undo, redo
nnoremap <Space>z :undo<CR>
nnoremap <Space>y :redo<CR>
" Fern (only for neovim)
nnoremap <Space><Space> :Fern . -reveal=% -drawer -toggle -width=40<CR>
nnoremap <Space><Left> <C-w><Left>
nnoremap <Space><Right> <C-w><Right>
nnoremap <Space><Up> <C-w><Up>
nnoremap <Space><Down> <C-w><Down>
" search
nnoremap <silent> <Space>g :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Buffer 移動
nnoremap <Space>b :bp<CR>
nnoremap <Space>n :bn<CR>
" markdown
" preview
nnoremap <Space>m :MarkdownPreview<CR>
" table
vnoremap mt :'<,'>MakeTable
vnoremap tm :'<,'>MakeTable!
nnoremap <Space>t :UnmakeTable
"" git操作
" g]で前の変更箇所へ移動する
nnoremap <Space>j :GitGutterPrevHunk<CR>
" g[で次の変更箇所へ移動する
nnoremap <Space>k:GitGutterNextHunk<CR>
" ghでdiffをハイライトする
nnoremap <Space>h :GitGutterLineHighlightsToggle<CR>
" Gitguuter記号の色を変更する
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red

"" 反映時間を短くする(デフォルトは4000ms)
set updatetime=250

"" fzf.vim
" Ctrl+pでファイル検索を開く
" git管理されていれば:GFiles、そうでなければ:Filesを実行する
fun! FzfOmniFiles()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GFiles
  endif
endfun
nnoremap <C-p> :call FzfOmniFiles()<CR>

" Ctrl+gで複数ファイルの文字列検索を開く
" <S-?>でプレビューを表示/非表示する
command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--exact --delimiter : --nth 3..'}, 'right:50%:hidden', '?'),
\ <bang>0)
nnoremap <C-g> :Rg<CR>

" Space rでカーソル位置の単語をファイル検索する
nnoremap <Space>r vawy:Rg <C-R>"<CR>
" (Visual) Ctrl+gで選択した単語をファイル検索する
xnoremap <C-g> y:Rg <C-R>"<CR>
" Space fで開いているファイルの文字列検索を開く
nnoremap <Space>f :BLines<CR>
" fcでコミット履歴検索を開く
nnoremap <Space>c :Commits<CR>

" edgemotion での移動（縦移動）
nnoremap <Space>] <Plug>(edgemotion-j)
nnoremap <Space>[ <Plug>(edgemotion-k)

