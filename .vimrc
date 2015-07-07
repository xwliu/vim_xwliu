"""""""""""""""""""""""""""""""""""""""""""""""""
"加注释的
""""""""""""""""""""""""""""""""""""""""""""
"colorscheme desert
let &termencoding = &fileencodings   
set fileencodings=utf-8,GB18030,ucs-bom,default,latin1 "显示中文
"colorscheme darkZ
"set guifont=Luxi/ Mono/ 9 "设置字体、字体名称、字号

set tabstop=4	" Tab键的宽度
set backspace=2	" 使回格键（backspace）正常处理indent, eol, start等
set nu!              " 显示行号
"set wrap           " 自动换行 
"set nowrap         " 不自动换行 
set linebreak       " 整词换行 
set whichwrap=b,s,<,>,[,]       " 光标从行首和行末时可以跳到另一行去 
syntax on			"语法高亮
syntax enable			"语法高亮
set autoindent	" 自动缩进
autocmd InsertEnter * se cul "显示当前行线。
set autochdir 	"自动设置目录为正在编辑的文件所在的目录
set scrolloff=5
"-------------------------------------------------------------------------------- 
" 查找/替换相关的设置 
"-------------------------------------------------------------------------------- 
set ignorecase	"搜索忽略大小写
set hlsearch        " 高亮显示搜索结果 
set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到 
                    " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的 
                    " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你 
                    " 找要匹配的单词时，别忘记回车 
set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个 



"-------------------------------------------------------------------------------- 
"----状态栏显示相关-------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 


set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2    " always show the status line
set ruler           " 在编辑过程中，在右下角显示光标位置的状态行



set autoread		" 设置当文件被改动时自动载入
set cursorline              " 突出显示当前行

set smartindent	"智能的选择对起方式；
set softtabstop=4	"统一缩进为4
set shiftwidth=4	"将换行自动缩进设置成4个空格
set history=100	" 历史记录数




"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 
"-------------------------------------------------------------------------------- 


set wildmenu	" 增强模式中的命令行自动完成操作
"set mouse=a	" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive	"??
set selectmode=mouse,key	"??
set showmatch	" 高亮显示匹配的括号
set matchtime=1	" 匹配括号高亮的时间（单位是十分之一秒）
set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码
"set foldclose=all          " 设置为自动关闭折叠                
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                            " 用空格键来开关折叠


"自动补全
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)	"
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endfunction
filetype plugin indent on	
"打开文件类型检测, 加了这句才可以用智能补全
"-----------------------------------------------------------
"粘贴模式
"-----------------------------------------------------------
":set paste           :set nopaste
"-------------------------------------------------------------------------------- 
" 模仿MS Windows中的快捷键 
"-------------------------------------------------------------------------------- 
vmap <C-c> "yy 
vmap <C-x> "yd 
nmap <C-v> "yp 
vmap <C-v> "yp 
nmap <C-a> ggvG$ 
 
"-------------------------------------------------------------------------------- 
" 窗口操作的快捷键 
"-------------------------------------------------------------------------------- 
nmap wv     <C-w>v     " 垂直分割当前窗口 
nmap wc     <C-w>c     " 关闭当前窗口 
nmap ws     <C-w>s     " 水平分割当前窗口 
 
"-------------------------------------------------------------------------------- 
" 模仿MS Windows中的保存命令: Ctrl+S 
"-------------------------------------------------------------------------------- 
imap <C-s> <Esc>:wa<cr>i<Right> 
nmap <C-s> :wa<cr> 
"-------------------------------------------------------------------------------- 
" 多窗口之间跳转
"-------------------------------------------------------------------------------- 
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <C-i> [<C-i>
"-------------------------------------------------------------------------------- 
" 编程相关的设置 
"-------------------------------------------------------------------------------- 
set completeopt=longest,menu    " 关掉智能补全时的预览窗口 
"filetype plugin indent on       " 加了这句才可以用智能补全 
"filetype on       " 加了这句才可以用智能补全 
set ai!             " 设置自动缩进




"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"set nocompatible              " be iMproved, required这里不设置也可以安装
filetype plugin indent off       
filetype off " required! turn off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim里面支持shell终端
" c/c++项目工程插件
Bundle 'skoo87/p'
" 书签插件
Bundle 'skoo87/bookmarking.vim'
" 主要提供 xolox#shell#execute() 后台执行外部命令的接口
"Bundle 'vim-scripts/shell.vim--Odding'
" vim-scripts 库
"
Bundle 'winmanager'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'taglist.vim'
Bundle 'OmniCppComplete'
Bundle 'The-NERD-tree'
Bundle 'SuperTab'
Bundle 'a.vim'
Bundle 'c.vim'
Bundle 'genutils'
Bundle 'grep.vim'
Bundle 'SudoEdit.vim'
Bundle 'unite.vim'
Bundle 'desertEx'

call vundle#end()            " required
filetype plugin indent on    " required
filetype on       " 加了这句才可以用智能补全 
"set compatible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist的设定  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1
"设置ctags  
map <F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
"imap <F11> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags  	

"--------------------------------------------------------------------------------
" SuperTab :SuperTabHelp
"--------------------------------------------------------------------------------
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"let g:SuperTabDefaultCompletionType="context" 

"--------------------------------------------------------------------------------
" A.vim .c和.h之间切换
"--------------------------------------------------------------------------------
nnoremap <silent> <F12> :A<CR>

"--------------------------------------------------------------------------------
" Grep
"--------------------------------------------------------------------------------
"直接按下<F3>键来查找光标所在的字符串
nnoremap <silent> <F3> :Rgrep<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
"--------------------------------------------------------------------------------
" MiniBufExp
"--------------------------------------------------------------------------------
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

"--------------------------------------------------------------------------------
" WinManager :WMToggle
"--------------------------------------------------------------------------------
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth = 30
let g:defaultExplorer = 0
"nmap <C-w><C-b> :BottomExplorerWindow<cr> " 切换到最下面一个窗格
"nmap <C-w><C-f> :FirstExplorerWindow<cr>   " 切换到最上面一个窗格
nmap wm :WMToggle<cr> " 是nomal模式的命令，不是Ex模式的


"--------------------------------------------------------------------------------
" netrw 文件浏览器 :e <PATH>
"--------------------------------------------------------------------------------
"let g:netrw_winsize = 30       " 浏览器宽度

"--------------------------------------------------------------------------------
" QuickFix110 "--------------------------------------------------------------------------------
nmap <F6> :cn<cr>   "切换到下一个结果
nmap <F7> :cp<cr>   "切换到上一个结果
"--------------------------------------------------------------------------------
"" cscope
""--------------------------------------------------------------------------------
"cs add /home/nfs/microwindows/src/cscope.out /home/nfs/microwindows/src
:set cscopequickfix=s-,c-,d-,i-,t-,e-
:set cscopetag
" 按下面这种组合键有技巧,按了<C-_>后要马上按下一个键,否则屏幕一闪
" 就回到nomal状态了
" <C-_>s的按法是先按"Ctrl+Shift+-",然后很快再按"s"
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<cr><cr> :cw<cr>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<cr><cr> :cw<cr>

"--------------------------------------------------------------------------------
" NERD_commenter
"--------------------------------------------------------------------------------
let NERD_c_alt_style = 1    " 将C语言的注释符号改为//, 默认是/**/
"nmap <F5> ,cc
"--------------------------------------------------------------------------------
" CVim :help csupport
"--------------------------------------------------------------------------------
let g:C_Comments = "no"         " 用C++的注释风格
let g:C_BraceOnNewLine = "yes"   " '{'是否独自一行
let g:C_AuthorName = "xwliu"
"let g:C_Project="F9"
let g:Cpp_Template_Function = "c-function-description-xwliu"
let g:C_TypeOfH = "c"           " *.h文件的文件类型是C还是C++
