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

" Bullet Journal tasks
syn match btaskTaskMark     display "^\s*[.] "
"syn match btaskTask         display "^\s*[.] .*$"
syn match btaskCompleteMark display "^\s*X "
syn match btaskComplete     display "^\s*X .*$"
syn match btaskCompleteMark display "^\s*x "
syn match btaskComplete     display "^\s*x .*$"
syn match btaskDiscardMark  display "^\s*[_] "
syn match btaskDiscard      display "^\s*[_] .*$"
syn match btaskGroup        display "^\s*[:] .*$"
syn match btaskNoteMark     display "^\s*[-] "
"syn match btaskNote         display "^\s*[-] .*$"
syn match btaskEventMark    display "^\s*O "
"syn match btaskEvent        display "^\s*O .*$"
syn match btaskEventMark    display "^\s*o "
"syn match btaskEvent        display "^\s*o .*$"
syn match btaskMoveMark     display "^\s*\^ "
syn match btaskMove         display "^\s*\^ .*$"
syn match btaskMigrateMark  display "^\s*[>] "
"syn match btaskMigrate      display "^\s*[>] .*$"
syn match btaskMigrateMark  display "^\s*[<] "
"syn match btaskMigrate      display "^\s*[<] .*$"
syn match btaskHighlight    display "^\s*[*] .*$"
syn match btaskQuestionMark display "^\s*[?] "
"syn match btaskQuestion     display "^\s*[?] .*$"
syn match btaskIdeaMark     display "^\s*[!] "
"syn match btaskIdea         display "^\s*[!] .*$"

" highlights
hi def link btaskTitle         CommentDoc
hi def link btaskDate          Identifier
hi def link btaskTaskMark      Bold
hi def link btaskComplete      Comment
hi def link btaskDiscard       Comment
hi def link btaskGroup         Bold
hi def link btaskNoteMark      Statement
hi def link btaskEventMark     Color04
hi def link btaskMove          Comment
hi def link btaskMigrateMark   Identifier
hi def link btaskHighlight     Color02
hi def link btaskQuestionMark  Color13
hi def link btaskIdeaMark      Color13

let b:current_syntax = "btask"
