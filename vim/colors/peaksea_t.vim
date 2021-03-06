" Vim color file --- psc (peak sea color) "Lite version"
" Maintainer:	Pan, Shi Zhu <Go to the following URL for my email>
" URL:		http://vim.sourceforge.net/scripts/script.php?script_id=760
" Last Change:	5 Feb 2010
" Version:	3.4
"
"	Comments and e-mails are welcomed, thanks.
"
"	The peaksea color is simply a colorscheme with the default settings of
"	the original ps_color. Lite version means there's no custom settings
"	and fancy features such as integration with reloaded.vim
"
"	The full version of ps_color.vim will be maintained until Vim 8.
"	By then there will be only the lite version: peaksea.vim
"
" Note: Please set the background option in your .vimrc and/or .gvimrc
"
"	It is much better *not* to set 'background' option inside
"	a colorscheme file.  because ":set background" improperly
"	may cause colorscheme be sourced twice
"
" Color Scheme Overview:
"	:ru syntax/hitest.vim
"
" Relevant Help:
"	:h highlight-groups
"	:h psc-cterm-color-table
"
" Colors Order:
"	#rrggbb
"

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand("<sfile>:t:r")

" I don't want to abuse folding, but here folding is used to avoid confusion.
if &background=='light'
  " for background=light {{{2
  " LIGHT COLOR DEFINE START

  hi Normal		guifg=#000000	guibg=#e0e0e0	gui=NONE
  hi Search		guifg=NONE	guibg=#f8f8f8	gui=NONE
  hi Visual		guifg=NONE	guibg=#a6caf0	gui=NONE
  hi Cursor		guifg=#f0f0f0	guibg=#008000	gui=NONE
  hi CursorIM		guifg=#f0f0f0	guibg=#800080   gui=NONE
  hi Special		guifg=#907000	guibg=NONE	gui=NONE
  hi Comment		guifg=#606000	guibg=NONE	gui=NONE
  hi Number		guifg=#907000	guibg=NONE	gui=NONE
  hi Constant		guifg=#007068	guibg=NONE	gui=NONE
  hi StatusLine		guifg=fg	guibg=#a6caf0	gui=NONE
  hi LineNr		guifg=#686868	guibg=NONE	gui=NONE
  hi Question		guifg=fg	guibg=#d0d090	gui=NONE
  hi PreProc		guifg=#009030	guibg=NONE	gui=NONE
  hi Statement		guifg=#2060a8	guibg=NONE	gui=NONE
  hi Type		guifg=#0850a0	guibg=NONE	gui=NONE
  hi Todo		guifg=#800000	guibg=#e0e090	gui=NONE
  " NOTE THIS IS IN THE WARM SECTION
  hi Error		guifg=#c03000	guibg=NONE	gui=NONE
  hi Identifier		guifg=#a030a0	guibg=NONE	gui=NONE
  hi ModeMsg		guifg=fg	guibg=#b0b0e0	gui=NONE
  hi VisualNOS		guifg=fg	guibg=#b0b0e0	gui=NONE
  hi SpecialKey		guifg=#1050a0	guibg=NONE	gui=NONE
  hi NonText		guifg=#b0b0b0	guibg=NONE	gui=NONE
  hi Directory		guifg=#a030a0	guibg=NONE	gui=NONE
  hi ErrorMsg		guifg=fg	guibg=#f0b090	gui=NONE
  hi MoreMsg		guifg=#489000	guibg=NONE	gui=NONE
  hi Title		guifg=#a030a0	guibg=NONE	gui=NONE
  hi WarningMsg		guifg=#b02000	guibg=NONE	gui=NONE
  hi WildMenu		guifg=fg	guibg=#d0d090	gui=NONE
  hi Folded		guifg=NONE	guibg=#b0e0b0	gui=NONE
  hi FoldColumn		guifg=#c0c0c0	guibg=NONE	gui=NONE
  hi DiffAdd		guifg=NONE	guibg=#c0e080	gui=NONE
  hi DiffChange		guifg=NONE	guibg=#c0e0e0	gui=NONE
  hi DiffDelete		guifg=NONE	guibg=#e08080	gui=NONE
  hi DiffText		guifg=NONE	guibg=#e0e0a0	gui=NONE
  hi SignColumn		guifg=fg	guibg=NONE	gui=NONE

  hi IncSearch		guifg=#f0f0f0	guibg=#806060	gui=NONE
  hi StatusLineNC	guifg=fg	guibg=#c0c0c0	gui=NONE
  hi VertSplit		guifg=fg	guibg=#c0c0c0	gui=NONE
  hi Underlined		guifg=#6a5acd	guibg=NONE	gui=underline
  hi Ignore		guifg=bg	guibg=NONE
  " NOTE THIS IS IN THE WARM SECTION
  if v:version >= 700
    if has('spell')
      hi SpellBad	guifg=NONE	guibg=NONE	guisp=#c03000
      hi SpellCap	guifg=NONE	guibg=NONE	guisp=#2060a8
      hi SpellRare	guifg=NONE	guibg=NONE	guisp=#a030a0
      hi SpellLocal	guifg=NONE	guibg=NONE	guisp=#007068
    endif
    hi Pmenu		guifg=fg	guibg=#e0b0e0
    hi PmenuSel		guifg=#f0f0f0	guibg=#806060	gui=NONE
    hi PmenuSbar	guifg=fg	guibg=#c0c0c0	gui=NONE
    hi PmenuThumb	guifg=fg	guibg=#c0e080	gui=NONE
    hi TabLine		guifg=fg	guibg=#c0c0c0	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#c0c0c0	gui=NONE
    hi TabLineSel	guifg=fg	guibg=NONE	gui=NONE
    hi CursorColumn	guifg=NONE	guibg=#d0d0d0	gui=NONE
    hi CursorLine	guifg=NONE	guibg=#d0d0d0	gui=NONE
    hi MatchParen	guifg=NONE	guibg=#c0e080
  endif

  " LIGHT COLOR DEFINE END

  " Vim 7 added stuffs
  if v:version >= 700
    hi Ignore		gui=NONE

    " the gui=undercurl guisp could only support in Vim 7
    if has('spell')
      hi SpellBad	gui=undercurl
      hi SpellCap	gui=undercurl
      hi SpellRare	gui=undercurl
      hi SpellLocal	gui=undercurl
    endif
    hi TabLine		gui=underline
    hi TabLineFill	gui=underline
  endif

  " For reversed stuffs, clear the reversed prop and set the bold prop again
  hi IncSearch		gui=bold
  hi StatusLine		gui=bold
  hi StatusLineNC	gui=bold
  hi VertSplit		gui=bold
  hi Visual		gui=bold

  " Enable the bold property
  hi Question		gui=bold
  hi DiffText		gui=bold
  hi Statement		gui=bold
  hi Type		gui=bold
  hi MoreMsg		gui=bold
  hi ModeMsg		gui=bold
  hi NonText		gui=bold
  hi Title		gui=bold
  hi DiffDelete		gui=bold
  hi TabLineSel		gui=bold

  " gui define for background=light end here

  " generally, a dumb terminal is dark, we assume the light terminal has 256
  " color support.
  if &t_Co==8 || &t_Co==16
    set t_Co=256
  endif
  if &t_Co==256
    " 256color light terminal support here

    hi Normal		ctermfg=!000000	ctermbg=!e0e0e0	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    "hi Normal		ctermfg=!000000	ctermbg=NONE	cterm=NONE
    hi Search		ctermfg=NONE	ctermbg=!f8f8f8	cterm=NONE
    hi Visual		ctermfg=NONE	ctermbg=!a6caf0	cterm=NONE
    hi Cursor		ctermfg=!f0f0f0	ctermbg=!008000	cterm=NONE
    hi CursorIM		ctermfg=!f0f0f0	ctermbg=!800080 cterm=NONE
    hi Special		ctermfg=!907000	ctermbg=NONE	cterm=NONE
    hi Comment		ctermfg=!606000	ctermbg=NONE	cterm=NONE
    hi Number		ctermfg=!907000	ctermbg=NONE	cterm=NONE
    hi Constant		ctermfg=!007068	ctermbg=NONE	cterm=NONE
    hi StatusLine	ctermfg=fg	ctermbg=!a6caf0	cterm=NONE
    hi LineNr		ctermfg=!686868	ctermbg=NONE	cterm=NONE
    hi Question		ctermfg=fg	ctermbg=!d0d090	cterm=NONE
    hi PreProc		ctermfg=!009030	ctermbg=NONE	cterm=NONE
    hi Statement	ctermfg=!2060a8	ctermbg=NONE	cterm=NONE
    hi Type		ctermfg=!0850a0	ctermbg=NONE	cterm=NONE
    hi Todo		ctermfg=!800000	ctermbg=!e0e090	cterm=NONE
    " NOTE THIS IS IN THE WARM SECTION
    hi Error		ctermfg=!c03000	ctermbg=NONE	cterm=NONE
    hi Identifier	ctermfg=!a030a0	ctermbg=NONE	cterm=NONE
    hi ModeMsg		ctermfg=fg	ctermbg=!b0b0e0	cterm=NONE
    hi VisualNOS	ctermfg=fg	ctermbg=!b0b0e0	cterm=NONE
    hi SpecialKey	ctermfg=!1050a0	ctermbg=NONE	cterm=NONE
    hi NonText		ctermfg=!b0b0b0	ctermbg=NONE	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    "hi NonText		ctermfg=!002090	ctermbg=NONE	cterm=NONE
    hi Directory	ctermfg=!a030a0	ctermbg=NONE	cterm=NONE
    hi ErrorMsg		ctermfg=fg	ctermbg=!f0b090	cterm=NONE
    hi MoreMsg		ctermfg=!489000	ctermbg=NONE	cterm=NONE
    hi Title		ctermfg=!a030a0	ctermbg=NONE	cterm=NONE
    hi WarningMsg	ctermfg=!b02000	ctermbg=NONE	cterm=NONE
    hi WildMenu		ctermfg=fg	ctermbg=!d0d090	cterm=NONE
    hi Folded		ctermfg=NONE	ctermbg=!b0e0b0	cterm=NONE
    hi FoldColumn	ctermfg=!c0c0c0	ctermbg=NONE	cterm=NONE
    hi DiffAdd		ctermfg=NONE	ctermbg=!c0e080	cterm=NONE
    hi DiffChange	ctermfg=NONE	ctermbg=!c0e0e0	cterm=NONE
    hi DiffDelete	ctermfg=NONE	ctermbg=!e08080	cterm=NONE
    hi DiffText		ctermfg=NONE	ctermbg=!e0e0a0	cterm=NONE
    hi SignColumn	ctermfg=fg	ctermbg=NONE	cterm=NONE

    hi IncSearch	ctermfg=!f0f0f0	ctermbg=!806060	cterm=NONE
    hi StatusLineNC	ctermfg=fg	ctermbg=!c0c0c0	cterm=NONE
    hi VertSplit	ctermfg=fg	ctermbg=!c0c0c0	cterm=NONE
    hi Underlined	ctermfg=!6a5acd	ctermbg=NONE	cterm=underline
    hi Ignore		ctermfg=bg	ctermbg=NONE
    " NOTE THIS IS IN THE WARM SECTION
    if v:version >= 700
      if has('spell')
        if 0
          " ctermsp is not supported in Vim7, we ignore it.
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=!c03000
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=!2060a8
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=!a030a0
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=!007068
        else
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
        endif
      endif
      hi Pmenu		ctermfg=fg	ctermbg=!e0b0e0
      hi PmenuSel	ctermfg=!f0f0f0	ctermbg=!806060	cterm=NONE
      hi PmenuSbar	ctermfg=fg	ctermbg=!c0c0c0	cterm=NONE
      hi PmenuThumb	ctermfg=fg	ctermbg=!c0e080	cterm=NONE
      hi TabLine	ctermfg=fg	ctermbg=!c0c0c0	cterm=NONE
      hi TabLineFill	ctermfg=fg	ctermbg=!c0c0c0	cterm=NONE
      hi TabLineSel	ctermfg=fg	ctermbg=NONE	cterm=NONE
      hi CursorColumn	ctermfg=NONE	ctermbg=!d0d0d0	cterm=NONE
      hi CursorLine	ctermfg=NONE	ctermbg=!d0d0d0	cterm=NONE
      hi MatchParen	ctermfg=NONE	ctermbg=!c0e080
    endif

    " For reversed stuffs, clear the reversed prop and set the bold prop again
    hi IncSearch	cterm=bold
    hi StatusLine	cterm=bold
    hi StatusLineNC	cterm=bold
    hi VertSplit	cterm=bold
    hi Visual		cterm=bold

    hi NonText		cterm=bold
    hi Question		cterm=bold
    hi Title		cterm=bold
    hi DiffDelete	cterm=bold
    hi DiffText		cterm=bold
    hi Statement	cterm=bold
    hi Type		cterm=bold
    hi MoreMsg		cterm=bold
    hi ModeMsg		cterm=bold
    hi TabLineSel	cterm=bold

    " hi lCursor		ctermfg=bg	ctermbg=fg	cterm=NONE
  endif " t_Co==256
  " }}}2
elseif &background=='dark'
  " for background=dark {{{2
  " DARK COLOR DEFINE START

  hi Normal		guifg=#d0d0d0	guibg=#202020	gui=NONE
  hi Comment		guifg=#d0d090	guibg=NONE	gui=NONE
  hi Constant		guifg=#80c0e0	guibg=NONE	gui=NONE
  hi Number		guifg=#e0c060	guibg=NONE	gui=NONE
  hi Identifier		guifg=#f0c0f0	guibg=NONE	gui=NONE
  hi Statement		guifg=#c0d8f8	guibg=NONE	gui=NONE
  hi PreProc		guifg=#60f080	guibg=NONE	gui=NONE
  hi Type		guifg=#b0d0f0	guibg=NONE	gui=NONE
  hi Special		guifg=#e0c060	guibg=NONE	gui=NONE
  hi Error		guifg=#f08060	guibg=NONE	gui=NONE
  hi Todo		guifg=#800000	guibg=#d0d090	gui=NONE
  hi Search		guifg=NONE	guibg=#800000	gui=NONE
  hi Visual		guifg=#000000	guibg=#a6caf0	gui=NONE
  hi Cursor		guifg=#000000	guibg=#00f000	gui=NONE
  " NOTE THIS IS IN THE COOL SECTION
  hi CursorIM		guifg=#000000	guibg=#f0c0f0	gui=NONE
  hi StatusLine		guifg=#000000	guibg=#a6caf0	gui=NONE
  hi LineNr		guifg=#b0b0b0	guibg=NONE	gui=NONE
  hi Question		guifg=#000000	guibg=#d0d090	gui=NONE
  hi ModeMsg		guifg=fg	guibg=#000080	gui=NONE
  hi VisualNOS		guifg=fg	guibg=#000080	gui=NONE
  hi SpecialKey		guifg=#b0d0f0	guibg=NONE	gui=NONE
  hi NonText		guifg=#606060	guibg=NONE	gui=NONE
  hi Directory		guifg=#80c0e0	guibg=NONE	gui=NONE
  hi ErrorMsg		guifg=#d0d090	guibg=#800000	gui=NONE
  hi MoreMsg		guifg=#c0e080	guibg=NONE	gui=NONE
  hi Title		guifg=#f0c0f0	guibg=NONE	gui=NONE
  hi WarningMsg		guifg=#f08060	guibg=NONE	gui=NONE
  hi WildMenu		guifg=#000000	guibg=#d0d090	gui=NONE
  hi Folded		guifg=NONE	guibg=#404040	gui=NONE
  hi FoldColumn		guifg=#404040	guibg=NONE	gui=NONE
  hi DiffAdd		guifg=NONE	guibg=#004000	gui=NONE
  hi DiffChange		guifg=NONE	guibg=#005080	gui=NONE
  hi DiffDelete		guifg=NONE	guibg=#600000	gui=NONE
  hi DiffText		guifg=NONE	guibg=#804000	gui=NONE
  hi SignColumn		guifg=#e0e0e0	guibg=NONE	gui=NONE
  hi IncSearch		guifg=#000000	guibg=#d0d0d0	gui=NONE
  hi StatusLineNC	guifg=#000000	guibg=#c0c0c0	gui=NONE
  hi VertSplit		guifg=#000000	guibg=#c0c0c0	gui=NONE
  hi Underlined		guifg=#80a0ff	guibg=NONE	gui=underline
  hi Ignore		guifg=#000000	guibg=NONE
  " NOTE THIS IS IN THE COOL SECTION
  if v:version >= 700
    if has('spell')
    " the guisp= could only support in Vim 7
      hi SpellBad	guifg=NONE	guibg=NONE	guisp=#f08060
      hi SpellCap	guifg=NONE	guibg=NONE	guisp=#6080f0
      hi SpellRare	guifg=NONE	guibg=NONE	guisp=#f0c0f0
      hi SpellLocal	guifg=NONE	guibg=NONE	guisp=#c0d8f8
    endif
    hi Pmenu		guifg=fg	guibg=#800080
    hi PmenuSel		guifg=#000000	guibg=#d0d0d0	gui=NONE
    hi PmenuSbar	guifg=fg	guibg=#000080	gui=NONE
    hi PmenuThumb	guifg=fg	guibg=#008000	gui=NONE
    hi TabLine		guifg=fg	guibg=#606060	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#606060	gui=NONE
    hi TabLineSel	guifg=fg	guibg=NONE	gui=NONE
    hi CursorColumn	guifg=NONE	guibg=#303030	gui=NONE
    hi CursorLine	guifg=NONE	guibg=#303030	gui=NONE
    hi MatchParen	guifg=NONE	guibg=#800080
  endif

  " DARK COLOR DEFINE END

  " Vim 7 added stuffs
  if v:version >= 700
    hi Ignore	gui=NONE

    " the gui=undercurl could only support in Vim 7
    if has('spell')
      hi SpellBad	gui=undercurl
      hi SpellCap	gui=undercurl
      hi SpellRare	gui=undercurl
      hi SpellLocal	gui=undercurl
    endif
    hi TabLine		gui=underline
    hi TabLineFill	gui=underline
    hi Underlined	gui=underline
  endif

  " gui define for background=dark end here

  if &t_Co==8 || &t_Co==16
    " for 8-color and 16-color term
    hi Normal		ctermfg=LightGrey   ctermbg=NONE
    hi Special		ctermfg=Yellow	    ctermbg=NONE
    hi Comment		ctermfg=DarkYellow  ctermbg=NONE
    hi Constant		ctermfg=Blue	    ctermbg=NONE
    hi Number		ctermfg=Yellow	    ctermbg=NONE
    hi LineNr		ctermfg=DarkGrey    ctermbg=NONE
    hi PreProc		ctermfg=Green	    ctermbg=NONE
    hi Statement	ctermfg=Cyan	    ctermbg=NONE
    hi Type		ctermfg=Cyan	    ctermbg=NONE
    hi Error		ctermfg=Red	    ctermbg=NONE
    hi Identifier	ctermfg=Magenta     ctermbg=NONE
    hi SpecialKey	ctermfg=Cyan	    ctermbg=NONE
    hi NonText		ctermfg=LightGrey   ctermbg=NONE
    hi Directory	ctermfg=Blue	    ctermbg=NONE
    hi MoreMsg		ctermfg=Green	    ctermbg=NONE
    hi Title		ctermfg=Magenta     ctermbg=NONE
    hi WarningMsg	ctermfg=Red	    ctermbg=NONE
    hi DiffDelete	ctermfg=Blue	    ctermbg=NONE

    hi Search		ctermfg=NONE	    ctermbg=DarkRed
    hi Visual		ctermfg=Black	    ctermbg=DarkCyan
    hi Cursor		ctermfg=Black	    ctermbg=Green
    hi StatusLine	ctermfg=Black	    ctermbg=DarkCyan
    hi Question		ctermfg=Black	    ctermbg=DarkYellow
    hi Todo		ctermfg=DarkRed     ctermbg=DarkYellow
    hi Folded		ctermfg=White	    ctermbg=DarkGreen
    hi ModeMsg		ctermfg=Grey	    ctermbg=DarkBlue
    hi VisualNOS	ctermfg=Grey	    ctermbg=DarkBlue
    hi ErrorMsg		ctermfg=DarkYellow  ctermbg=DarkRed
    hi WildMenu		ctermfg=Black	    ctermbg=DarkYellow
    hi FoldColumn	ctermfg=White	    ctermbg=NONE
    hi SignColumn	ctermfg=White	    ctermbg=NONE
    hi DiffText		ctermfg=Black	    ctermbg=DarkYellow

    if v:version >= 700
      if has('spell')
        hi SpellBad	ctermfg=NONE	ctermbg=DarkRed
        hi SpellCap	ctermfg=NONE	ctermbg=DarkBlue
        hi SpellRare	ctermfg=NONE	ctermbg=DarkMagenta
        hi SpellLocal	ctermfg=NONE	ctermbg=DarkGreen
      endif
      hi Pmenu		ctermfg=fg	ctermbg=DarkMagenta
      hi PmenuSel	ctermfg=Black	ctermbg=fg
      hi PmenuSbar	ctermfg=fg	ctermbg=DarkBlue
      hi PmenuThumb	ctermfg=fg	ctermbg=DarkGreen
      hi TabLine	ctermfg=fg	ctermbg=DarkGrey	cterm=underline
      hi TabLineFill	ctermfg=fg	ctermbg=DarkGrey	cterm=underline
      hi TabLineSel	ctermfg=fg	ctermbg=NONE
      hi CursorColumn	ctermfg=NONE	ctermbg=DarkRed
      hi CursorLine	ctermfg=NONE	ctermbg=NONE
      hi MatchParen	ctermfg=NONE	ctermbg=DarkMagenta
    endif
    if &t_Co==8
      " 8 colour terminal support, this assumes 16 colour is available through
      " setting the 'bold' attribute, will get bright foreground colour.
      " However, the bright background color is not available for 8-color terms.
      "
      " You can manually set t_Co=16 in your .vimrc to see if your terminal
      " supports 16 colours,
      hi DiffText	cterm=none
      hi Visual		cterm=none
      hi Cursor		cterm=none
      hi Comment	cterm=none
      hi Todo		cterm=none
      hi StatusLine	cterm=none
      hi Question	cterm=none
      hi DiffChange	cterm=none
      hi ModeMsg	cterm=none
      hi VisualNOS	cterm=none
      hi ErrorMsg	cterm=none
      hi WildMenu	cterm=none
      hi DiffAdd	cterm=none
      hi Folded		cterm=none
      hi DiffDelete	cterm=none
      hi Normal		cterm=none
      hi PmenuThumb	cterm=none
      hi Search		cterm=bold
      hi Special	cterm=bold
      hi Constant	cterm=bold
      hi Number		cterm=bold
      hi LineNr		cterm=bold
      hi PreProc	cterm=bold
      hi Statement	cterm=bold
      hi Type		cterm=bold
      hi Error		cterm=bold
      hi Identifier	cterm=bold
      hi SpecialKey	cterm=bold
      hi NonText	cterm=bold
      hi MoreMsg	cterm=bold
      hi Title		cterm=bold
      hi WarningMsg	cterm=bold
      hi FoldColumn	cterm=bold
      hi SignColumn	cterm=bold
      hi Directory	cterm=bold
      hi DiffDelete	cterm=bold
    else
      " Background > 7 is only available with 16 or more colors

      hi WarningMsg	cterm=none
      hi Search		cterm=none
      hi Visual		cterm=none
      hi Cursor		cterm=none
      hi Special	cterm=none
      hi Comment	cterm=none
      hi Constant	cterm=none
      hi Number		cterm=none
      hi LineNr		cterm=none
      hi PreProc	cterm=none
      hi Todo		cterm=none
      hi Error		cterm=none
      hi Identifier	cterm=none
      hi Folded		cterm=none
      hi SpecialKey	cterm=none
      hi Directory	cterm=none
      hi ErrorMsg	cterm=none
      hi Normal		cterm=none
      hi PmenuThumb	cterm=none
      hi WildMenu	cterm=none
      hi FoldColumn	cterm=none
      hi SignColumn	cterm=none
      hi DiffAdd	cterm=none
      hi DiffChange	cterm=none
      hi Question	cterm=none
      hi StatusLine	cterm=none
      hi DiffText	cterm=none
      hi IncSearch	cterm=reverse
      hi StatusLineNC	cterm=reverse
      hi VertSplit	cterm=reverse

      " Well, well, bold font with color 0-7 is not possible.
      " So, the Question, StatusLine, DiffText cannot act as expected.

      hi Statement	cterm=none
      hi Type		cterm=none
      hi MoreMsg	cterm=none
      hi ModeMsg	cterm=none
      hi NonText	cterm=none
      hi Title		cterm=none
      hi VisualNOS	cterm=none
      hi DiffDelete	cterm=none
      hi TabLineSel	cterm=none

    endif
  elseif &t_Co==256
    " 256color dark terminal support here
    hi Normal		ctermfg=!d0d0d0	ctermbg=!202020	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    " hi Normal		ctermfg=!d0d0d0	ctermbg=NONE	cterm=NONE
    hi Comment		ctermfg=!d0d090	ctermbg=NONE	cterm=NONE
    hi Constant		ctermfg=!80c0e0	ctermbg=NONE	cterm=NONE
    hi Number		ctermfg=!e0c060	ctermbg=NONE	cterm=NONE
    hi Identifier	ctermfg=!f0c0f0	ctermbg=NONE	cterm=NONE
    hi Statement	ctermfg=!c0d8f8	ctermbg=NONE	cterm=NONE
    hi PreProc		ctermfg=!60f080	ctermbg=NONE	cterm=NONE
    hi Type		ctermfg=!b0d0f0	ctermbg=NONE	cterm=NONE
    hi Special		ctermfg=!e0c060	ctermbg=NONE	cterm=NONE
    hi Error		ctermfg=!f08060	ctermbg=NONE	cterm=NONE
    hi Todo		ctermfg=!800000	ctermbg=!d0d090	cterm=NONE
    hi Search		ctermfg=NONE	ctermbg=!800000	cterm=NONE
    hi Visual		ctermfg=!000000	ctermbg=!a6caf0	cterm=NONE
    hi Cursor		ctermfg=!000000	ctermbg=!00f000	cterm=NONE
    " NOTE THIS IS IN THE COOL SECTION
    hi CursorIM		ctermfg=!000000	ctermbg=!f0c0f0	cterm=NONE
    hi StatusLine	ctermfg=!000000	ctermbg=!a6caf0	cterm=NONE
    hi LineNr		ctermfg=!b0b0b0	ctermbg=NONE	cterm=NONE
    hi Question		ctermfg=!000000	ctermbg=!d0d090	cterm=NONE
    hi ModeMsg		ctermfg=fg	ctermbg=!000080	cterm=NONE
    hi VisualNOS	ctermfg=fg	ctermbg=!000080	cterm=NONE
    hi SpecialKey	ctermfg=!b0d0f0	ctermbg=NONE	cterm=NONE
    hi NonText		ctermfg=!606060	ctermbg=NONE	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    hi NonText		ctermfg=!606060	ctermbg=NONE	cterm=NONE
    hi Directory	ctermfg=!80c0e0	ctermbg=NONE	cterm=NONE
    hi ErrorMsg		ctermfg=!d0d090	ctermbg=!800000	cterm=NONE
    hi MoreMsg		ctermfg=!c0e080	ctermbg=NONE	cterm=NONE
    hi Title		ctermfg=!f0c0f0	ctermbg=NONE	cterm=NONE
    hi WarningMsg	ctermfg=!f08060	ctermbg=NONE	cterm=NONE
    hi WildMenu		ctermfg=!000000	ctermbg=!d0d090	cterm=NONE
    hi Folded		ctermfg=NONE	ctermbg=!404040	cterm=NONE
    hi FoldColumn	ctermfg=!404040	ctermbg=NONE	cterm=NONE
    hi DiffAdd		ctermfg=NONE	ctermbg=!004000	cterm=NONE
    hi DiffChange	ctermfg=NONE	ctermbg=!005080	cterm=NONE
    hi DiffDelete	ctermfg=NONE	ctermbg=!600000	cterm=NONE
    hi DiffText		ctermfg=NONE	ctermbg=!804000	cterm=NONE
    hi SignColumn	ctermfg=!e0e0e0	ctermbg=NONE	cterm=NONE
    hi IncSearch	ctermfg=!000000	ctermbg=!d0d0d0	cterm=NONE
    hi StatusLineNC	ctermfg=!000000	ctermbg=!c0c0c0	cterm=NONE
    hi VertSplit	ctermfg=!000000	ctermbg=!c0c0c0	cterm=NONE
    hi Underlined	ctermfg=!80a0ff	ctermbg=NONE	cterm=underline
    hi Ignore		ctermfg=!000000	ctermbg=NONE
    " NOTE THIS IS IN THE COOL SECTION
    if v:version >= 700
      if has('spell')
        " the ctermsp= is not supported in Vim 7 we simply ignored
        if 0
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=!f08060
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=!6080f0
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=!f0c0f0
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=!c0d8f8
        else
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
        endif
      endif
      hi Pmenu		ctermfg=fg	ctermbg=!800080
      hi PmenuSel	ctermfg=!000000	ctermbg=!d0d0d0	cterm=NONE
      hi PmenuSbar	ctermfg=fg	ctermbg=!000080	cterm=NONE
      hi PmenuThumb	ctermfg=fg	ctermbg=!008000	cterm=NONE
      hi TabLine	ctermfg=fg	ctermbg=!008000	cterm=NONE
      hi TabLineFill	ctermfg=fg	ctermbg=!008000	cterm=NONE
      hi TabLineSel	ctermfg=fg	ctermbg=NONE	cterm=NONE
      hi CursorColumn	ctermfg=NONE	ctermbg=!800000	cterm=NONE
      hi CursorLine	ctermfg=NONE	ctermbg=!303030	cterm=NONE
      hi MatchParen	ctermfg=NONE	ctermbg=!800080
      hi Underlined	cterm=underline
    endif

  endif " t_Co

  " }}}2
endif

" Links:
"
" COLOR LINKS DEFINE START

hi link		String		Constant
" Character must be different from strings because in many languages
" (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
" mistaken a 'char' for a 'string' will cause disaster!
hi link		Character	Number
hi link		SpecialChar	LineNr
hi link		Tag		Identifier
hi link		cCppOut		LineNr
" The following are not standard hi links,
" these are used by DrChip
hi link		Warning		MoreMsg
hi link		Notice		Constant
" these are used by Calendar
hi link		CalToday	PreProc
" these are used by TagList
hi link		MyTagListTagName	IncSearch
hi link		MyTagListTagScope	Constant

" COLOR LINKS DEFINE END

" vim:et:nosta:sw=2:ts=8:
" vim600:fdm=marker:fdl=1:
