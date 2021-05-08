set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set directory^=$HOME/.vim/swap//
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'vim-airline/vim-airline-themes'
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin
set number
execute pathogen#infect()

set hidden
set switchbuf=useopen,usetab
set relativenumber

" comments in vimrc start with "
" " in normal mode
 nnoremap <Left>  : echoe "Use h" <CR>
 nnoremap <Right> : echoe "Use l" <CR>
 nnoremap <Up>    : echoe "Use k" <CR>
 nnoremap <Down>  : echoe "Use j" <CR>
" " in insert mode
 "inoremap <Left>  : echoe "Use h" <CR>
 "inoremap <Right> : echoe "Use l" <CR>
 "inoremap <Up>    : echoe "Use k" <CR>
 "inoremap <Down>  : echoe "Use j" <CR>

"Vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='simple'

"Sidebar            
set t_Co=256



"fonts and colorschemes
syntax on
colorscheme molokai
let g:molokai_original = 1




" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

"setting jsx-tags colors 
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

set backspace=indent,eol,start  "more powerful backspacing
set nowrap
set tabstop=4
set shiftwidth=4
set noswapfile
set autoindent
set smartindent
set cindent
set showcmd
set ma


hi Visual term=reverse cterm=reverse guibg=Grey


filetype plugin on

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"settings for netrw

"Per default netrw leaves unmodified buffers open. This autocommand
"delets netrw's buffer once it's hidden (using ' :q,for example)
autocmd FileType netrw setl bufhidden=delete "or use :qa!

set nocompatible "Limit search to your project
set path+=** "Search all subdirectories and recursively
set wildmenu "Shows multiple matches on one line

"COC flutter configuration <leader>aap for current paragraph, <leader>aw for
"the current word
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
 
"let dart_html_in_string=v:true
let dart_html_in_string=v:true
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = {'defaults': v:true,'PreviousReference': '<C-l>',}
"let g:lsc_auto_map = v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1


" Shortcut to use blackhole register by default
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X


" Change <leader> to be comma
let mapleader = ","
let g:mapleader = ","



" Shortcut to use clipboard with <leader>
nnoremap <leader>d d
vnoremap <leader>d d
nnoremap <leader>D D
vnoremap <leader>D D
nnoremap <leader>c c
vnoremap <leader>c c
nnoremap <leader>C C
vnoremap <leader>C C
nnoremap <leader>x x
vnoremap <leader>x x
nnoremap <leader>X X
vnoremap <leader>X X
