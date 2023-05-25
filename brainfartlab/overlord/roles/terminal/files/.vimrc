function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

  " UI changes
  call minpac#add('nordtheme/vim')
  call minpac#add('itchyny/lightline.vim')

  " fuzzy search
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')

  " asynchronous lint engine
  call minpac#add('w0rp/ale')

  " git support
  call minpac#add('airblade/vim-gitgutter')

  " HTML & CSS related plugins
  call minpac#add('mattn/emmet-vim')

  " Ansible
  call minpac#add('chase/vim-ansible-yaml')

endfunction

command! PackStatus packadd minpac | call minpac#init() | call minpac#status()
command! PackClean  call PackInit() | call minpac#clean()
command! PackUpdate call PackInit() | call minpac#update()

" General
filetype plugin indent on

set number

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Nord/Lightline configuration (all configuration variables must be set before the colorscheme activation)
" Install the Nord Gnome Terminal theme!
let g:nord_cursor_line_number_background = 1

set laststatus=2

let g:lightline = { 'colorscheme': 'nord' }

silent! colorscheme nord

" FZF configuration
nnoremap <C-p> :<C-u>FZF<CR>

" ALE configuration
let g:ale_completion_enabled = 1

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

nmap K :ALEHover<CR>
