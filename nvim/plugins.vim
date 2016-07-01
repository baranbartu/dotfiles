function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

if has("nvim")
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged_vim')
endif

" programming
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'benekastah/neomake'
Plug 'tpope/vim-fugitive'

" editing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'

" navigating
Plug 'tpope/vim-vinegar'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/junkfile.vim'
Plug 'tpope/vim-unimpaired'

" vim interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
if has("nvim")
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'zchee/deoplete-jedi'
  Plug 'zchee/deoplete-go', { 'do': 'make'}
  Plug 'frankier/neovim-colors-solarized-truecolor-only'
else
  Plug 'altercation/vim-colors-solarized'
endif
Plug 'szw/vim-smartclose'

" python
Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'jmcantrell/vim-virtualenv'

" javascript
Plug 'tpope/vim-jdaddy'

" django
Plug 'tweekmonster/django-plus.vim'

" misc
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'rizzatti/dash.vim'
Plug 'rizzatti/funcoo.vim'
Plug 'sjl/vitality.vim'
Plug 'kana/vim-textobj-user'
Plug 'diepm/vim-rest-console'
Plug 'benmills/vimux'

" haskell
Plug 'dag/vim2hs'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'

" golang
Plug 'fatih/vim-go'

" rust-lang
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()
