" Neovim color file
" Maintainer:	The Neovim Project <https://github.com/neovim/neovim>
" Last Change:	2023 Dec 01

" This is the default color scheme. See `:help dev_theme`.

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "default-felipe"

hi Normal guibg=none
hi NormalFloat guibg=none
hi FloatBorder guibg=none
hi ColorColumn guibg=NvimDarkGrey1

hi StatusLine cterm=reverse guifg=NvimLightGrey2 guibg=NvimDarkGrey2
hi StatusLineNC cterm=reverse guifg=NvimDarkGrey3 guibg=NvimDarkGrey2

hi Directory      ctermfg=14 guifg=NvimLightBlue
hi MoreMsg        ctermfg=14 guifg=NvimLightBlue
hi Question       ctermfg=14 guifg=NvimLightBlue
hi DiffText       ctermfg=0 ctermbg=14 guifg=NvimLightGrey1 guibg=NvimDarkBlue
hi SpellRare      cterm=undercurl gui=undercurl guisp=NvimLightBlue
hi QuickFixLine   ctermfg=14 guifg=NvimLightBlue
hi Special        ctermfg=14 guifg=NvimLightBlue
hi DiagnosticInfo ctermfg=14 guifg=NvimLightBlue
hi Function       ctermfg=14 guifg=NvimLightBlue
hi Changed        ctermfg=14 guifg=NvimLightBlue
hi DiagnosticUnderlineInfo cterm=underline gui=underline guisp=NvimLightBlue

hi String guifg=NvimLightGray4
" vim: sw=2
