:"Instalação vim Plug 
"*****************************************************************************
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
		let g:not_finish_vimplug = "yes"
		autocmd VimEnter * PlugInstall
endif
"*****************************************************************************

"Configuração básica
"*****************************************************************************
syntax on "habilita processamento de sintaxe.
set ruler "Mostra linhas e colunas.
set tabstop=4 "Número de espacos por TAB.
set softtabstop=4 "Número de espacos por TAB quando editando.
set expandtab "Transforma TABs em espacos.
set number "Mostra o numero de linhas.
set showcmd "Mostra barra de comandos.
filetype indent on "habilita identificação e identação por extensão de arquivo
set wildmenu "Habilita o autocomplete de pastas grafico.
set lazyredraw "Redraw apenas quando necessario.
set showmatch "Faz highlight de () {} []
set incsearch "Marca palavra conforme digita na busca.
set hlsearch "Marca todas as palavras localizadas na busca.
set ignorecase "ignora case sensitive.
set smartcase "Se comecar uma busca em maiusculo ele habilita o case.
set encoding=utf-8 "Encode para visualizacao do arquivo.
set fileencoding=utf-8 "Encode para gravacao do arquivo.
"set fileencodings=utf-8
set fileformats=unix,dos,mac
"set bomb
set binary
set ttyfast
set nobackup "Nao faz backup de arquivos temporarios.
set noswapfile "Nao faz aquivos temporarios.
set noshowmode "tira o indidador de modo padrão do vim
set laststatus=2
set colorcolumn=79
let python_highlight_all=1

""Configuração básica para python
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

""Configuração básicar para webdev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Remaps
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <S-T> :tabnew <CR>
nnoremap <F9> :w !clear; python3 % <CR>

"*****************************************************************************

"Plugins a serem instalados
"*****************************************************************************
call plug#begin()
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py' }

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
Plug 'davidhalter/jedi-vim', { 'do': 'pip install jedi' }
"Plug 'maralla/completor.vim', { 'do': 'pip install jedi' }
"Plug 'masawada/completor-dictionary'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()
"*****************************************************************************

"Configurações de Plugins
"*****************************************************************************
"
"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '|'

"" Vim-ColorSchemes configuration
colorscheme molokai

""
"let g:jedi#force_py_version = 3
"let g:pymode_python = 'python3'
"let g:completor_python_binary = '/usr/local/bin/python3'
"let g:jedi#completions_enabled = 0
"autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/dict/'.&filetype.'.dict')

""syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 
