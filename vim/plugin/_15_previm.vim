" Author: Takatsugu Yoneya

let g:previm_open_cmd = 'open -a Google\ Chrome'
let g:previm_disable_default_css = 1
let g:previm_custom_css_path = '~/dotfiles/src/previm.css'

let g:context_filetype#filetypes = {
  \ 'markdown': [
  \   {
  \     'start' : '^\s*```\s*uml',
  \     'end' : '^\s*```$',
  \     'filetype' : 'plantuml',
  \   },
  \   {
  \     'start' : '^\s*```\s*\(\h\w*\)',
  \     'end' : '^\s*```$',
  \     'filetype' : '\1',
  \   },
  \ ],
  \}

function! Save()
  PreciousReset
  write
  PreciousSwitch
endfunction

nnoremap <Leader>w :<C-u>call Save()<CR>
