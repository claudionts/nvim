call plug#begin()
"""Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

Plug 'iberianpig/tig-explorer.vim'
Plug 'rbgrouleff/bclose.vim'

Plug 'Olical/vim-enmasse'

Plug 'tpope/vim-commentary'

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'elixir-lang/vim-elixir'

Plug 'vim-test/vim-test'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

Plug 'rakr/vim-one'

" If you are using Vim-Plug
Plug 'tjdevries/colorbuddy.nvim'
Plug 'marko-cerovac/material.nvim', { 'branch': 'colorbuddy' }

Plug 'lewis6991/gitsigns.nvim'
Plug 'lewis6991/gitsigns.nvim', { 'branch': 'stable' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/vimux'

Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'

Plug 'tyru/open-browser-github.vim'

Plug 'tyru/open-browser.vim'

Plug 'liuchengxu/space-vim-dark'
call plug#end()

"""colorscheme gruvbox
"""colorscheme material 
"""let g:material_style='palenight'

"""set background=dark
""" :lua require('material').toggle_style()<CR>
"""lua require('material').change_style("darker")
colorscheme space-vim-dark
hi Comment cterm=italic
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE


set hidden
set number
set mouse=a
set inccommand=split
set clipboard+=unnamedplus
set omnifunc=javascriptcomplete#CompleteJS

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"""nnoremap <c-p> :Files<cr>
nnoremap <c-p> :GitFiles<CR>
nnoremap <c-f> :Ag<space>
nnoremap <c-b> :NERDTreeToggle<cr>

let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.jumpCommand'] = ':SplitIfNotOpen4COC'

if exists('$TMUX')
  let g:test#strategy = 'vimux'
endif

autocmd FileType elixir,eelixir nnoremap <c-\> :ALEFindReferences<CR>
let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls']
let g:python_host_prog = '/path/to/python'


" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("~/.elixir-ls/rel")

" Optional, you can disable Dialyzer with this setting
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

" CTRL-A CTRL-Q to select all and build quickfix list
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
