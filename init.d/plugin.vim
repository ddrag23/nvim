" Plugin Manager : vim-plug
" Source : https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'honza/vim-snippets'


" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'

" A command-line fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" rsi.vim: Readline style insertion (saya pakai untuk alt+delete: menghapus 1 kata).
Plug 'tpope/vim-rsi'

" A commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" Vim plugin that displays tags in a window, ordered by scope. with F8
Plug 'majutsushi/tagbar'

" Vim plugin which provides sgml (xml, html, etc.) end tag completion. autoclose tag </
Plug 'ervandew/sgmlendtag'

" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
Plug 'plasticboy/vim-markdown'

" A markdown preview plugin for (neo)vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" A Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" A dark color scheme for Vim and vim-airline, inspired by Dark+ in Visual Studio Code
Plug 'tomasiser/vim-code-dark'

" A preview colours in source code while editing
Plug 'ap/vim-css-color'

" A Syntax Highlight for Vue.js components
Plug 'posva/vim-vue'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" A tiny translate-shell wrapper for Vim
Plug 'VincentCordobes/vim-translate'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Vim multicursor
Plug 'terryma/vim-multiple-cursors'

call plug#end()
