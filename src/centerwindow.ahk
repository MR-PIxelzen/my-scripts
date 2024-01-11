^!c:: ; Press Ctrl+Alt+C to center the active window
    SysGet, Mon, Monitor, % "A" ; Get the monitor info for the active window
    WinGetPos, , , WinWidth, WinHeight, A ; Get the width and height of the active window
    ScreenWidth := MonRight - MonLeft ; Calculate the screen width
    ScreenHeight := MonBottom - MonTop ; Calculate the screen height
    NewX := (ScreenWidth - WinWidth) // 2 + MonLeft ; Calculate the new X position
    NewY := (ScreenHeight - WinHeight) // 2 + MonTop ; Calculate the new Y position
    WinMove, A,, NewX, NewY ; Move the active window to the center
return
