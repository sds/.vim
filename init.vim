" Initialize Vim configuration. This should be sourced/symlinked by ~/.vimrc

" Don't support VI. Saves us from the headache of unexpected configuration
" behaviour.
set nocompatible

" Store pathogen-enabled bundles in the `bundles` directory
call pathogen#infect('bundles')

" Make Vim read per-filetype settings from `ftplugin` and `indent` directories
filetype plugin indent on

" Load all other configuration from the `config` directory
" ('config' makes more sense as a name than 'plugin')
runtime! config/**/*.vim
