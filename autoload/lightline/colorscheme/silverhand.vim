" =============================================================================
" Author: Diego Ulloa
" License: MIT License
" Email: diegoulloao@icloud.com
" =============================================================================

let s:yellow = { "cterm": 228, "gui": "#EDF37E" } " color primario
let s:purple = { "cterm": 141, "gui": "#5E81F5" } " visual mode color
let s:light_green = { "cterm": 148, "gui": "#00FFC8" } " insert mode color
let s:light_blue = { "cterm": 81, "gui": "#62D8F1" } " command mode blue color
let s:magenta = { "cterm": 197, "gui": "#00FFC8" } " ?
let s:orange = { "cterm": 208, "gui": "#eea806" } " not used?

let s:light_grey = { "cterm": 250, "gui": "#EDF37E" } " color de texto de toda la wea menos %
let s:grey = { "cterm": 245, "gui": "#000000" } " % fondo
let s:dark_grey = { "cterm": 59, "gui": "#101116" } " color de fondo de la wea de abajo derecha
let s:darkest_grey = { "cterm": 238, "gui": "#000000" } " color de fondo barra de abajoooo
let s:light_charcoal = { "cterm": 236, "gui": "#101116" } "color barra abajo medio inactivo
let s:charcoal = { "cterm": 235, "gui": "#101116" } " color texto wea de abajo lateralesss

function! s:add(fg, bg, style)
  return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
endfunction

let s:palette = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}, 'command': {}}

" right
let s:palette.normal.right = [
      \ s:add(s:charcoal, s:yellow, 'none'),
      \ s:add(s:yellow, s:grey, 'none'),
      \ s:add(s:purple, s:dark_grey, 'none') ]
let s:palette.inactive.right = [
      \ s:add(s:yellow, s:grey, 'none'),
      \ s:add(s:charcoal, s:dark_grey, 'none'),
      \ s:add(s:light_grey, s:grey, 'none') ]
let s:palette.command.right = [
      \ s:add(s:charcoal, s:light_blue, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.insert.right = [
      \ s:add(s:charcoal, s:light_green, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.visual.right = [
      \ s:add(s:charcoal, s:purple, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.replace.right = [
      \ s:add(s:charcoal, s:magenta, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]

" left
let s:palette.normal.left = [
      \ s:add(s:yellow, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:yellow, 'none') ]
let s:palette.command.left =  [
      \ s:add(s:light_blue, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:light_blue, 'none') ]
let s:palette.replace.left = [
      \ s:add(s:magenta, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:magenta, 'none') ]
let s:palette.insert.left = [
      \ s:add(s:light_green, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:light_green, 'none') ]
let s:palette.visual.left = [
      \ s:add(s:purple, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:purple, 'none') ]
let s:palette.inactive.left = [
      \ s:add(s:yellow, s:grey, 'none'),
      \ s:add(s:purple, s:dark_grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]

" middle
let s:palette.normal.middle = [
      \ s:add(s:yellow, s:darkest_grey, 'none') ]
let s:palette.insert.middle = [
      \ s:add(s:light_blue, s:darkest_grey, 'none') ]
let s:palette.replace.middle = [
      \ s:add(s:magenta, s:darkest_grey, 'none') ]
let s:palette.visual.middle = [
      \ s:add(s:purple, s:darkest_grey, 'none') ]
let s:palette.inactive.middle = [
      \s:add(s:yellow, s:grey, 'none') ]

" tabs
let s:palette.tabline.left = [ [ '#EDF37E', '#101116', 252, 242 ] ] " [ color texto tab inact, color fondo tab inact ]
let s:palette.tabline.tabsel = [ [ '#101116', '#EDF37E', 253, 233 ] ] " [ color texto tab selec, color fondo tab selec ]
let s:palette.tabline.middle = [ [ '#8a8a8a', '#101116', 245, 237 ] ] " [ color texto ?, color fondo tab medio ]
let s:palette.tabline.right = [ [ '#EDF37E', '#000000', 252, 242 ] ] " [ color texto ?, color fondo tab derecha cerrar ]

let s:palette.normal.error = [ [ '#d0d0d0', '#ff0000', 252, 196 ] ]
let s:palette.normal.warning = [ [ '#262626', '#ffff00', 235, 226 ] ]

let g:lightline#colorscheme#silverhand#palette = s:palette

