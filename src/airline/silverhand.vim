
" It is based on vim-airline's ["tomorrow" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/tomorrow.vim).
function! airline#themes#silverhand#refresh()

  if get(g:, 'silverhand_termcolors', 256) == 16
	let s:term_dark_blue = 0
    let s:term_red = 1
    let s:term_green = 10
    let s:term_yellow = 11
    let s:term_blue = 4
    let s:term_purple = 5
  else
	let s:term_dark_blue = 16
    let s:term_red = 123
    let s:term_green = 83
    let s:term_yellow = 227
    let s:term_blue = 26
    let s:term_purple = 171
  endif

  let g:airline#themes#silverhand#palette = {}

  let g:airline#themes#silverhand#palette.accents = {
        \ 'red': [ '#EF4B51', '', s:term_red, 0 ]
        \ }

  let s:N1 = [ '#070811', '#EDF37E', s:term_dark_blue, s:term_yellow ]
  let s:N2 = [ '#EDF37E', '#101116', s:term_yellow, s:term_dark_blue ]
  let s:N3 = [ '#5E81F5', '#070811', s:term_blue, s:term_dark_blue ]
  let g:airline#themes#silverhand#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#silverhand#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = [ '#070811', '#5E81F5', s:term_dark_blue, s:term_blue ]
  let s:I2 = s:N2
  let s:I3 = [ '#EDF37E', '#070811', s:term_yellow, s:term_dark_blue ]
  let g:airline#themes#silverhand#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#silverhand#palette.insert_modified = g:airline#themes#onedark#palette.normal_modified

  let s:R1 = [ '#070811', '#00FF9C', s:term_dark_blue, s:term_green ]
  let s:R2 = s:N2
  let s:R3 = [ '#00FF9C', '#070811', s:term_green, s:term_dark_blue ]
  let g:airline#themes#silverhand#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#silverhand#palette.replace_modified = g:airline#themes#onedark#palette.normal_modified

  let s:V1 = [ '#070811', '#D57BFF', s:term_dark_blue, s:term_purple ]
  let s:V2 = s:N2
  let s:V3 = [ '#D57BFF', '#070811', s:term_purple, '' ]
  let g:airline#themes#silverhand#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#silverhand#palette.visual_modified = g:airline#themes#onedark#palette.normal_modified

  let s:IA1 = [ '#070811', '#EDF37E', s:term_dark_blue, s:term_yellow ]
  let s:IA2 = [ '#EDF37E', '#070811', s:term_yellow, s:term_dark_blue ]
  let s:IA3 = s:N2
  let g:airline#themes#silverhand#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#silverhand#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  " Warnings
  let s:WI = [ '#EDF37E', '#070811', s:term_yellow, s:term_dark_blue ]
  let g:airline#themes#silverhand#palette.normal.airline_warning = [
       \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
       \ ]

  let g:airline#themes#silverhand#palette.normal_modified.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.insert.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.insert_modified.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.visual.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.visual_modified.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.replace.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  let g:airline#themes#silverhand#palette.replace_modified.airline_warning =
      \ g:airline#themes#silverhand#palette.normal.airline_warning

  " Errors
  let s:ER = [ '#EDF37E', '#070811', s:term_yellow, s:term_dark_blue ]
  let g:airline#themes#silverhand#palette.normal.airline_error = [
       \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
       \ ]

  let g:airline#themes#silverhand#palette.normal_modified.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.insert.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.insert_modified.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.visual.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.visual_modified.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.replace.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

  let g:airline#themes#silverhand#palette.replace_modified.airline_error =
      \ g:airline#themes#silverhand#palette.normal.airline_error

endfunction

call airline#themes#silverhand#refresh()
