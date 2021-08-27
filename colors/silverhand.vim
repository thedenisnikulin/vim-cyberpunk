highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "silverhand"

function! HighlightFor(group, ...)
  execute "hi ".a:group
        \ ." guifg=".a:1
        \ ." guibg=".a:2
        \ ." gui=".a:3
endfunction

" general 
call HighlightFor("Normal",      "#EDF37E", "#101116", "NONE") " old bg: #101116, 
call HighlightFor("Visual",      "NONE",    "#19213b", "NONE")
call HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
call HighlightFor("LineNr",      "#5E81F5", "NONE",    "NONE")
call HighlightFor("SignColumn",  "#00FFC8", "NONE",    "NONE")

call HighlightFor("DiffAdd",    "NONE", "NONE",    "NONE")
call HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE" )
call HighlightFor("DiffText",   "NONE", "#00ff84", "NONE")
call HighlightFor("DiffChange", "NONE", "NONE",    "NONE")

call HighlightFor("VertSplit", "#EDF37E", "#101116", "NONE")

call HighlightFor("IncSearch",  "NONE", "#283593", "NONE")
call HighlightFor("Search",     "NONE", "#283593", "NONE")
call HighlightFor("Substitute", "NONE", "#283593", "NONE")

call HighlightFor("MatchParen", "#FF0055", "#00FFC8", "NONE")
call HighlightFor("NonText",    "#2B3E5A", "NONE", "NONE")
call HighlightFor("Whitespace", "#2B3E5A", "NONE", "NONE")

call HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
call HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
call HighlightFor("Title",     "#c592ff", "NONE", "NONE")

" Cursor {{{
call HighlightFor("Cursor",       "#00FFC8", "NONE",    "NONE")
call HighlightFor("CursorLineNr", "#000000", "#00FFC8", "NONE")

" Cursorline type
if exists("g:cyberpunk_cursorline") && g:cyberpunk_cursorline == "black"
  call HighlightFor("CursorLine",   "NONE", "#000000", "NONE")
else
  call HighlightFor("CursorLine",   "#0a0d04", "#5E81F5", "NONE")
endif

call HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
" }}}

" Code {{{
" The following groups are not builtin but are defined commonly in syntax files
call HighlightFor("Comment",   "#6766b3", "NONE", "NONE")
call HighlightFor("String",    "#5E81F5", "NONE", "NONE")
call HighlightFor("Number",    "#fffc58",  "NONE", "NONE")
call HighlightFor("Float",     "#fffc58",  "NONE", "NONE")
call HighlightFor("Boolean",   "#fffc58",  "NONE", "NONE")
call HighlightFor("Character", "#fffc58",  "NONE", "NONE")

call HighlightFor("Conditional",  "#EDF37E", "NONE", "NONE")
call HighlightFor("Repeat",       "#EDF37E", "NONE", "NONE")
call HighlightFor("Label",        "#EDF37E", "NONE", "NONE")
call HighlightFor("Exception",    "#EDF37E", "NONE", "NONE")
call HighlightFor("Operator",     "#EDF37E", "NONE", "NONE")
call HighlightFor("Keyword",      "#8aebf1", "NONE", "NONE") " old #d57bff
call HighlightFor("StorageClass", "#8aebf1", "NONE", "NONE")
call HighlightFor("Statement",    "#8aebf1", "NONE", "NONE")

call HighlightFor("Function",   "#00b0ff", "NONE", "NONE")
call HighlightFor("Identifier", "#EEFFFF", "NONE", "NONE")

call HighlightFor("PreProc", "#00FF9C", "NONE", "NONE")

call HighlightFor("Type",      "#00FF9C", "NONE", "NONE")
call HighlightFor("Structure", "#00FF9C", "NONE", "NONE")
call HighlightFor("Typedef",   "#00FF9C", "NONE", "NONE")

call HighlightFor("Underlined", "NONE",    "NONE",    "NONE")
call HighlightFor("Todo",       "#00FF9C", "#372963", "italic")
call HighlightFor("Error",      "#ff3270", "NONE",   "undercurl")
call HighlightFor("WarningMsg", "#009550", "NONE",   "NONE")
call HighlightFor("Special",    "#00FF9C", "NONE",   "italic")
call HighlightFor("Tag",        "#00FF9C", "NONE",    "undercurl")
" }}}

" Pmenu {{{
call HighlightFor("Pmenu",      "#EDF37E", "#070811", "NONE")
call HighlightFor("PmenuSel",   "#0a0d04", "#5E81F5", "NONE")
call HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
call HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
" }}}

" Status line {{{
call HighlightFor("StatusLine",   "#EDF37E", "#1d000a", "bold")
call HighlightFor("StatusLineNC", "#EDF37E", "#000000", "NONE")
" }}}

" Tab pages {{{
call HighlightFor("TabLine",     "#FF4081", "NONE", "NONE")
call HighlightFor("TabLineFill", "NONE",    "NONE", "NONE")
call HighlightFor("TabLineSel",  "#FF4081", "NONE", "bold")
" }}}

" Folds {{{
call HighlightFor("Folded",     "#00FFC8", "NONE", "italic")
call HighlightFor("FoldColumn", "#00FFC8", "NONE", "NONE")
" }}}

