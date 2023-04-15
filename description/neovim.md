# Neovim の設定

あまりちゃんと書いていないので今は多分違う

* tabインデントはスペース4つ
* コピペ有効化
* 矢印キー有効化
* マウスカーソルでの選択を有効化
* シンタックスハイライトを有効化
* スワップファイルを作成しない
* bombを付与しない
* 行数を表示

## プラグイン

プラグインマネージャは [dein.vim](https://github.com/Shougo/dein.vim) を使用。  
プラグインのインストールは基本的に ~/.config/nvim/dein.toml に記述する。特定のファイルのみに遅延読み込みさせる場合などは dein_lazy.toml を使用。

### プラグインリスト

|レポジトリ                      |説明                           |
|--------------------------------|-------------------------------|
|altercation/vim-colors-solarized|カラーテーマ                   |
|neoclide/coc.nvim               |IDE化（サジェスト）            |
|nathanaelkane/vim-indent-guides |NERDTree（ファイルツリー）     |
|Xuyuanp/nerdtree-git-plugin     |NERDTreeにgitを対応            |
|ryanoasis/vim-devicons          |ファイルアイコン               |
|vim-airline/vim-airline         |ステータスバーの強化           |
|vim-airline/vim-airline-themes  |airline用テーマ                |
|junegunn/fzf                    |fizzy finder                   |
|airblade/vim-gitgutter          |gitの変更差分を左端に表示      |
|tomtom/tcomment_vim             |コメントアウトの切り替え（gcc）|
|luochen1990/rainbow             |括弧のペアを色付け             |

## キーバインド

|モード|入力            |結果                                                          |説明                                            |
|------|----------------|--------------------------------------------------------------|------------------------------------------------|
|n     |;               |:                                                             |;と:の入れ替え（よく使う:を打ちやすいように）   |
|n     |:               |;                                                             |同上                                            |
|i     |jj              |\<Esc>                                                        |j 2回でインサートを脱出                         |
|i     |jf              |\<Esc>:w                                                      |インサートから脱出して保存                      |
|n     |\<Shift-h>      |0                                                             |行頭に移動                                      |
|n     |\<Shift-l>      |$                                                             |行末に移動                                      |
|n     |+               |\<Ctrl-a>                                                     |インクリメント（数字の上で行うことで数を増やす）|
|n     |-               |\<Ctrl-x>                                                     |デクリメント                                    |
|n     |\<Space>z       |:undo\<CR>                                                    |undo                                            |
|n     |\<Space>y       |:redo\<CR>                                                    |redo                                            |
|n     |\<Space>\<Space>|:NERDTreeToggle<CR>                                           |NERDTreeを表示/非表示                           |
|n     |\<Space>f       |:let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>|現在カーソルを当てている単語をハイライト        |
|n     |\<Ctrl-l>       |:<C-u>nohlsearch<CR><C-l>                                     |ハイライトを解除                                |
|n     |\<Space>b       |:MarkdownPreview<CR>                                          |マークダウンプレビューを表示                    |
|v     |mt              |:'<,'>MakeTable                                               |選択している範囲をmarkdowndテーブル化           |
|v     |tm              |:'<,'>MakeTable!                                              |同上、ただしヘッダー付き                        |
