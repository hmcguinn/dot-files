"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2022 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
"let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'



set updatetime=100

" === NERDTREE CONFIG ===
"
" Open nerdtree if opening vim to a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd l | endif
" Slightly wider than default
let g:NERDTreeWinSize=25
set ignorecase

"Trying for Ruby
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1
"let g:rubycomplete_load_gemfile = 1
"let ruby_spellcheck_strings = 1
"let ruby_space_errors = 1
"g:neomake_ruby_enabled_makers
"
"let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_ruby_rubocop_maker = {
  \ 'exe': '/Users/houlton.mcguinn/workspace/zenpayroll/bin/rubocop',
    \ 'args': ['--format','emacs','--force-exclusion','--display-cop-names'],
    \ 'auto_enabled': 1,
    \ 'errorformat': '%f:%l:%c: %t: %m,%E%f:%l: %m',
    \ 'output_stream': 'stdout',
    \ 'postprocess': function('neomake#makers#ft#ruby#RubocopEntryProcess')
    \ }
"\ 'supports_stdin': function('555'),


execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

nnoremap <space>ff :FZF<CR>
nnoremap <space>fF :Ag<CR>
let &colorcolumn=join(range(81,999),",")
