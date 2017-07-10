"dein Scripts--------------------
if &compatible
set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=/Users/kzfm/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kzfm/.vim')
  call dein#begin('/Users/kzfm/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kzfm/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " suzuki add 2016.07.24
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('Vimjas/vim-python-pep8-indent')
  call dein#add('nvie/vim-flake8')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible

" 行番号を表示
set number

" 選択行の行数を色付けする
" hi CursorLineNr term=bold cterm=NONE ctermfg=333  ctermbg=gray
autocmd ColorScheme * highlight Search ctermbg=115

" カラースキーマを設定
colorscheme peachpuff 
syntax on

" {があると次の行は自動で1段深く自動インデントしてくれる
set smartindent
" 改行した時に自動でインデントします
set autoindent
" 画面上で表示する1つのタブの幅
set tabstop=4
" tabキーを押すとスペースが入力される
set expandtab
" 自動インデントでのインデントの長さ
set shiftwidth=4 
" いくつの連続した空白を1回で削除できるようにするか
set softtabstop=4

"autocmd BufRead,BufNewFile *.rb setfiletype ruby

augroup fileTyleIndent
    autocmd!
    autocmd BufNewfile,BufRead *.py setlocal indentkeys+=0#
    autocmd BufNewfile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,[,],<,>

" 括弧の対応をハイライト
set showmatch

" BSで削除できるものを指定する
" indent : 行頭の空白
" eol : 改行
" start :　挿入モード開始位置より手前の文字
set backspace=indent,eol,start

" インデント部分にラインを入れるプラグイン(IndentLine)の設定
" let g:indentLine_color_term = 239
" let g:indentLine_char = '¦'
" indentGuidesの設定
" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラーを無効にする
let g:indent_guides_auto_colors=0
"  奇数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=7
" ハイライト色の変化の幅
let g:indent_guides_color_change_percent = 30
" ガイドの幅
let g:indent_guides_guide_size = 1

" マウスカーソルの有効化
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

" ペーストの時に自動インデントしないようにする
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special><expr><Esc>[200~ XTermPasteBegin("")
endif

" ヤンクした内容を別のウインドウにペーストできるようにする
set clipboard=unnamed,autoselect

" ステータスラインを常に表示
" set laststatus=2
