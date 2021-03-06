"color desert
"color delek
color elflord
"set utf8 encoding
set encoding=utf8

"нормальный BackSpace
imap <BackSpace> <Esc>i<Delete>

"Переключение между буферами без необходимости сохранения
set hidden
"Автосохранение буферов при переключении
"set autowrite

syntax on
set mouse=a
set nowrap
set nu
set autoindent
set tabstop=4
set shiftwidth=4
"nmap t <esc>:tabn<cr>
"nmap T <esc>:tabp<cr>
" сворачинваие блоков
"set foldmethod=indent
highlight Folded ctermfg=2 ctermbg=0

"сохранение сессии и выход
nmap <f12> <esc>:mks!<cr>:wa<cr>:qa<cr>
imap <f12> <esc><f12>

"изменение размеров сплитов
"nmap <C-h>  <esc><C-W>3<
"nmap <C-l> <esc><C-W>3>
"nmap <C-j> <esc><C-W>3-
"nmap <C-k> <esc><C-W>3+
"nmap w <esc><C-W>w
"nmap W <esc><C-W>W

"настройки для работы snipMate
set nocompatible
filetype on
filetype plugin on

"НАСТРОЙКИ ПОИСКА
set ignorecase " ics - поиск без учёта регистра символов
set smartcase " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set hls " подсветка результатов поиска
set incsearch " поиск фрагмента по мере его набора

map <F9> :TlistToggle<cr>
vmap <F9> <esc>:TlistToggle<cr>
imap <F9> <esc>:TlistToggle<cr>

map <F8> :NERDTreeToggle<cr>
vmap <F8> <esc>:NERDTreeToggle<cr>
imap <F8> <esc>:NERDTreeToggle<cr>

" Ctrl-пробел для автодополнения

inorema <C-space> <C-x><C-o>

"Список todo и fixme
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

"поиск строки в файлах
map <F3> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

"определение тип файла по расширению
augroup filetypedetect
	autocmd! BufRead,BufNewFile *.pp setfiletype=pascal
    autocmd! BufRead,BufNewFile *.as,*.as3 	setfiletype actionscript
augroup END
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 


