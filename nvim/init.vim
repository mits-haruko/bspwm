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
     
     " vim-kitty syntax
     Plug 'fladson/vim-kitty'
     
     " floaterm
     Plug 'voldikss/vim-floaterm'     
     let g:floaterm_keymap_new = '<Leader>ft'
     let g:floaterm_keymap_toggle = '<Leader>t'
   

call plug#end()

"Tokyonight theme

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

let mapleader = "\<space>"


"  BLines remap
nnoremap <C-f> :Files<CR>
nnoremap< <C-g> :Rg<CR>
nnoremap <C-b> :BLines<CR>

" Startify shortcut
nmap <C-n> :Startify<CR>

" copen and ccl
nnoremap <C-c> :copen<CR>
nnoremap <C-d> :ccl<CR>


" Tab remap
nmap <tab> :tabnext<CR>
" nnoremap <tab> :tabNext<CR>

" Numbering
set number
