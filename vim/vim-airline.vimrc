" patch solarized theme to show modified status
" black for unsaved
let g:airline_theme_patch_func = 'SolarizedThemePatch'
function! SolarizedThemePatch(palette)
  if g:airline_theme == 'solarized'
    for palette_modified in [
          \ a:palette.normal_modified,
          \ a:palette.insert_modified,
          \ a:palette.visual_modified,
          \ a:palette.replace_modified ]
      for colors in values(palette_modified)
        let colors[3] = 16
      endfor
    endfor
  endif
endfunction

let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_y = airline#section#create(['%L'])
let g:airline#extensions#default#section_truncate_width = { 'x': 30, 'y': 30 }
let g:airline#extensions#default#layout = [
  \ ['a', 'c'],
  \ ['x', 'y', 'warning']
  \ ]
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }
