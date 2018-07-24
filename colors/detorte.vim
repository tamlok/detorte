" Vim color file
" Le Tan (tamlokveer@gmail.com)
" Combination of desert and torte colorscheme for better look on both gui and
" terminal.
" https://github.com/tamlok/detorte

if !exists('g:detorte_theme_mode')
    let g:detorte_theme_mode = 'dark'
endif

if g:detorte_theme_mode == 'dark'
    set background=dark
else
    set background=light
endif

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "detorte"

" Mappings from terminal color to RGB form
let s:detorte_cterm_to_rgb = {
    \ '0':   '#000000', '1':   '#800000', '2':   '#008000', '3':   '#808000', '4':   '#000080',
    \ '5':   '#800080', '6':   '#008080', '7':   '#c0c0c0', '8':   '#808080', '9':   '#ff0000',
    \ '10':  '#00ff00', '11':  '#ffff00', '12':  '#0000ff', '13':  '#ff00ff', '14':  '#00ffff',
    \ '15':  '#ffffff', '16':  '#000000', '17':  '#00005f', '18':  '#000087', '19':  '#0000af',
    \ '20':  '#0000df', '21':  '#0000ff', '22':  '#005f00', '23':  '#005f5f', '24':  '#005f87',
    \ '25':  '#005faf', '26':  '#005fdf', '27':  '#005fff', '28':  '#008700', '29':  '#00875f',
    \ '30':  '#008787', '31':  '#0087af', '32':  '#0087df', '33':  '#0087ff', '34':  '#00af00',
    \ '35':  '#00af5f', '36':  '#00af87', '37':  '#00afaf', '38':  '#00afdf', '39':  '#00afff',
    \ '40':  '#00df00', '41':  '#00df5f', '42':  '#00df87', '43':  '#00dfaf', '44':  '#00dfdf',
    \ '45':  '#00dfff', '46':  '#00ff00', '47':  '#00ff5f', '48':  '#00ff87', '49':  '#00ffaf',
    \ '50':  '#00ffdf', '51':  '#00ffff', '52':  '#5f0000', '53':  '#5f005f', '54':  '#5f0087',
    \ '55':  '#5f00af', '56':  '#5f00df', '57':  '#5f00ff', '58':  '#5f5f00', '59':  '#5f5f5f',
    \ '60':  '#5f5f87', '61':  '#5f5faf', '62':  '#5f5fdf', '63':  '#5f5fff', '64':  '#5f8700',
    \ '65':  '#5f875f', '66':  '#5f8787', '67':  '#5f87af', '68':  '#5f87df', '69':  '#5f87ff',
    \ '70':  '#5faf00', '71':  '#5faf5f', '72':  '#5faf87', '73':  '#5fafaf', '74':  '#5fafdf',
    \ '75':  '#5fafff', '76':  '#5fdf00', '77':  '#5fdf5f', '78':  '#5fdf87', '79':  '#5fdfaf',
    \ '80':  '#5fdfdf', '81':  '#5fdfff', '82':  '#5fff00', '83':  '#5fff5f', '84':  '#5fff87',
    \ '85':  '#5fffaf', '86':  '#5fffdf', '87':  '#5fffff', '88':  '#870000', '89':  '#87005f',
    \ '90':  '#870087', '91':  '#8700af', '92':  '#8700df', '93':  '#8700ff', '94':  '#875f00',
    \ '95':  '#875f5f', '96':  '#875f87', '97':  '#875faf', '98':  '#875fdf', '99':  '#875fff',
    \ '100': '#878700', '101': '#87875f', '102': '#878787', '103': '#8787af', '104': '#8787df',
    \ '105': '#8787ff', '106': '#87af00', '107': '#87af5f', '108': '#87af87', '109': '#87afaf',
    \ '110': '#87afdf', '111': '#87afff', '112': '#87df00', '113': '#87df5f', '114': '#87df87',
    \ '115': '#87dfaf', '116': '#87dfdf', '117': '#87dfff', '118': '#87ff00', '119': '#87ff5f',
    \ '120': '#87ff87', '121': '#87ffaf', '122': '#87ffdf', '123': '#87ffff', '124': '#af0000',
    \ '125': '#af005f', '126': '#af0087', '127': '#af00af', '128': '#af00df', '129': '#af00ff',
    \ '130': '#af5f00', '131': '#af5f5f', '132': '#af5f87', '133': '#af5faf', '134': '#af5fdf',
    \ '135': '#af5fff', '136': '#af8700', '137': '#af875f', '138': '#af8787', '139': '#af87af',
    \ '140': '#af87df', '141': '#af87ff', '142': '#afaf00', '143': '#afaf5f', '144': '#afaf87',
    \ '145': '#afafaf', '146': '#afafdf', '147': '#afafff', '148': '#afdf00', '149': '#afdf5f',
    \ '150': '#afdf87', '151': '#afdfaf', '152': '#afdfdf', '153': '#afdfff', '154': '#afff00',
    \ '155': '#afff5f', '156': '#afff87', '157': '#afffaf', '158': '#afffdf', '159': '#afffff',
    \ '160': '#df0000', '161': '#df005f', '162': '#df0087', '163': '#df00af', '164': '#df00df',
    \ '165': '#df00ff', '166': '#df5f00', '167': '#df5f5f', '168': '#df5f87', '169': '#df5faf',
    \ '170': '#df5fdf', '171': '#df5fff', '172': '#df8700', '173': '#df875f', '174': '#df8787',
    \ '175': '#df87af', '176': '#df87df', '177': '#df87ff', '178': '#dfaf00', '179': '#dfaf5f',
    \ '180': '#dfaf87', '181': '#dfafaf', '182': '#dfafdf', '183': '#dfafff', '184': '#dfdf00',
    \ '185': '#dfdf5f', '186': '#dfdf87', '187': '#dfdfaf', '188': '#dfdfdf', '189': '#dfdfff',
    \ '190': '#dfff00', '191': '#dfff5f', '192': '#dfff87', '193': '#dfffaf', '194': '#dfffdf',
    \ '195': '#dfffff', '196': '#ff0000', '197': '#ff005f', '198': '#ff0087', '199': '#ff00af',
    \ '200': '#ff00df', '201': '#ff00ff', '202': '#ff5f00', '203': '#ff5f5f', '204': '#ff5f87',
    \ '205': '#ff5faf', '206': '#ff5fdf', '207': '#ff5fff', '208': '#ff8700', '209': '#ff875f',
    \ '210': '#ff8787', '211': '#ff87af', '212': '#ff87df', '213': '#ff87ff', '214': '#ffaf00',
    \ '215': '#ffaf5f', '216': '#ffaf87', '217': '#ffafaf', '218': '#ffafdf', '219': '#ffafff',
    \ '220': '#ffdf00', '221': '#ffdf5f', '222': '#ffdf87', '223': '#ffdfaf', '224': '#ffdfdf',
    \ '225': '#ffdfff', '226': '#ffff00', '227': '#ffff5f', '228': '#ffff87', '229': '#ffffaf',
    \ '230': '#ffffdf', '231': '#ffffff', '232': '#080808', '233': '#121212', '234': '#1c1c1c',
    \ '235': '#262626', '236': '#303030', '237': '#3a3a3a', '238': '#444444', '239': '#4e4e4e',
    \ '240': '#585858', '241': '#606060', '242': '#666666', '243': '#767676', '244': '#808080',
    \ '245': '#8a8a8a', '246': '#949494', '247': '#9e9e9e', '248': '#a8a8a8', '249': '#b2b2b2',
    \ '250': '#bcbcbc', '251': '#c6c6c6', '252': '#d0d0d0', '253': '#dadada', '254': '#e4e4e4',
    \ '255': '#eeeeee'}

" Highlight function utility
function! s:DetorteHL(group, fg, bg, ...)
    " Arguments: group, foreground, background, attribute

    " Foreground
    let l:ctermfg = ''
    let l:guifg = ''
    if a:fg != -1
        let l:ctermfg = a:fg
        if !has_key(s:detorte_cterm_to_rgb, a:fg)
            echom "warning: missing RGB info for terminal color " . a:fg
        else
            let l:guifg = s:detorte_cterm_to_rgb[l:ctermfg]
        endif
    endif

    " Background
    let l:ctermbg = ''
    let l:guibg = ''
    if a:bg != -1
        let l:ctermbg = a:bg
        if !has_key(s:detorte_cterm_to_rgb, a:bg)
            echom "warning: missing RGB info for terminal color " . a:bg
        else
            let l:guibg = s:detorte_cterm_to_rgb[l:ctermbg]
        endif
    endif

    " Attr
    let l:attr = ''
    if a:0 >= 1
        let l:attr = a:1
    endif

    " Highlihgt
    let l:highlight_str = 'highlight ' . a:group
    if strlen(l:ctermfg) > 0
        let l:highlight_str .= ' ctermfg=' . l:ctermfg
    endif

    if strlen(l:guifg) > 0
        let l:highlight_str .= ' guifg=' . l:guifg
    endif

    if strlen(l:ctermbg) > 0
        let l:highlight_str .= ' ctermbg=' . l:ctermbg
    endif

    if strlen(l:guibg) > 0
        let l:highlight_str .= ' guibg=' . l:guibg
    endif

    if strlen(l:attr) > 0
        let l:highlight_str .= ' cterm=' . l:attr . ' gui=' . l:attr
    endif

    execute l:highlight_str
endfunction

if g:detorte_theme_mode == 'dark'
    hi Normal   guifg=#dadada guibg=#444444 ctermfg=253 ctermbg=238

    hi Cursor   guibg=#ffff87 guifg=#005f5f ctermbg=228 ctermfg=23
    hi VertSplit    guibg=#c2bfa5 guifg=grey50 gui=none
    hi Folded   guibg=#585858 guifg=gold ctermbg=240 ctermfg=220
    hi FoldColumn   guibg=#585858 guifg=#afaf5f ctermbg=240 ctermfg=143
    hi LineNr   guifg=#afaf5f ctermfg=143
    hi IncSearch    guifg=#000000 guibg=#87afff gui=none ctermfg=16 ctermbg=111 cterm=none
    hi ModeMsg  guifg=#dfdf87 ctermfg=186
    hi MoreMsg  guifg=#5fd75f ctermfg=77 gui=bold cterm=bold
    hi NonText  guifg=#afd7d7 ctermfg=152
    hi Question guifg=SpringGreen1 ctermfg=48
    hi Search   term=reverse guifg=#ffffff guibg=#af8700 ctermfg=15 ctermbg=136
    hi SpecialKey   guifg=#626262 ctermfg=241
    hi Title    guifg=IndianRed ctermfg=167
    hi Visual   gui=none guifg=#ffffff guibg=olivedrab cterm=none ctermfg=15 ctermbg=64
    hi WarningMsg   guifg=#ff5f87 ctermfg=204
    hi Warning   guifg=#ff5f87 ctermfg=204
    hi CursorLine   term=NONE cterm=NONE ctermbg=240 gui=none guibg=#585858
    hi CursorLineNr term=bold cterm=bold ctermfg=226 gui=bold guifg=#ffff00
    hi PmenuSel ctermfg=16 ctermbg=220 cterm=NONE guifg=Black guibg=#ffdf00 gui=none
    hi Pmenu    ctermfg=16 ctermbg=250 guifg=Black guibg=#bcbcbc
    hi PmenuSbar    guibg=#5f5f00 ctermbg=58
    hi PmenuThumb   guibg=White ctermbg=15
    hi ErrorMsg guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
    hi Error    guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
    hi ColorColumn  ctermbg=237 guibg=#3a3a3a
    hi Modifier cterm=inverse ctermfg=118 gui=inverse guifg=#87ff00
    hi StatuslineWarning    cterm=inverse ctermfg=210 gui=inverse guifg=#ff8787
    hi StatuslineBufNum ctermbg=242 ctermfg=15 cterm=bold guibg=#6c6c6c guifg=#ffffff gui=bold
    call s:DetorteHL('StatuslineFileName', 16, 73, 'None')
    call s:DetorteHL('StatuslineLineNumber', 16, 110, 'None')
    hi Directory    ctermfg=50 guifg=#00eeee
    hi CursorColumn ctermbg=240 guibg=#585858
    hi Function gui=NONE cterm=NONE ctermfg=105 guifg=#B5A1FF

    " Statusline
    call s:DetorteHL('StatusLineNormal', 16, 179, 'None')
    call s:DetorteHL('StatusLineInsert', 16, 71, 'None')
    call s:DetorteHL('StatusLineReplace', 16, 139, 'None')
    call s:DetorteHL('StatusLine', 16, 179, 'None')
    hi StatusLineNC guibg=#c2bfa5 guifg=#262626 gui=none ctermbg=144 ctermfg=235 cterm=none

    " Sign column
    call s:DetorteHL('SignColumn', 184, 240, 'None')

    " Mode-aware cursor color
    hi InsertCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=37  guibg=#2aa198
    hi VisualCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=125 guibg=#d33682
    hi ReplaceCursor ctermfg=15 guifg=#fdf6e3 ctermbg=65  guibg=#dc322f
    hi CommandCursor ctermfg=15 guifg=#fdf6e3 ctermbg=166 guibg=#cb4b16

    hi ExtraWhitespace ctermbg=202 guibg=#ff5f00
    hi TabLineSel    term=underline cterm=none ctermfg=16 ctermbg=185 guibg=#dfdf5f guifg=black gui=none
    hi TabLine  guibg=#afafaf guifg=black gui=none ctermbg=145 ctermfg=16 cterm=none

    " Syntax highlights
    hi Special  ctermfg=214 guifg=#ffaf00
    hi Comment  term=bold ctermfg=138 guifg=#af8787
    hi Constant term=underline ctermfg=210 guifg=#ff8787
    hi Identifier   guifg=#00dfdf gui=none ctermfg=44 cterm=none
    hi Statement    guifg=#ffdf5f gui=none ctermfg=221 cterm=none
    hi PreProc  guifg=#ff5fdf ctermfg=206
    hi Type	    guifg=#00d787 gui=none ctermfg=42 cterm=none
    hi Todo	    ctermfg=118 ctermbg=124 cterm=bold guifg=#87ff00 guibg=#af0000 gui=bold

    " Diff mode
    call s:DetorteHL('DiffAdd', 10, 242, 'None')
    call s:DetorteHL('DiffChange', 253, 242, 'None')
    call s:DetorteHL('DiffText', 253, 55, 'None')
    call s:DetorteHL('DiffDelete', 9, 242, 'None')

    " For vim-markdown plugin
    hi markdownH1   term=bold cterm=bold ctermfg=40 gui=bold guifg=#00df00
    hi markdownH2   term=bold cterm=bold ctermfg=34 gui=bold guifg=#00af00
    hi markdownH3   term=bold cterm=bold ctermfg=35 gui=bold guifg=#00af5f
    hi markdownH4   term=bold cterm=bold ctermfg=35 gui=bold guifg=#00af5f
    hi markdownH5   term=bold cterm=bold ctermfg=35 gui=bold guifg=#00af5f
    hi markdownH6   term=bold cterm=bold ctermfg=35 gui=bold guifg=#00af5f
    hi markdownHeadingDelimiter term=bold cterm=bold ctermfg=40 gui=bold guifg=#00df00
    hi markdownInlineCode   term=underline cterm=none ctermfg=254 ctermbg=240 gui=none guifg=#e4e4e4 guibg=#585858
    hi markdownBold term=bold cterm=bold ctermfg=255 gui=bold guifg=#eeeeee
    hi markdownBoldItalic term=bold,italic cterm=bold,italic ctermfg=255 gui=bold,italic guifg=#eeeeee

    " For Tagbar plugin
    highlight TagbarSignature guifg=#5fd7ff ctermfg=81

    " For indentLine plugin
    let g:indentLine_color_term = 241
    let g:indentLine_color_gui = '#626262'

    " For ALE plugin
    hi link ALEErrorSign Error
    hi link ALEWarningSign Warning
else
    " Light background
    call s:DetorteHL('Normal', 234, 252)

    call s:DetorteHL('Cursor', 228, 23)
    hi VertSplit    guibg=#c2bfa5 guifg=grey50 gui=none
    hi Folded   guibg=#585858 guifg=gold ctermbg=240 ctermfg=220
    hi FoldColumn   guibg=#585858 guifg=#afaf5f ctermbg=240 ctermfg=143
    call s:DetorteHL('LineNr', 243, -1)
    hi IncSearch    guifg=#000000 guibg=#87afff gui=none ctermfg=16 ctermbg=111 cterm=none
    call s:DetorteHL('ModeMsg', 2, -1)
    call s:DetorteHL('MoreMsg', 2, -1, "Bold")
    call s:DetorteHL('NonText', 26, -1)
    call s:DetorteHL('Question', 27, -1)
    call s:DetorteHL('Search', 0, 214)
    call s:DetorteHL('SpecialKey', 247, -1)
    call s:DetorteHL('Title', 2, -1)
    hi Visual   gui=none guifg=#ffffff guibg=olivedrab cterm=none ctermfg=15 ctermbg=64
    call s:DetorteHL('WarningMsg', 5, -1)
    call s:DetorteHL('Warning', 5, -1)
    call s:DetorteHL('CursorLine', -1, 250, 'None')
    call s:DetorteHL('CursorLineNr', 234, -1, 'Bold')
    hi PmenuSel ctermfg=16 ctermbg=220 cterm=NONE guifg=Black guibg=#ffdf00 gui=none
    hi Pmenu    ctermfg=16 ctermbg=250 guifg=Black guibg=#bcbcbc
    hi PmenuSbar    guibg=#5f5f00 ctermbg=58
    call s:DetorteHL('PmenuThumb', -1, 220)
    hi ErrorMsg guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
    hi Error    guifg=White guibg=#d70000 ctermfg=15 ctermbg=160
    call s:DetorteHL('ColorColumn', -1, 251)
    call s:DetorteHL('Modifier', 69, -1, "Inverse")
    call s:DetorteHL('StatuslineWarning', 124, -1, "Inverse")
    hi StatuslineBufNum ctermbg=242 ctermfg=15 cterm=bold guibg=#6c6c6c guifg=#ffffff gui=bold
    call s:DetorteHL('StatuslineFileName', 16, 73, 'None')
    call s:DetorteHL('StatuslineLineNumber', 16, 110, 'None')
    call s:DetorteHL('Directory', 20, -1)
    call s:DetorteHL('CursorColumn', -1, 250)
    hi ExtraWhitespace ctermbg=202 guibg=#ff5f00
    hi TabLineSel    term=underline cterm=none ctermfg=16 ctermbg=185 guibg=#dfdf5f guifg=black gui=none
    hi TabLine  guibg=#afafaf guifg=black gui=none ctermbg=145 ctermfg=16 cterm=none
    call s:DetorteHL('MatchParen', 15, 137)

    " Statusline
    call s:DetorteHL('StatusLineNormal', 16, 179, 'None')
    call s:DetorteHL('StatusLineInsert', 16, 71, 'None')
    call s:DetorteHL('StatusLineReplace', 16, 139, 'None')
    call s:DetorteHL('StatusLine', 16, 179, 'None')
    hi StatusLineNC guibg=#c2bfa5 guifg=#262626 gui=none ctermbg=144 ctermfg=235 cterm=none

    " Sign column
    call s:DetorteHL('SignColumn', 234, -1, 'None')

    " Mode-aware cursor color
    call s:DetorteHL('InsertCursor', 15, 25)
    hi VisualCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=125 guibg=#d33682
    hi ReplaceCursor ctermfg=15 guifg=#fdf6e3 ctermbg=65  guibg=#dc322f
    call s:DetorteHL('CommandCursor', 15, 1)

    " Syntax highlights
    call s:DetorteHL('Special', 125, -1)
    call s:DetorteHL('Comment', 58, -1)
    call s:DetorteHL('Constant', 161, -1)
    call s:DetorteHL('Identifier', 20, -1)
    call s:DetorteHL('Statement', 124, -1)
    call s:DetorteHL('PreProc', 92, -1)
    call s:DetorteHL('Type', 28, -1, 'None')
    call s:DetorteHL('Todo', 0, 9, 'Bold')
    call s:DetorteHL('Function', 93, -1)
    call s:DetorteHL('Underlined', 27, -1, 'Underline')

    " For vim-markdown plugin
    call s:DetorteHL('markdownH1', 28, -1, "Bold")
    call s:DetorteHL('markdownH2', 28, -1, "Bold")
    call s:DetorteHL('markdownH3', 28, -1, "Bold")
    call s:DetorteHL('markdownH4', 28, -1, "Bold")
    call s:DetorteHL('markdownH5', 28, -1, "Bold")
    call s:DetorteHL('markdownH6', 28, -1, "Bold")
    call s:DetorteHL('markdownHeadingDelimiter', 28, -1, "Bold")
    call s:DetorteHL('markdownInlineCode', 232, 250, "None")
    call s:DetorteHL('markdownBold', 232, -1, "Bold")
    call s:DetorteHL('markdownBoldItalic', 232, -1, "Bold,Italic")

    " For Tagbar plugin
    call s:DetorteHL('TagbarSignature', 6, -1)

    " For indentLine plugin
    let g:indentLine_color_term = 247
    let g:indentLine_color_gui = '#9e9e9e'

    " For EasyMotion plugin
    call s:DetorteHL('EasyMotionTarget', 124, -1, 'Bold')
    call s:DetorteHL('EasyMotionTarget2First', 20, -1, 'Bold')
    call s:DetorteHL('EasyMotionTarget2Second', 5, -1, 'Bold')

    " For ALE plugin
    hi link ALEErrorSign Error
    hi link ALEWarningSign Warning
endif

" Change highlights to a high contrast mode in dark theme mode
function! DetorteHighContrastFn()
    if g:detorte_theme_mode != 'dark'
        echom 'Only support dark theme mode'
        return
    endif
    hi Normal guifg=White guibg=#262626 ctermfg=255 ctermbg=235
    hi CursorColumn ctermbg=236 guibg=#303030
    hi CursorLine term=NONE cterm=NONE ctermbg=237 gui=none guibg=#3a3a3a
    hi ColorColumn ctermbg=238 guibg=#444444
endfunction
command! DetorteHighContrast call DetorteHighContrastFn()

command! -nargs=+ DetorteHighlight call s:DetorteHL(<f-args>)
