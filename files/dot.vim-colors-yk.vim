" Vim color file
" Maintainer:	Donald Perkovich <donp@boogersnot.net>
" Last Change:	2020 June 15

" This color scheme is yellow text on black background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" YK = Yellow on Black
let colors_name = "yk"

"hi Normal ctermfg=Yellow ctermbg=Black guifg=Yellow guibg=Black
hi Normal ctermfg=Yellow ctermbg=16 guifg=Yellow guibg=#000000

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermfg=white ctermbg=DarkRed guifg=White guibg=Red
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse ctermbg=black guibg=black
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi Cursor guibg=Cyan guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=Blue
hi LineNr term=underline ctermfg=DarkYellow guifg=DarkYellow guibg=black
hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi NonText term=bold ctermfg=Blue gui=bold guifg=Blue guibg=bisque
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi SpecialKey term=bold ctermfg=DarkBlue guifg=Blue
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText term=reverse cterm=bold ctermbg=LightRed gui=bold guibg=LightRed
hi CursorLine term=underline cterm=underline guibg=bisque
hi CursorColumn term=reverse ctermbg=grey guibg=bisque

" Colors for syntax highlighting
hi Comment    term=None ctermfg=Green guifg=LightGreen
hi Conditional term=None cterm=bold ctermfg=LightBlue gui=Bold guifg=LightBlue
hi Constant   term=Bold cterm=None ctermfg=Magenta gui=None guifg=LightMagenta
hi Define     term=None cterm=None ctermfg=LightMagenta gui=None guifg=Yellow
hi Exception  term=None cterm=None ctermfg=LightBlue gui=Bold guifg=LightBlue
hi Function   term=None cterm=Bold ctermfg=LightBlue gui=Bold guifg=LightBlue
hi Identifier term=Bold ctermfg=LightCyan guifg=LightCyan
hi Ignore     term=None ctermfg=Grey guifg=Grey
hi Include    term=None cterm=None ctermfg=LightBlue gui=None guifg=LightBlue
hi Operator   term=None cterm=Bold ctermfg=LightBlue gui=Bold guifg=Blue
hi PreProc    term=None ctermfg=LightMagenta guifg=LightMagenta
hi Repeat     term=None cterm=None ctermfg=LightBlue gui=Bold guifg=LightBlue
hi Special    term=Bold ctermfg=Grey guifg=Grey guibg=black
hi Statement  term=Bold ctermfg=LightBlue guifg=LightBlue guibg=Black
hi String     term=None cterm=None ctermfg=Red gui=None guifg=Red
hi ToDo       term=Bold ctermfg=Magenta ctermfg=Blue gui=Bold guifg=Magenta
hi Type       term=Bold ctermfg=LightBlue guifg=LightBlue

" vim: sw=2
