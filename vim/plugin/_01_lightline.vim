" Author: Takatsugu Yoneya

""""""""""""""""""
" lightlineの設定
"
set t_Co=256

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'mode_map': {'c': 'NORMAL'},
      \ 'active': {
      \   'left': [
      \             [ 'mode', 'paste' ],
      \             [ 'filename' ]
      \           ],
      \   'right': [
      \             [ 'syntastic', 'lineinfo' ],
      \             [ 'percent' ],
      \             [ 'fugitive', 'fileformat', 'fileencoding', 'filetype' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fileencoding': 'LightlineFileencoding',
      \   'fileformat': 'LightlineFileformatWithIcon',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'LightlineFiletypeWithIcon',
      \   'fugitive': 'LightlineFugitive',
      \   'mode': 'LightlineMode',
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'syntastic': 'SyntasticStatuslineFlag'
      \ },
      \ 'separator': { 'left': "\ue0b0" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
  
""""""""""""""""""
" lightline functions
"
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformatWithIcon()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? (&fileformat) : ''
endfunction

function! LightlineFiletypeWithIcon()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
