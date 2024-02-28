#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent ; Keep the script running

; Define the hotkey to trigger the resizing
^!r:: ; Press Ctrl+Alt+R to trigger the resize

; Get the handle of the active window
WinGet, activeWindow, ID, A

; Resize the active window to 720p (1280x720)
WinMove, ahk_id %activeWindow%,, 0, 0, 1280, 720

return
