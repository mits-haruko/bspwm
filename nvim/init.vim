" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " TokyoNight theme
     Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    "Vimtex
     Plug 'lervag/vimtex'
       let g:vimtex_view_method = 'zathura'
       "let g:vimtex_view_general_viewer = 'evince'
      
    "TeX Snips
     Plug 'SirVer/ultisnips'
	    let g:UltiSnipsExpandTrigger = '<tab>'
	    let g:UltiSnipsJumpForwardTrigger = '<tab>'
	    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	    let g:UltiSnipsSnippetDirectories=["UltiSnips", "tex.snippets"]
   
    "Better Syntax Support
     Plug 'sheerun/vim-polyglot'
    

    "Auto pairs for '(' '[' '{'
     Plug 'jiangmiao/auto-pairs'
    
    " Ranger plugin
     Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
      let g:rnvirm_ex_enable = 1 
      nmap <C-r>  :RnvimrToggle<CR>

    " Lightline
     Plug 'itchyny/lightline.vim'
       set noshowmode
       let g:lightline = {
             \ 'colorscheme': 'tokyonight',
             \}
     
     " Treesitter 
     Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
      
     " hexokinase (colorizer)
     Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
     let g:Hexokinase_highlighters = ['backgroundfull']
     
     " FZF and vim-rooter
     Plug 'junegunn/fzf', {'do': {-> fzf#install()}}

     Plug 'junegunn/fzf.vim'

     Plug 'airblade/vim-rooter'
     
     " Startify
     Plug 'mhinz/vim-startify'

     " Coc
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
     " Telescope 
     Plug 'nvim-lua/plenary.nvim'
     Plug 'nvim-telescope/telescope.nvim'

     " vim-kitty syntax
     Plug 'fladson/vim-kitty'
     
     " floaterm
     Plug 'voldikss/vim-floaterm'     
     let g:floaterm_keymap_new = '<Leader>ft'
     let g:floaterm_keymap_toggle = '<Leader>t'

     " Folding
     Plug 'kevinhwang91/nvim-ufo'
     Plug 'kevinhwang91/promise-async'

     " NERDTree
     Plug 'preservim/nerdtree'
     let NERDTreeShowHidden=1

call plug#end()

"" COLOR SPECIFICATION

" Tokyonight theme

" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

colorscheme tokyonight

"" KEYMAPS 

let mapleader = "\<space>"

"  BLines remap
nnoremap <C-f> :Files<CR>
nnoremap< <C-g> :Rg<CR>
nnoremap <C-b> :BLines<CR>

" Startify shortcut
nmap <C-s> :Startify<CR>

" copen and ccl
nnoremap <C-c> :copen<CR>
nnoremap <C-d> :ccl<CR>

" Tab remap
nmap <C-tab> :tabnext<CR>
" nnoremap <tab> :tabNext<CR>

" NERDTree mappings
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>b :Bookmark<CR>

" Save text folding
autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

" Numbering
set number

syntax enable

" Startify correct order display
let g:startify_lists = [
      \ {'type': 'bookmarks', 'header': [ ' Bookmarks']  },
      \ {'type': 'dir',       'header': [' Current Directory']},
      \ { 'type': 'files',    'header': ['  Files']  },
      \]

" Startify with NERDTree bookmarks
let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

" Startify fujiwara meme
let g:startify_custom_header = [
      \
    \'',
    \'',
    \'        ⢀⣴⡾⠃⠄⠄⠄⠄⠄⠈⠺⠟⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣶⣤⡀  ',
    \'      ⢀⣴⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣷ ',
    \'     ⣴⣿⡿⡟⡼⢹⣷⢲⡶⣖⣾⣶⢄⠄⠄⠄⠄⠄⢀⣼⣿⢿⣿⣿⣿⣿⣿⣿⣿ ',
    \'    ⣾⣿⡟⣾⡸⢠⡿⢳⡿⠍⣼⣿⢏⣿⣷⢄⡀⠄⢠⣾⢻⣿⣸⣿⣿⣿⣿⣿⣿⣿ ',
    \'  ⣡⣿⣿⡟⡼⡁⠁⣰⠂⡾⠉⢨⣿⠃⣿⡿⠍⣾⣟⢤⣿⢇⣿⢇⣿⣿⢿⣿⣿⣿⣿⣿ ',
    \' ⣱⣿⣿⡟⡐⣰⣧⡷⣿⣴⣧⣤⣼⣯⢸⡿⠁⣰⠟⢀⣼⠏⣲⠏⢸⣿⡟⣿⣿⣿⣿⣿⣿ ',
    \' ⣿⣿⡟⠁⠄⠟⣁⠄⢡⣿⣿⣿⣿⣿⣿⣦⣼⢟⢀⡼⠃⡹⠃⡀⢸⡿⢸⣿⣿⣿⣿⣿⡟ ',
    \' ⣿⣿⠃⠄⢀⣾⠋⠓⢰⣿⣿⣿⣿⣿⣿⠿⣿⣿⣾⣅⢔⣕⡇⡇⡼⢁⣿⣿⣿⣿⣿⣿⢣ ',
    \' ⣿⡟⠄⠄⣾⣇⠷⣢⣿⣿⣿⣿⣿⣿⣿⣭⣀⡈⠙⢿⣿⣿⡇⡧⢁⣾⣿⣿⣿⣿⣿⢏⣾ ',
    \' ⣿⡇⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢻⠇⠄⠄⢿⣿⡇⢡⣾⣿⣿⣿⣿⣿⣏⣼⣿ ',
    \' ⣿⣷⢰⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣧⣀⡄⢀⠘⡿⣰⣿⣿⣿⣿⣿⣿⠟⣼⣿⣿ ',
    \' ⢹⣿⢸⣿⣿⠟⠻⢿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣉⣤⣿⢈⣼⣿⣿⣿⣿⣿⣿⠏⣾⣹⣿⣿ ',
    \' ⢸⠇⡜⣿⡟⠄⠄⠄⠈⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟⣱⣻⣿⣿⣿⣿⣿⠟⠁⢳⠃⣿⣿⣿ ',
    \'  ⣰⡗⠹⣿⣄⠄⠄⠄⢀⣿⣿⣿⣿⣿⣿⠟⣅⣥⣿⣿⣿⣿⠿⠋  ⣾⡌⢠⣿⡿⠃ ',
    \' ⠜⠋⢠⣷⢻⣿⣿⣶⣾⣿⣿⣿⣿⠿⣛⣥⣾⣿⠿⠟⠛⠉            ',
    \'',
    \  ]
