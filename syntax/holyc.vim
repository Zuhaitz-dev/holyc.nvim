" syntax/holyc.vim
" Description: Comprehensive syntax highlighting for the HolyC language.

" Prevent loading this file twice
if exists("b:current_syntax")
  finish
endif

" Case-sensitive keywords
syn case match

" Comments (will be green/gray in most themes)
syn region holycComment start="/\*" end="\*/"
syn match  holycComment "//.*"

" Strings (will be green/yellow in most themes)
syn region holycString start=/"/ skip=/\\"/ end=/"/
syn region holycString start=/'/ skip=/\\'/ end=/'/

" Preprocessor Directives (often magenta/purple)
syn match holycPreProc "^#.*"

" Numbers (often orange/peach)
syn match holycNumber "\<0x[0-9a-fA-F]\+\>"
syn match holycNumber "\<[0-9]\+\>"

" Punctuation (often just the default text color)
syn match holycPunctuation "[{}()\[\],;.]"

" Operators (often pink/red)
syn match holycOperator "[-+/*=<>!&|~^%]\+"

" Keywords (often purple/blue)
syn keyword holycKeyword break case continue default do else for goto if return switch while try catch throw

" Storage Class Keywords (often a different shade of purple/blue)
syn keyword holycStorageClass extern public asm const static inline sizeof

" Built-in Assembly-like keywords (often red/orange)
syn keyword holycBuiltin MOV CALL PUSH LEAVE RET SUB ADD CMP JMP INC

" Registers (often a light blue/cyan)
syn keyword holycRegister RAX RCX RDX RBX RSP RBP RSI RDI EAX ECX EDX EBX ESP EBP ESI EDI AX CX DX BX SP BP SI DI

" Types (often yellow/cyan)
syn keyword holycType U0 I8 U8 I16 U16 I32 U32 I64 U64 F64 Bool class union

" Constants (often orange/purple)
syn keyword holycConstant NULL TRUE FALSE ON OFF

" --- Highlighting Links ---
" This connects our custom groups to standard Neovim groups.
hi def link holycComment         Comment
hi def link holycString          String
hi def link holycPreProc         PreProc
hi def link holycNumber          Number
hi def link holycKeyword         Keyword
hi def link holycStorageClass    StorageClass
hi def link holycBuiltin         Statement
hi def link holycRegister        Identifier
hi def link holycType            Type
hi def link holycConstant        Constant
hi def link holycPunctuation     Delimiter
hi def link holycOperator        Operator

let b:current_syntax = "holyc"
