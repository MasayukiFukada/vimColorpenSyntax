" Vim syntax file
" vim:ts=4:sw=4:ft=vim
" Language:     Color Pen
" Maintainer:   Masayuki Fukada
" Filenames:    *.txt,*.inc
" Last Change: 2013/04/07 05:53:41.
" Encoding: utf-8

if exists('b:current_syntax')
    finish
endif
unlet! b:current_syntax

set conceallevel=3
set concealcursor=nc

" 色・条件・リンク 設定
function! s:definePen(name,opt,fg_col,keyword)
    exe 'hi colorpen' . a:name . ' guifg=' . a:fg_col . ' gui=' . a:opt
    exe 'syntax match match_colorpen' . a:name . ' /[^\s].*' . a:keyword . '$/ oneline contains=match_colorpen1StSpace,match_colorpen' . a:name . 'TAG'
    exe 'syntax region match_colorpen' . a:name . 'TAG start=/' . a:keyword . '$/ end=/$/ oneline conceal cchar= '
    exe 'hi link match_colorpen' . a:name . ' colorpen' . a:name
endfunction
" ---------------------------------------------------------------------------
" 赤    : r
call s:definePen('Red'                  ,'none'             ,'#cc3333','#rnn')
call s:definePen('RedBold'              ,'bold'             ,'#cc3333','#rbn')
call s:definePen('RedBoldUnder'         ,'bold,underline'   ,'#cc3333','#rbu')
call s:definePen('RedUnder'             ,'underline'        ,'#cc3333','#rnu')
" 紫    : p
call s:definePen('Purple'               ,'none'             ,'#cc55cc','#pnn')
call s:definePen('PurpleBold'           ,'bold'             ,'#cc55cc','#pbn')
call s:definePen('PurpleBoldUnder'      ,'bold,underline'   ,'#cc55cc','#pbu')
call s:definePen('PurpleUnder'          ,'underline'        ,'#cc55cc','#pnu')
" 青    : b
call s:definePen('Blue'                 ,'none'             ,'#5577cc','#bnn')
call s:definePen('BlueBold'             ,'bold'             ,'#5577cc','#bbn')
call s:definePen('BlueBoldUnder'        ,'bold,underline'   ,'#5577cc','#bbu')
call s:definePen('BlueUnder'            ,'underline'        ,'#5577cc','#bnu')
" 水色 : c
call s:definePen('Cyan'                 ,'none'             ,'#55bbee','#cnn')
call s:definePen('CyanBold'             ,'bold'             ,'#55bbee','#cbn')
call s:definePen('CyanBoldUnder'        ,'bold,underline'   ,'#55bbee','#cbu')
call s:definePen('CyanUnder'            ,'underline'        ,'#55bbee','#cnu')
" 緑   : g
call s:definePen('Green'                ,'none'             ,'#55cc77','#gnn')
call s:definePen('GreenBold'            ,'bold'             ,'#55cc77','#gbn')
call s:definePen('GreenBoldUnder'       ,'bold,underline'   ,'#55cc77','#gbu')
call s:definePen('GreenUnder'           ,'underline'        ,'#55cc77','#gnu')
" 黄緑 : e
call s:definePen('PeaGreen'             ,'none'             ,'#aacc55','#enn')
call s:definePen('PeaGreenBold'         ,'bold'             ,'#aacc55','#ebn')
call s:definePen('PeaGreenBoldUnder'    ,'bold,underline'   ,'#aacc55','#ebu')
call s:definePen('PeaGreenUnder'        ,'underline'        ,'#aacc55','#enu')
" 黄   : y
call s:definePen('Yellow'               ,'none'             ,'#cc9955','#ynn')
call s:definePen('YellowBold'           ,'bold'             ,'#cc9955','#ybn')
call s:definePen('YellowBoldUnder'      ,'bold,underline'   ,'#cc9955','#ybu')
call s:definePen('YellowUnder'          ,'underline'        ,'#cc9955','#ynu')
" 特殊定義
syntax match match_colorpenXXX      /[^\s].*#xxx$/          contains=match_colorpenXXXTAG
syntax region match_colorpenXXXTAG  start=/#xxx.*/  end=/$/ oneline conceal cchar= 
hi link match_colorpenXXX       Comment
" ---------------------------------------------------------------------------
" 先頭の空白
syntax match match_colorpen1StSpace /^\s\+/
" ---------------------------------------------------------------------------
let b:current_syntax = 'txt'

