if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/tomoyuki/.vimrc', '/home/tomoyuki/.vim/plugin.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/tomoyuki/.vim'
let g:dein#_runtime_path = '/home/tomoyuki/.vim/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/tomoyuki/.vim/.cache/.vimrc'
let &runtimepath = '/home/tomoyuki/.vim,/home/tomoyuki/.vim/.cache/.vimrc/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/usr/local/share/vim/vim80/pack/dist/opt/matchit,/usr/local/share/vim/vimfiles/after,/home/tomoyuki/.vim/after,/home/tomoyuki/.vim/repos/github.com/Shougo/dein.vim,/home/tomoyuki/.vim/.cache/.vimrc/.dein/after'
filetype off
  if executable('ag')
    let g:ctrlp_use_caching  = 0
    let g:ctrlp_user_command = 'ag %s -i --nocolor --hidden -g --nogroup -g ""'
  endif
  let g:magit_show_help              = 0
  let g:magit_default_show_all_files = 2
  let g:magit_default_fold_level     = 2
  let g:magit_default_sections       = ['global_help', 'info', 'unstaged', 'staged', 'commit']
