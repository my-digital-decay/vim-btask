" Vim syntax file for todo lists
" Language:     TODO
" Author:       Keith W. Thompson <keith@nnul.me>
" Date:         2013.02.28
" File Types:   .todo
" Version:      1.0.0
" Tokens:
"   [x] completed task
"   [-] discarded / unfinished task
"   [!] urgent item
"   [^] high priority item
"   [ ] normal todo item
"   [_] low priority item

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" patterns
syn match todoBoxUrgent    display "\[\!\]"
syn match todoBoxHigh      display "\[\^\]"
syn match todoBoxNormal    display "\[ \]"
syn match todoBoxLow       display "\[_\]"
syn match todoBoxComplete  display "\[x\]"
syn match todoBoxDiscard   display "\[-\]"

syn match todoTaskUrgent   display "\[\!\].*$" contains=todoBoxUrgent
syn match todoTaskHigh     display "\[\^\].*$" contains=todoBoxHigh
syn match todoTaskNormal   display "\[ \].*$"  contains=todoBoxNormal
syn match todoTaskLow      display "\[_\].*$"  contains=todoBoxLow
syn match todoTaskComplete display "\[x\].*$"  contains=todoBoxComplete
syn match todoTaskDiscard  display "\[-\].*$"  contains=todoBoxDiscard

syn match  todoTitle       display "#.*$"
syn region todoDate        start='<' end='>'

" highlights
hi def link todoBoxUrgent     Error
hi def link todoBoxHigh       Statement
hi def link todoBoxNormal     ModeMsg
"hi def link todoBoxLow        LineNr
hi def link todoBoxComplete   Comment
hi def link todoBoxDiscard    Comment

hi def link todoTaskUrgent    todoBoxUrgent
hi def link todoTaskHigh      todoBoxHigh
"hi def link todoTaskNormal    Normal
"hi def link todoTaskLow       LineNr
hi def link todoTaskComplete  todoBoxComplete
hi def link todoTaskDiscard   todoBoxDiscard

hi def link todoTitle         Title
hi def link todoDate          Identifier

let b:current_syntax = "todo"
