" Vim filetype detection for task files
" Language:     BTASK,TASK
" Author:       Keith W. Thompson <keith@nnul.me>
" Date:         2019.02.09
" File Types:   .btask,.task,.tsk,.todo
" Version:      1.0.0

"if exists("did_load_filetypes")
"  finish
"endif

au! BufRead,BufNewFile *.btask,*.task,*.tsk   setfiletype btask
au! BufRead,BufNewFile *.todo                 setfiletype todo
