" =============================================================================
" Author: Diego Ulloa
" License: MIT License
" Email: diegoulloao@icloud.com
" =============================================================================

if exists('g:lightline')

  " PALETTE
  let s:yellow = { "cterm": 228, "gui": "#FF0055" }
  let s:purple = { "cterm": 141, "gui": "#5E81F5" }
  let s:light_green = { "cterm": 148, "gui": "#00FFC8" }
  let s:light_blue = { "cterm": 81, "gui": "#62D8F1" }
  let s:magenta = { "cterm": 197, "gui": "#00FFC8" }
  let s:orange = { "cterm": 208, "gui": "#eea806" }

  let s:light_grey = { "cterm": 250, "gui": "#FF0055" }
  let s:grey = { "cterm": 245, "gui": "#000000" }
  let s:dark_grey = { "cterm": 59, "gui": "#101116" }
  let s:darkest_grey = { "cterm": 238, "gui": "#000000" }
  let s:light_charcoal = { "cterm": 236, "gui": "#101116" }
  let s:charcoal = { "cterm": 235, "gui": "#101116" }

  let s:palette = {
    \ 'normal': {},
    \ 'inactive': {},
    \ 'insert': {},
    \ 'replace': {},
    \ 'visual': {},
    \ 'tabline': {},
    \ 'command': {}
  \ }

  " -----------------------------------------------------------------------------


  function! s:add(fg, bg, style)
    return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
  endfunction

  " -----------------------------------------------------------------------------


  " RIGHT
  let s:palette.normal.right = [
    \ s:add(s:charcoal, s:yellow, 'none'),
    \ s:add(s:yellow, s:grey, 'none'),
    \ s:add(s:purple, s:dark_grey, 'none')
  \ ]

  let s:palette.inactive.right = [
    \ s:add(s:yellow, s:grey, 'none'),
    \ s:add(s:charcoal, s:dark_grey, 'none'),
    \ s:add(s:light_grey, s:grey, 'none')
  \ ]

  let s:palette.command.right = [
    \ s:add(s:charcoal, s:light_blue, 'none'),
    \ s:add(s:charcoal, s:grey, 'none'),
    \ s:add(s:light_grey, s:dark_grey, 'none')
  \ ]

  let s:palette.insert.right = [
    \ s:add(s:charcoal, s:light_green, 'none'),
    \ s:add(s:charcoal, s:grey, 'none'),
    \ s:add(s:light_grey, s:dark_grey, 'none')
  \ ]

  let s:palette.visual.right = [
    \ s:add(s:charcoal, s:purple, 'none'),
    \ s:add(s:charcoal, s:grey, 'none'),
    \ s:add(s:light_grey, s:dark_grey, 'none')
  \ ]

  let s:palette.replace.right = [
    \ s:add(s:charcoal, s:magenta, 'none'),
    \ s:add(s:charcoal, s:grey, 'none'),
    \ s:add(s:light_grey, s:dark_grey, 'none')
  \ ]

  " LEFT
  let s:palette.normal.left = [
    \ s:add(s:darkest_grey, s:yellow, 'bold'),
    \ s:add(s:yellow, s:charcoal, 'none')
  \ ]

  let s:palette.command.left =  [
    \ s:add(s:darkest_grey, s:light_green, 'bold'),
    \ s:add(s:light_green, s:charcoal, 'none')
  \ ]

  let s:palette.replace.left = [
    \ s:add(s:magenta, s:darkest_grey, 'bold'),
    \ s:add(s:charcoal, s:magenta, 'none')
  \ ]

  let s:palette.insert.left = [
    \ s:add(s:darkest_grey, s:light_blue, 'bold'),
    \ s:add(s:light_blue, s:charcoal, 'none')
  \ ]

  let s:palette.visual.left = [
    \ s:add(s:darkest_grey, s:purple, 'bold'),
    \ s:add(s:purple, s:charcoal, 'none')
  \ ]

  let s:palette.inactive.left = [
    \ s:add(s:yellow, s:grey, 'none'),
    \ s:add(s:purple, s:dark_grey, 'none'),
    \ s:add(s:light_grey, s:dark_grey, 'none')
  \ ]

  " MIDDLE
  let s:palette.normal.middle = [
    \ s:add(s:yellow, s:darkest_grey, 'none')
  \ ]

  let s:palette.insert.middle = [
    \ s:add(s:light_blue, s:darkest_grey, 'none')
  \ ]

  let s:palette.replace.middle = [
    \ s:add(s:magenta, s:darkest_grey, 'none')
  \ ]

  let s:palette.visual.middle = [
    \ s:add(s:purple, s:darkest_grey, 'none')
  \ ]

  let s:palette.inactive.middle = [
    \ s:add(s:yellow, s:grey, 'none')
  \ ]

  " -----------------------------------------------------------------------------


  " TABS
  let s:palette.tabline.left = [ [ '#FF0055', '#101116', 252, 242 ] ]
  let s:palette.tabline.tabsel = [ [ '#101116', '#FF0055', 253, 233 ] ]
  let s:palette.tabline.middle = [ [ '#8a8a8a', '#101116', 245, 237 ] ]
  let s:palette.tabline.right = [ [ '#FF0055', '#000000', 252, 242 ] ]

  let s:palette.normal.error = [ [ '#d0d0d0', '#ff0000', 252, 196 ] ]
  let s:palette.normal.warning = [ [ '#262626', '#ffff00', 235, 226 ] ]

  " -----------------------------------------------------------------------------


  let g:lightline#colorscheme#cyberpunk#palette = s:palette

endif
