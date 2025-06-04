" Vim color file
" Maintainer:	Don P <donp@boogersnot.net>
" Last Change:	2014 July 30

" First remove all existing highlighting.
hi clear

let colors_name = "sunrise"

" Black text on light (pastel) background
"hi Normal guifg=black guibg=MintCream
"hi Normal guifg=black guibg=LightSkyBlue1
hi Normal guifg=black guibg=LightYellow1
"hi Normal guifg=black guibg=gray90

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=Blue
hi LineNr term=underline ctermfg=Grey guifg=Grey
hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
hi SpecialKey term=bold ctermfg=DarkBlue guifg=Grey
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=Red guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

hi StatusLine   cterm=bold ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
hi StatusLineNC cterm=bold ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi NonText term=bold ctermfg=Blue gui=bold guifg=gray guibg=white
hi Cursor guibg=fg guifg=bg

" syntax highlighting
hi Comment      term=None cterm=None ctermfg=darkgreen    gui=None guifg=darkgreen
hi Conditional  term=None cterm=None ctermfg=blue         gui=Bold guifg=darkblue
hi Constant     term=None cterm=None ctermfg=darkmagenta  gui=None guifg=darkred
hi Define       term=None cterm=None ctermfg=darkyellow   gui=None guifg=darkyellow
hi Exception    term=None cterm=None ctermfg=blue         gui=Bold guifg=darkblue
hi Function     term=None cterm=Bold ctermfg=blue         gui=Bold guifg=blue
hi Identifier   term=None cterm=None ctermfg=darkcyan     gui=None guifg=cyan4
hi Ignore       term=None cterm=None ctermfg=grey         gui=None guifg=grey
hi Include      term=None cterm=None ctermfg=darkblue     gui=None guifg=darkcyan
hi Operator     term=None cterm=Bold ctermfg=black        gui=Bold guifg=blue
hi PreProc      term=None cterm=None ctermfg=darkblue     gui=None guifg=darkcyan
hi Repeat       term=None cterm=None ctermfg=blue         gui=Bold guifg=blue
hi Special      term=Bold cterm=None ctermfg=lightred     gui=None guifg=deeppink4
hi Statement    term=Bold cterm=Bold ctermfg=blue         gui=Bold guifg=darkblue
hi String       term=None cterm=None ctermfg=darkred      gui=None guifg=darkred
hi ToDo         term=None cterm=None ctermfg=blue         gui=Bold guifg=magenta
hi Type         term=None cterm=None ctermfg=blue         gui=Bold guifg=blue


if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
