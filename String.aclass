; ╒══════════════════════════════════════════════════════════════╕
; │                 String class for AutoHotkey                  │
; ├──────────────────────────────────────────────────────────────┤
; │          Create string objects with a few options.           │
; ╞══════════════════════════════════════════════════════════════╡
; │ Functions ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
; ├─────────┬─────────┬──────────────────────────────────────────┤
; │ @method │ @params │ @description                             │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ __New() │ str     │ Init string object with string           │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ str()   │ str     │ Enum and change string vars              │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ split() │ delims  │ Create array: by delimiter; default char │
; │ <array> ├─────────┼──────────────────────────────────────────┤
; │         │ omits   │ Omit chars from array                    │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ sub()   │ start   │ Sub string: start; starting position     │
; │ <SubStr>├─────────┼──────────────────────────────────────────┤
; │         │ len     │ Length of string to from start           │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ in()    │ needle  │ [if in string]: needle; what to look for │
; │ <InStr> ├─────────┼──────────────────────────────────────────┤
; │         │ case    │ Case sensitivity; default: false         │
; │         ├─────────┼──────────────────────────────────────────┤
; │         │ start   │ Start character position                 │
; │         ├─────────┼──────────────────────────────────────────┤
; │         │ occur   │ Which occurence                          │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ len     │ <NA>    │ Get string length                        │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ lTrim   │ cnt     │ Trim string from left; cnt: # of chars   │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ rTrim   │ cnt     │ Trim string from right; cnt: # of chars  │
; ├─────────┼─────────┼──────────────────────────────────────────┤
; │ lines   │ <NA>    │ Array of lines  from string              │
; ╞═════════╧═════════╧══════════════════════════════════════════╡
; │ Instance Vars ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
; ├──────────┬───────────────────────────────────────────────────┤
; │ @varName │ @description                                      │
; ├──────────┼───────────────────────────────────────────────────┤
; │ string   │ Contains the string                               │
; ├──────────┼───────────────────────────────────────────────────┤
; │ length   │ Contains the strings length                       │
; ├──────────┼───────────────────────────────────────────────────┤
; │ array    │ Contains a delimted array of the string           │
; ├──────────┼───────────────────────────────────────────────────┤
; │ line     │ Contains an array of lines of the string          │
; ╞══════════╧═══════════════════════════════════════════════════╡
; │ Usage ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
; ├──────────────────────────────────────────────────────────────┤
; │ E.g. stringVar := New String("This is`na string")            │
; │      stringVar.lTrim(3)	;= "s is`na string"                  │
; │      stringVar.length 	;= 13 ; after trim                   │
; │      stringVar.array[1]	;= 'T' ; after trim                  │
; │      stringVar.line[1]	;= "s is" ; after trim               │
; ╞══════════════════════════════════════════════════════════════╡
; │        © 2019 Ian Pride - New Pride Software/Services        │
; ╘══════════════════════════════════════════════════════════════╛
class String {
	__New(str := ""){
		this.str(str) ;
	}
	str(str := ""){
		this.string := str ;
		this.len() ;
		this.split() ;
		this.lines() ;
		return this.string ;
	}
	split(delims := "",omits := ""){
		return this.array := StrSplit(this.string,delims,omits) ;
	}
	sub(start := 1,len := 0){
		return SubStr(this.string,start,(len?len:this.length)) ;
	}
	in(needle,case := false,start := 1,occur := 1){
		return InStr(this.string,needle,case,start,occur) ;
	}
	len(){
		return this.length := StrLen(this.string) ;
	}
	lTrim(cnt := 1){
		return this.str(SubStr(this.string,cnt+1)) ;
	}
	rTrim(cnt := 1){
		return this.str(SubStr(this.string,1,StrLen(this.string)-cnt)) ;
	}
	lines(){
		this.line := [] ;
		loop,parse,% this.string,`n
		{
			this.line[A_Index] := A_LoopField ;
		}
		return this.line ;
	}
}