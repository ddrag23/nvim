" Keyboard Mappings

" my leader key is space
" nnoremap <SPACE> <Nop>
let mapleader      = ","
let maplocalleader = ","

" for edit my .vimrc
nmap <silent> <leader>ev :cd ~/.config/nvim<cr>:NERDTreeToggle<cr>
" source vimrc
nmap <leader>es :source $MYVIMRC<cr>

" Command
nmap <leader>/ :Commentary<cr>
vmap <leader>/ :Commentary<cr>

" for switch & delete buffer
nmap <leader>n  :bn<cr>
nmap <leader>p  :bp<cr>
nmap <leader>d :bp<cr>:bd! #<cr>

" for switch & close tabs
nmap <leader><S-n> :tabnext<cr>
nmap <leader><S-p> :tabprev<cr>
nnoremap <leader><S-t><S-d> :tabclose<cr>

" this key combination gets rid of the search highlights
nmap <silent> <leader>nh :noh<cr>

" for clear highlight search
nmap <silent> <leader><space> :nohlsearch<cr>

" auto format php
function IndentPHPHTML()
    set ft=html
    normal gg=G
    if &ft == 'php'
        set ft=php
    else
        set ft=blade
    endif
endfunction
nnoremap <leader>fl :call IndentPHPHTML()<cr>

" Coc
inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code.
xmap <leader>F  <Plug>(coc-format-selected)
vmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F :call CocAction('format')<cr>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" strip all trailing whitespace in the current file
nmap <silent> <leader>W :StripWhitespace<cr>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>C :w! \| !compiler <c-r>%<CR>

" Remap exit from terminal mode
tnoremap <Esc> <C-\><C-n>

" keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" another way to esc mode
imap jj <Esc>

" I hit F1 too often when reaching esc button
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Nerdtree Sidebar
nmap <silent> <F12> :NERDTreeToggle<cr>

" for move focus to each split
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
nmap <END> <C-w>q

" sudo save
cmap w!! w !sudo tee % >/dev/null

" quit all without save
nmap :Q :qa!

" for page up & page down
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz

" taglist for org-mode
autocmd FileType org nmap <buffer> <F11> :TlistToggle<cr>

" toggle Tagbar plugin
nmap <F11> :TagbarToggle<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" fzf.vim
nmap <C-p> :Buffers<cr>
"nmap <C-f> :FZF<cr>
nmap <leader>f :Files<cr>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" prevent Vim scrolling when splitting a window
nnoremap <C-W>s Hmx`` \|:split<CR>`xzt``

" change current directory with open buffer as refference
nmap <silent> <leader>cd :cd %:p:h<cr>

" clean yank history
nmap <silent> <leader>cl :CocCommand yank.clean<cr>

" load view
nmap <silent> <leader>lv :loadview<cr>

" increment visual select with: Visual block then g C-a
" demo: https://t.me/VimID/21773
function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

" toggle for markdown checkbox with <leader>tt remap to <leader>cc
au FileType markdown map <silent> <leader>cc :call checkbox#ToggleCB()<cr>

" Easy move it up or down
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
nnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <A-j> :m '>+1<CR>gv=gv


" Printing ascii character under the cursor
nnoremap g8 :as<cr>

" overide save when typo
command! W :w
command! Wq :wq


