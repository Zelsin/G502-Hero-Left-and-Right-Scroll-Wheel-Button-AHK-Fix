#SingleInstance Force
#Persistent ;Keeps a script permanently running (that is, until the user closes it or ExitApp is encountered).

;Wheel Left is set to F6 and Weel Right is set to F8 with Logitech software for this script(Can be Changed but requires editing Script)

;Anything after ";" is a Explanation, not necessary to read

{
 $F8::  ;Can Change F8 to a different key but it must also be changed for the Mouse with Logitech software and KeyWait line after Else in this Script
 if (getKeyState("MButton","P")) ;Get's Status of Middle Scroll Wheel Button
 {
  KeyWait,MButton ;Waits While Middle Scroll Wheel Button is Held Down
 } 
 Else 
 KeyWait,F8,T0.1 ;wait 0.1 seconds for release key but can be changed(I Suggested betweeb 0.1 to 0.5), This should be the Mouse Button you Configured with the Logitech software
 If (ErrorLevel) ;Checks if the time set by the previous line has paseed
{
GetKeyState, state, MButton
if (state = "D")
{
KeyWait,MButton ;Waits While Middle Scroll Wheel Button is Held Down
if (getKeyState("F8","P")) ;Get's Status of Middle Scroll Wheel Button
{
Send {F8}
}
}
}
Else
KeyWait,F8,T0.3 ;wait 0.3 seconds for release key but can be changed(I Suggested betweeb 0.3 to 1.0), This should be the Mouse Button you Configured with the Logitech software
 If (ErrorLevel) ;Checks if the time set by the previous line has paseed
 {
 Send {F8}
 }
Return
}


{
 $F6:: ;Can Change F6 to a different key but it must also be changed for the Mouse with Logitech software and KeyWait line after Else in this Script
  if (getKeyState("MButton","P")) ;Get's Status of Middle Scroll Wheel Button
 {
  KeyWait,MButton ;Waits While Middle Scroll Wheel Button is Held Down
 } 
 Else 
 KeyWait,F6,T0.1 ;wait 0.1 seconds for release key but can be changed(I Suggested betweeb 0.1 to 0.5), F6 should be the Mouse Button you Configured with the Logitech software
 If (ErrorLevel) ;Checks if the time set by the previous line has paseed
  {
GetKeyState, state, MButton
if (state = "D")
{
KeyWait,MButton ;Waits While Middle Scroll Wheel Button is Held Down
If (getKeyState("F6","P")) ;Get's Status of Middle Scroll Wheel Button
{
Send {F6}
}
}
}
Else
KeyWait,F6,T0.3 ;wait 0.3 seconds for release key but can be changed(I Suggested betweeb 0.3 to 1.0), This should be the Mouse Button you Configured with the Logitech software
 If (ErrorLevel) ;Checks if the time set by the previous line has paseed
 {
 Send {F6}
 }
Return
}





{
;~!F1:: ;Pauses and UnPauses the Script With Alt+F1(Can be changed), Remove ";" at the start of the line to activate
;Suspend  ;Remove ";" at the start of the line to activate
;Return   ;Remove ";" at the start of the line to activate
}




