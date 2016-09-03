" Vim color file
" Le Tan (tamlokveer@gmail.com)
" Combination of desert and torte colorscheme for better look on both gui and
" terminal.

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "detorte"

hi Normal   guifg=#dadada guibg=#3a3a3a ctermfg=253 ctermbg=237

hi Cursor   guibg=#ffff87 guifg=#005f5f ctermbg=228 ctermfg=23
hi VertSplit    guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded   guibg=#585858 guifg=gold ctermbg=240 ctermfg=220
hi FoldColumn   guibg=#585858 guifg=#afaf5f ctermbg=240 ctermfg=143
hi LineNr   guifg=#afaf5f ctermfg=143
hi IncSearch    guifg=#000000 guibg=#87afff gui=none ctermfg=16 ctermbg=111 cterm=none
hi ModeMsg  guifg=#dfdf87 ctermfg=186
hi MoreMsg  guifg=#5fd75f ctermfg=77 gui=bold cterm=bold
hi NonText  guifg=#afd7d7 guibg=grey30 ctermfg=152 ctermbg=239
hi Question guifg=SpringGreen1 ctermfg=48
hi Search   term=reverse guifg=#ffffff guibg=#af8700 ctermfg=15 ctermbg=136
hi SpecialKey   guifg=#5fd7ff ctermfg=81
hi StatusLine   guibg=LightGoldenrod3 guifg=black gui=none ctermbg=179 ctermfg=16 cterm=none
hi StatusLineNC guibg=#c2bfa5 guifg=#262626 gui=none ctermbg=144 ctermfg=235 cterm=none
hi Title    guifg=IndianRed ctermfg=167
hi Visual   gui=none guifg=#ffffff guibg=olivedrab cterm=none ctermfg=15 ctermbg=64
hi WarningMsg   guifg=#ff5f87 ctermfg=204
hi CursorLine   term=NONE cterm=NONE ctermbg=238 gui=none guibg=#444444
hi CursorLineNr term=bold cterm=bold ctermfg=226 gui=bold guifg=#ffff00
hi PmenuSel ctermfg=16 ctermbg=220 cterm=NONE guifg=Black guibg=#ffdf00 gui=none
hi Pmenu    ctermfg=16 ctermbg=250 guifg=Black guibg=#bcbcbc
hi PmenuSbar    guibg=#5f5f00 ctermbg=58
hi PmenuThumb   guibg=White ctermbg=15
hi ErrorMsg guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
hi Error    guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
hi ColorColumn  ctermbg=239 guibg=#4e4e4e
hi Modifier cterm=inverse ctermfg=118 gui=inverse guifg=#87ff00
hi StatuslineWarning    cterm=inverse ctermfg=210 gui=inverse guifg=#ff8787
hi StatuslineBufNum ctermbg=242 ctermfg=15 cterm=bold guibg=#6c6c6c guifg=#ffffff gui=bold
hi Directory    ctermfg=50 guifg=#00eeee
hi CursorColumn ctermbg=238 guibg=#444444
hi Function gui=NONE cterm=NONE ctermfg=105 guifg=#B5A1FF

" Mode-aware cursor color
hi InsertCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=37  guibg=#2aa198
hi VisualCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=125 guibg=#d33682
hi ReplaceCursor ctermfg=15 guifg=#fdf6e3 ctermbg=65  guibg=#dc322f
hi CommandCursor ctermfg=15 guifg=#fdf6e3 ctermbg=166 guibg=#cb4b16

hi ExtraWhitespace ctermbg=202 guibg=#ff5f00

" Syntax highlights
hi Special  ctermfg=214 guifg=#ffaf00
hi Comment  term=bold ctermfg=138 guifg=#af8787
hi Constant term=underline ctermfg=210 guifg=#ff8787
hi Identifier   guifg=#00dfdf gui=none ctermfg=44 cterm=none
hi Statement    guifg=#ffdf5f gui=none ctermfg=221 cterm=none
hi PreProc  guifg=#ff5fdf ctermfg=206
hi Type	    guifg=#00d787 gui=none ctermfg=42 cterm=none
hi Todo	    ctermfg=118 ctermbg=124 cterm=bold guifg=#87ff00 guibg=#af0000 gui=bold

