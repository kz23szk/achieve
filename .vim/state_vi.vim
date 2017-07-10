if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kzfm/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kzfm/.vim'
let g:dein#_runtime_path = '/Users/kzfm/.vim/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kzfm/.vim/.cache/.vimrc'
let &runtimepath = '/Users/kzfm/.vim,/Users/kzfm/.vim/repos/github.com/Shougo/dein.vim,/Users/kzfm/.vim/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/Users/kzfm/.vim/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/kzfm/.vim/after'
