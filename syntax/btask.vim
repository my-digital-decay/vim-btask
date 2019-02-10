" Vim syntax file for bullet journal task lists
" Language:     BTASK,TASK
" Author:       Keith W. Thompson <keith@nnul.me>
" Date:         2019.02.09
" File Types:   .btask .task
" Version:      1.0.0
" Tokens:
"   . task
"   - note
"   o event
"   X complete
"   _ discard
"   : group
"   ? question
"   ! idea
"   * highlight
"   > migrate (next month)
"   < migrate (future)
"   ^ move (new day)

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match btaskTitle        display "^#.*$"
syn match btaskDate         display "^\d.*$"

" Bullet Journal
syn match btaskTaskMark     display "^\s*[.] "
syn match btaskTask         display "^\s*[.] .*$" contains=btaskTaskMark
syn match btaskCompleteMark display "^\s*X "
syn match btaskComplete     display "^\s*X .*$" contains=btaskCompleteMark
syn match btaskCompleteMark display "^\s*x "
syn match btaskComplete     display "^\s*x .*$" contains=btaskCompleteMark
syn match btaskDiscardMark  display "^\s*[_] "
syn match btaskDiscard      display "^\s*[_] .*$" contains=btaskDiscardMark
syn match btaskGroupMark    display "^\s*[:] "
syn match btaskGroup        display "^\s*[:] .*$" contains=btaskGroupMark
syn match btaskNoteMark     display "^\s*[-] "
syn match btaskNote         display "^\s*[-] .*$" contains=btaskNoteMark
syn match btaskEventMark    display "^\s*O "
syn match btaskEvent        display "^\s*O .*$" contains=btaskEventMark
syn match btaskEventMark    display "^\s*o "
syn match btaskEvent        display "^\s*o .*$" contains=btaskEventMark
syn match btaskMoveMark     display "^\s*\^ "
syn match btaskMove         display "^\s*\^ .*$" contains=btaskMoveMark
syn match btaskMigrateMark  display "^\s*[<>] "
syn match btaskMigrate      display "^\s*[<>] .*$" contains=btaskMigrateMark
syn match btaskQuestionMark display "^\s*[?] "
syn match btaskQuestion     display "^\s*[?] .*$" contains=btaskQuestionMark
syn match btaskIdeaMark     display "^\s*[!] "
syn match btaskIdea         display "^\s*[!] .*$" contains=btaskIdeaMark
syn match btaskHighlight    display "^\s*[*] .*$"

" highlights
hi def link btaskTitle         Title
hi def link btaskDate          Identifier
hi def link btaskTaskMark      ModeMsg
hi def link btaskNoteMark      Statement
hi def link btaskEventMark     Directory
hi def link btaskCompleteMark  Comment
hi def link btaskComplete      Comment
hi def link btaskDiscardMark   btaskCompleteMark
hi def link btaskDiscard       btaskComplete
hi def link btaskQuestionMark  Title
hi def link btaskIdeaMark      Title
hi def link btaskGroupMark     btaskTaskMark
hi def link btaskGroup         VisualNOS
hi def link btaskMoveMark      btaskTaskMark
hi def link btaskMove          btaskComplete
hi def link btaskMigrateMark   btaskTaskMark
hi def link btaskMigrate       btaskComplete
hi def link btaskHighlight     FoldColumn

let b:current_syntax = "btask"
