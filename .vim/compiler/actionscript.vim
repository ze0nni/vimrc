" Vim compiler file
" Compiler:     as3compile
" Maintainer:   Evgeny Blagodarev <ze0nni@gmail.com>
" Last Change:  2013 Mar 23

if exists("current_compiler")
  finish
endif
let current_compiler = "actionscript"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" NOTE: compiler must be runned with -vb to write whole source path, not only file
" name.
CompilerSet errorformat=[%n][%l\\,%c]\ %f\\:\ %m,OK\ %m
