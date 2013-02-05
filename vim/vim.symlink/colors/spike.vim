
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla_g_dark"

if version >= 700
  hi CursorLine     guibg=#003D4D ctermbg=16
  hi CursorColumn   guibg=#003D4D ctermbg=16
  hi MatchParen     guifg=#33CAC2 guibg=#002832 gui=bold ctermfg=79 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#EEE8D7 guibg=#003D4D ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#003D4D guibg=#EEE8D7 ctermfg=255 ctermbg=75
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#EEE8D7 ctermbg=255 gui=none
hi Normal           guifg=#EEE8D7 guibg=#002832 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#EEE8D7 guibg=#002832 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#00353F guibg=#002832 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#EEE8D7 guibg=#0C504E gui=italic ctermfg=255 ctermbg=234 cterm=italic
hi StatusLineNC     guifg=#EEE8D7 guibg=#400F10 gui=none ctermfg=255 ctermbg=235 cterm=none
hi Directory        guifg=#1B87CC guibg=#0A2036 gui=none ctermfg=255 ctermbg=234 cterm=none
hi VertSplit        guifg=#EEE8D7 guibg=#19191D gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#EEE8D7 guibg=#002832 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#36A3FF guibg=NONE	gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi Visual           guifg=#118AFF guibg=#323232 gui=none ctermfg=33 ctermbg=236 cterm=none
hi SpecialKey       guifg=#4B6C91 guibg=#0F0F13 gui=none ctermfg=60 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C02 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254F gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663268 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0003 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting

let hs_highlight_boolean=1

hi Comment guifg=#EEE8D7 gui=none ctermfg=75 cterm=none
hi Constant guifg=#22A198 gui=none ctermfg=60 cterm=none
hi Number guifg=#DE3035 gui=none ctermfg=60 cterm=none
hi Identifier guifg=#1B87CC gui=none ctermfg=51 cterm=none
hi Statement guifg=#1B87CC gui=none ctermfg=79 cterm=none
hi Function guifg=#B6882E gui=none ctermfg=45 cterm=none
hi Special guifg=#EEE8D7 gui=none ctermfg=37 cterm=none
hi PreProc guifg=#1B87CC gui=none ctermfg=37 cterm=none
hi Keyword guifg=#1B87CC gui=none ctermfg=79 cterm=none
hi String guifg=#859831 gui=none ctermfg=33 cterm=none
hi Type guifg=#249C83 gui=none ctermfg=123 cterm=none
hi pythonBuiltin guifg=#1B87CC gui=none ctermfg=51 cterm=none
hi TabLineFill guifg=#063768 gui=none ctermfg=23 cterm=none
hi Todo guifg=#FA0089 guibg=#002832 gui=none ctermfg=13 cterm=none
hi Error guifg=#EEE8D7 guibg=#972325 gui=none ctermfg=51 cterm=none

" ruby highlighting "{{{
" ----------------------------------------------------------------------
hi rubyDefine   guifg=#1B87CC gui=none ctermfg=23 cterm=none
hi rubyBoolean  guifg=#DE3035 gui=none ctermfg=23 cterm=none
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type
" }}}
" javaScript highlighting "{{{
" ----------------------------------------------------------------------
hi javaScriptDefine   guifg=#1B87CC gui=none ctermfg=23 cterm=none
hi javaScriptBoolean  guifg=#DE3035 gui=none ctermfg=23 cterm=none
hi link javaScriptClass             Keyword
hi link javaScriptModule            Keyword
hi link javaScriptKeyword           Keyword
hi link javaScriptOperator          Operator
hi link javaScriptIdentifier        Identifier
hi link javaScriptInstanceVariable  Identifier
hi link javaScriptGlobalVariable    Identifier
hi link javaScriptClassVariable     Identifier
hi link javaScriptConstant          Type
" }}}
