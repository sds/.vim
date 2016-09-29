" Initialize Vim configuration. This should be sourced/symlinked by ~/.vimrc

" Allow Unicode characters in Vim configuration files
scriptencoding utf-8
set encoding=utf-8

" Don't support VI. Saves us from the headache of unexpected configuration
" behaviour.
set nocompatible

" Load XDG configuration
let $MYVIMDIR=expand("<sfile>:h")
source $MYVIMDIR/xdg.vim

" Store pathogen-enabled bundles in the `bundles` directory
call pathogen#infect('bundles')

" Make Vim read per-filetype settings from `ftplugin` and `indent` directories
filetype plugin indent on

" Load all other configuration from the `config` directory
" ('config' makes more sense as a name than 'plugin')
runtime! config/**/*.vim
