syntax enable "自动语法高亮
syntax on "自动语法高亮
"----------------------------------
"设置快捷键1234控制文档格式
"------------------------------------
filetype on
nnoremap <leader>1 :set filetype=html<CR>  
nnoremap <leader>2 :set filetype=css<CR>  
nnoremap <leader>3 :set filetype=javascript<CR>  
nnoremap <leader>4 :set filetype=php<CR>
filetype plugin indent on "开启插件
set t_Co=256 "256色
colorscheme solarized  "主题
set number "显示行号
set cursorline "突出显示当前行
set autoindent
set smartindent " 开启新行时使用智能自动缩进
set tabstop=4 "设定tab长度为4
set showmatch 
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch "输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set guifont=consolas:18 "
"inoremap ( ()<LEFT> 
inoremap [ []<LEFT>
"inoremap { {}<LEFT>
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" 设置在状态行显示的信息
"set foldenable              " 开始折叠
"set fdm=indent       " 设置语法折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为
" set foldclose=all           " 设置为自动关闭折叠                            
 nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠

set ai!
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix
"set encoding=prc
" color
if $TERM =~ '^xterm' || $TERM =~ '^screen' || $TERM=~ '256color$'
"set t_Co=256
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized 
elseif has('gui_running')
set background=light
let g:solarized_termcolors = 256
colorscheme solarized 
elseif $TERM =~ 'cons25'
colorscheme default
endif
"-----------------------------------------------------------------
"plugin 'NeoComplCache.vim'   " 自动补全插件
"-----------------------------------------------------------------
"let g:AutoComplPop_NotEnableAtStartup = 1
"let g:NeoComplCache_EnableAtStartup = 1
"let g:NeoComplCache_SmartCase = 1
"let g:NeoComplCache_TagsAutoUpdate = 1
"let g:NeoComplCache_EnableInfo = 1
"let g:NeoComplCache_EnableCamelCaseCompletion = 1
"let g:NeoComplCache_MinSyntaxLength = 3
"let g:NeoComplCache_EnableSkipCompletion = 1
"let g:NeoComplCache_SkipInputTime = '0.5'
"let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
" <TAB> completion.
" inoremap <expr><TAB> pumvisible( ) ? "\<C-n>" : "\<TAB>"
" " snippets expand key
" imap <silent> <C-e> <Plug>( neocomplcache_snippets_expand)
" smap <silent> <C-e> <Plug>( neocomplcache_snippets_expand)
"-----------------------------------------------------------------
"plugin 'matchit.vim'   "对%命令进行扩展使得能在嵌套标签和语句之间跳转
" % 正向匹配      g% 反向匹配
" " [% 定位块首     ]% 定位块尾
" "-----------------------------------------------------------------]
source ~/.vim/ftplugin/matchit.vim
