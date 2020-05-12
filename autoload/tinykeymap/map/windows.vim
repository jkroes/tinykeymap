" windows.vim
" @Author:      Tom Link (mailto:micathom AT gmail com?subject=[vim])
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
" @Created:     2012-08-28.
" @Last Change: 2012-09-09.
" @Revision:    46

if !exists('g:tinykeymap#map#windows#map')
    " Map leader for the "windows" tinykeymap.
    let g:tinykeymap#map#windows#map = "<C-W>"   "{{{2
endif


" Based on Andy Wokulas's windows mode for tinymode.
call tinykeymap#EnterMap("windows", g:tinykeymap#map#windows#map, {
            \ 'name': 'windows mode',
            \ 'message': 'winnr() .": ". bufname("%")'
            \ })
call tinykeymap#Map('windows', '>', '<count>wincmd >', {'desc': 'Increase width'})
call tinykeymap#Map('windows', '<', '<count>wincmd <', {'desc': 'Decrease width'})
call tinykeymap#Map('windows', '+', 'resize +<count1>', {'desc': 'Increase height'})
call tinykeymap#Map('windows', '-', 'resize -<count1>', {'desc': 'Decrease height'})
call tinykeymap#Map('windows', '=', 'wincmd =', {'desc': 'Make equally high and wide'})
call tinykeymap#Map('windows', 'x', '<count>wincmd x', {'desc': 'Exchange windows'})
call tinykeymap#Map('windows', 'K', 'wincmd K', {'desc': 'Move current window to the top'})
call tinykeymap#Map('windows', 'J', 'wincmd J', {'desc': 'Move current window to the bottom'})
call tinykeymap#Map('windows', 'H', 'wincmd H', {'desc': 'Move current window to the left'})
call tinykeymap#Map('windows', 'L', 'wincmd L', {'desc': 'Move current window to the right'})
call tinykeymap#Map('windows', 'T', 'wincmd T', {'desc': 'Move current window to a new tab page'})
call tinykeymap#Map('windows', 'h', '<count>wincmd h', {'desc': 'Window above'})
call tinykeymap#Map('windows', 'j', '<count>wincmd j', {'desc': 'Window below'})
call tinykeymap#Map('windows', 'k', '<count>wincmd k', {'desc': 'Left window'})
call tinykeymap#Map('windows', 'l', '<count>wincmd l', {'desc': 'Right window'})
call tinykeymap#Map('windows', 'P', 'wincmd P', {'desc': 'Preview window'})
call tinykeymap#Map('windows', 'gt', 'tabn')
call tinykeymap#Map('windows', 'gT', 'tabp')
call tinykeymap#Map('windows', 'c', 'wincmd c', {'desc': 'Close window'})
call tinykeymap#Map('windows', 'q', 'wincmd q', {'desc': 'Quit window'})
call tinykeymap#Map('windows', 'o', 'wincmd o', {'desc': 'Make the only window', 'exit': 1})
call tinykeymap#Map('windows', 's', 'split')
call tinykeymap#Map('windows', 'v', 'vert split')
" See also ], }, d, i

