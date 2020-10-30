highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "cyberpunk"

function! HighlightFor(group, ...)
  execute "hi ".a:group
        \ ." guifg=".a:1
        \ ." guibg=".a:2
        \ ." gui=".a:3
endfunction

" general
call HighlightFor("Normal",      "#FF0055", "#101116", "NONE")
call HighlightFor("Visual",      "NONE",    "#311B92", "NONE")
call HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
call HighlightFor("LineNr",      "#FF0055", "NONE",    "NONE")
call HighlightFor("SignColumn",  "#00FFC8", "NONE",    "NONE")

call HighlightFor("DiffAdd",    "NONE", "NONE",    "NONE")
call HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE" )
call HighlightFor("DiffText",   "NONE", "#00ff84", "NONE")
call HighlightFor("DiffChange", "NONE", "NONE",    "NONE")

call HighlightFor("VertSplit", "#101116", "#101116", "NONE")

call HighlightFor("IncSearch",  "NONE", "#283593", "NONE")
call HighlightFor("Search",     "NONE", "#283593", "NONE")
call HighlightFor("Substitute", "NONE", "#283593", "NONE")

call HighlightFor("MatchParen", "#00FFC8", "NONE", "NONE")
call HighlightFor("NonText",    "#2B3E5A", "NONE", "NONE")
call HighlightFor("Whitespace", "#2B3E5A", "NONE", "NONE")

call HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
call HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
call HighlightFor("Title",     "#c592ff", "NONE", "NONE")

" Cursor {{{
call HighlightFor("Cursor",       "#00FFC8", "#00FFC8", "NONE")
call HighlightFor("CursorLine",   "NONE",    "NONE",    "underline")
call HighlightFor("CursorLineNr", "#00FFC8", "NONE",    "NONE")
call HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
" }}}

" Code {{{
" The following groups are not builtin but are defined commonly in sytax files
call HighlightFor("Comment",   "#6766b3", "NONE", "italic")
call HighlightFor("String",    "#76C1FF", "NONE", "NONE")
call HighlightFor("Number",    "fffc58",  "NONE", "NONE")
call HighlightFor("Float",     "fffc58",  "NONE", "NONE")
call HighlightFor("Boolean",   "fffc58",  "NONE", "NONE")
call HighlightFor("Character", "fffc58",  "NONE", "NONE")

call HighlightFor("Conditional",  "#00b0ff", "NONE", "NONE")
call HighlightFor("Repeat",       "#00b0ff", "NONE", "NONE")
call HighlightFor("Label",        "#00b0ff", "NONE", "NONE")
call HighlightFor("Exception",    "#00b0ff", "NONE", "NONE")
call HighlightFor("Operator",     "#00b0ff", "NONE", "NONE")
call HighlightFor("Keyword",      "#d57bff", "NONE", "NONE")
call HighlightFor("StorageClass", "#d57bff", "NONE", "NONE")
call HighlightFor("Statement",    "#d57bff", "NONE", "NONE")

call HighlightFor("Function",   "#00b0ff", "NONE", "NONE")
call HighlightFor("Identifier", "#EEFFFF", "NONE", "NONE")

call HighlightFor("PreProc", "#00FF9C", "NONE", "NONE")

call HighlightFor("Type",      "#00FF9C", "NONE", "NONE")
call HighlightFor("Structure", "#00FF9C", "NONE", "NONE")
call HighlightFor("Typedef",   "#00FF9C", "NONE", "NONE")

call HighlightFor("Underlined", "NONE",    "NONE",    "NONE")
call HighlightFor("Todo",       "#00FF9C", "#372963", "italic")
call HighlightFor("Error",      "#ff3270", "#NONE",   "undercurl")
call HighlightFor("WarningMsg", "#009550", "#NONE",   "NONE")
call HighlightFor("Special",    "#00FF9C", "#NONE",   "italic")
call HighlightFor("Tag",        "#00FF9C", "NONE",    "undercurl")
" }}}

" Pmenu {{{
call HighlightFor("Pmenu",      "#ff0055", "#140007", "NONE")
call HighlightFor("PmenuSel",   "#2088ff", "#ff0055", "NONE")
call HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
call HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
" }}}

" Status line {{{
call HighlightFor("StatusLine",   "#ff0055", "#1d000a", "bold")
call HighlightFor("StatusLineNC", "#ff0055", "#1d000a", "NONE")
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
