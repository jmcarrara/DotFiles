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
"filetype indent on "habilita identificação e identação por extensão de arquivo
set wildmenu "Habilita o autocomplete de pastas grafico.
set lazyredraw "Redraw apenas quando necessario.
set showmatch "Faz highlight de () {} []
set incsearch "Marca palavra conforme digita na busca.
set hlsearch "Marca todas as palavras localizadas na busca.
set ignorecase "ignora case sensitive.
set smartcase "Se comecar uma busca em maiusculo ele habilita o case.
set encoding=utf-8 "Encode para visualizacao do arquivo.
set fileencoding=utf-8 "Encode para gravacao do arquivo.
set fileformats=unix,dos,mac
set binary
set ttyfast
set nobackup "Nao faz backup de arquivos temporarios.
set noswapfile "Nao faz aquivos temporarios.
set noshowmode "tira o indidador de modo padrão do vim
set laststatus=2
set colorcolumn=79
"let python_highlight_all=1

"Remaps
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <S-T> :tabnew <CR>
"nnoremap <F9> :w !clear; python3 % <CR>
nnoremap <F9> :GoRun <CR>

"Limpar o highlight após uma busca com o /
autocmd InsertEnter * :let @/=""

"*****************************************************************************

"Plugins a serem instalados
"*****************************************************************************
call plug#begin()
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --go-completer' }
"Plug 'townk/vim-autoclose'
"Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"Plug 'sheerun/vim-polyglot'
"Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
"Plug 'davidhalter/jedi-vim', { 'do': 'pip install jedi' }
"Plug 'maralla/completor.vim', { 'do': 'pip install jedi' }
"Plug 'masawada/completor-dictionary'
"Plug 'vim-syntastic/syntastic'
"plug 'nvie/vim-flake8'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'mattn/emmet-vim'
"Plug 'rkulla/pydiction'
"Plug 'tweekmonster/django-plus.vim'
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
"colorscheme tango

"Jedi configurações
"
"let g:jedi#force_py_version = 3
"let g:pymode_python = 'python3'
"let g:completor_python_binary = '/usr/local/bin/python3'
"let g:jedi#completions_enabled = 0
"autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/dict/'.&filetype.'.dict')

""syntastic configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1 


"Configurações do vim-closetag
"let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
"let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
"let g:closetag_filetypes = 'html,xhtml,phtml'
"let g:closetag_xhtml_filetypes = 'xhtml,jsx'
"let g:closetag_emptyTags_caseSensitive = 1
"let g:closetag_shortcut = '>'
"let g:closetag_close_shortcut = '<leader>>'

"TagBar configuration
nmap <F8> :TagbarToggle<CR>

"
"Emmet configuration
"let g:user_emmet_leader_key=','

"
"Configuração YouCompleteMe
"let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
"let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
"let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
"let g:ycm_complete_in_comments = 1 " Completion in comments
"let g:ycm_complete_in_strings = 1 " Completion in string

"
"Configuração pydiction
"filetype plugin on
"let g:pydiction_location = '~/.vim/plugged/pydiction/complete-dict'
"let g:pydiction_menu_height = 3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""''"
