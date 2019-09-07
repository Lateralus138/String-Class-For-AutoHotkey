;┌─────────────────────────────────────────────────────────────┐
;│ Example script to showcase my 'String' class for AutoHotkey │
;└─────────────────────────────────────────────────────────────┘
;┌────────────┐
;│ Directives │
;└────────────┘
#SingleInstance,force
SetWorkingDir,%A_ScriptDir%
SetBatchLines,-1

;┌──────┐
;│ Vars │
;└──────┘
;┌─────────────────────────────────────────┐
;│ Create the object from the String class │
;└─────────────────────────────────────────┘
myString := New String("first line`nsecond line`nthird line") ;


;┌──────┐
;│ Init │
;└──────┘

;┌───────────────────────────────────────┐
;│ Message after initial object creation │
;└───────────────────────────────────────┘
msg("Intitial String")

;┌────────────────────────────────────────┐
;│ Empty the string, but keep the object. │
;│ Use <object>.str() to ensure the whole │
;│ object changes.                        │
;└────────────────────────────────────────┘
myString.str("") ;
msg("Null String")

;┌─────────────────────────────────────────┐
;│ Change the string and all instance vars │
;└─────────────────────────────────────────┘
myString.str("New string") ;
msg("Changed String")

;┌────────────────────┐
;│ Destroy the object │
;└────────────────────┘
myString := ""
msg("Object Emptied")

;┌──────────┐
;│ Function │
;└──────────┘
msg(title){ ; Message wrapper
	MsgBox,64,AutoHotkey String Class Tests,% title exec()
}
exec(){ ; format text for this example
	global ;
	local b := "`n" ;
	loop,40
		b .= "-" ;
	return 	b b "`nBefore Trim:"
		.	b "`nString:`n" myString.string
		.	b "`nString length: " myString.length
		.	b "`nNumber of lines: " myString.line.MaxIndex()
		.	b "`nArray Index 1: " myString.array[1]
		.	b "`nWord "`"" "line" "`"" is in string: " myString.in("line")
		.	b "`nObject Exists: " IsObject(myString)
		.	b b
		.	"`n" b b "`nAfter Trim:"
		.	b "`nTrimmed 4 Left:`n" myString.lTrim(4) ; trim string left 4 chars
		.	b "`nTrimmed 3 Right:`n" myString.rTrim(3) ; trim string right 3 chars
		.	b "`nString:`n" myString.string
		.	b "`nString length: " myString.length
		.	b "`nNumber of lines: " myString.line.MaxIndex()
		.	b "`nArray Index 1: " myString.array[1]
		.	b "`nObject Exists: " IsObject(myString)
		.	b b
}
;┌───────┐
;│ Class │
;└───────┘
#Include, String.aclass ; Include the class <or String.ahk>