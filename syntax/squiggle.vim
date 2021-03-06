" Vim syntax file
" Language:     Squiggle
" URL:          TODO

if exists('b:current_syntax')
  ¦ finish
endif

syntax match   sqgComment     "\s*#.*$" contains=sqgTodo,@Spell
syntax keyword sqgTodo        TODO NOTE FIXME XXX BUG HACK contained
syntax keyword sqgTodo        TODO: NOTE: FIXME: XXX: BUG: HACK: contained

syntax region  sqgString      start=+"+ skip=+\\\\\|\\"+ end=+"+
syntax match   sqgInteger     "\<\d+\=\>"
syntax match   sqgFloat       "\<\d[[:digit:]_]*[eE][\-+]\=\d\+"

syntax keyword sqgKeyword     error
syntax keyword sqgLabel       match end
syntax keyword sqgConditional if then elseif else case end
syntax keyword sqgRepeat      forEach
syntax keyword sqgType        Number String Object Date
syntax keyword sqgRequire     require
syntax match   sqgIdentifier  /\<[\W_]+\>/

syntax keyword sqgFunction    def end
syntax keyword sqgFunction    ()

syntax keyword sqgVariable    let {}

syntax match   sqgOperator    "\<%(\~|=|==|\.|\.\.|\.\.\.|++|<|<=|>=|>|-|+|*)\>"

highlight default link sqgTodo        Todo
highlight default link sqgComment     Comment
highlight default link sqgIdentifier  Identifier
highlight default link sqgString      String
highlight default link sqgInteger     Number
highlight default link sqgFloat       Number
highlight default link sqgStatement   Statement
highlight default link sqgKeyword     Keyword
highlight default link sqgLabel       Label
highlight default link sqgConditional Conditional
highlight default link sqgRepeat      Repeat
highlight default link sqgType        Type
highlight default link sqgOperator    Operator
highlight default link sqgRequire     Include
highlight default link sqgFunction    Function
highlight default link sqgVariable    Identifier

let b:current_syntax = 'squiggle'
