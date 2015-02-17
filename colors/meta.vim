" Meta
"
" Uses the normal 16 colors of your terminal. Your actual colorscheme
" should be created using that. This allows people to have different
" colorschemes even when connected to a remote servers.
"
let s:black         = 0
let s:red           = 1
let s:green         = 2
let s:yellow        = 3
let s:blue          = 4
let s:purple        = 5
let s:cyan          = 6
let s:white         = 7
let s:bright_black  = 8
let s:bright_red    = 9
let s:bright_green  = 10
let s:bright_yellow = 11
let s:bright_blue   = 12
let s:bright_purple = 13
let s:bright_cyan   = 14
let s:bright_white  = 15

hi clear
syntax reset

let g:colors_name = "Meta Dark"

fun! s:color(group, ...)
  let fg   = a:0 > 0 ? a:1 : ""
  let bg   = a:0 > 1 ? a:2 : ""
  let attr = a:0 > 2 ? a:3 : ""

  exec "hi " . a:group . " cterm=none"

  if fg   != "" | exec "hi " . a:group . " ctermfg=" . fg | endif
  if bg   != "" | exec "hi " . a:group . " ctermbg=" . bg | endif
endfun

" Vim Highlighting
call s:color("Normal", s:white, s:black)
call s:color("LineNr", s:bright_black)
call s:color("NonText", s:bright_black)
call s:color("SpecialKey", s:bright_black)
call s:color("VertSplit", s:bright_black, s:bright_black)
call s:color("StatusLine", s:bright_red, s:bright_black)
call s:color("StatusLineNC", s:black, s:bright_black)
call s:color("Visual", "", s:bright_black)
call s:color("Directory", s:blue)
call s:color("ModeMsg", s:green)
call s:color("MoreMsg", s:green)
call s:color("Question", s:green)
call s:color("WarningMsg", s:red)

" Standard Highlighting
call s:color("Comment", s:bright_black)
call s:color("Todo", s:bright_yellow)
call s:color("Title", s:bright_black)
call s:color("Identifier", s:red)
call s:color("Statement", s:white)
call s:color("Conditional", s:white)
call s:color("Repeat", s:white)
call s:color("Structure", s:purple)
call s:color("Function", s:blue)
call s:color("Constant", s:bright_red)
call s:color("String", s:green)
call s:color("Special", s:white)
call s:color("PreProc", s:purple)
call s:color("Operator", s:cyan)
call s:color("Type", s:blue)
call s:color("Define", s:purple)
call s:color("Include", s:blue)
call s:color("Pmenu", "none", s:bright_black)
call s:color("PmenuSel", s:bright_white, s:bright_yellow)
call s:color("Search", s:bright_yellow, "none")

" Vim Highlighting
call s:color("vimCommand", s:red)

" C Highlighting
call s:color("cType", s:yellow)
call s:color("cStorageClass", s:purple)

" PHP Highlighting
call s:color("phpVarSelector", s:red)
call s:color("phpKeyword", s:purple)
call s:color("phpRepeat", s:purple)
call s:color("phpConditional", s:purple)
call s:color("phpStatement", s:purple)
call s:color("phpMemberSelector", s:white)

" Ruby Highlighting
call s:color("rubySymbol", s:green)
call s:color("rubyConstant", s:yellow)
call s:color("rubyAttribute", s:blue)
call s:color("rubyInclude", s:blue)
call s:color("rubyLocalVariableOrMethod", s:bright_red)
call s:color("rubyCurlyBlock", s:bright_red)

" Python Highlighting
call s:color("pythonInclude", s:purple)
call s:color("pythonStatement", s:purple)
call s:color("pythonConditional", s:purple)
call s:color("pythonFunction", s:blue)

" JavaScript Highlighting
call s:color("javaScriptBraces", s:white)
call s:color("javaScriptFunction", s:purple)
call s:color("javaScriptConditional", s:purple)
call s:color("javaScriptRepeat", s:purple)
call s:color("javaScriptNumber", s:bright_red)
call s:color("javaScriptMember", s:bright_red)	

