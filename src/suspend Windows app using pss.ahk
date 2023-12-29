; Set the hotkeys for suspension and resumption
^!s::SuspendActiveApp() ; Ctrl+Alt+S to suspend
^!r::ResumeActiveApp()  ; Ctrl+Alt+R to resume

SuspendActiveApp() {
    WinGet, activePID, PID, A ; Get the PID of the active window
    if (activePID) {
        Process_Suspend(activePID)
        MsgBox, Suspended the active application.
    } else {
        MsgBox, No active application found.
    }
}

ResumeActiveApp() {
    WinGet, activePID, PID, A ; Get the PID of the active window
    if (activePID) {
        Process_Resume(activePID)
        MsgBox, Resumed the active application.
    } else {
        MsgBox, No active application found.
    }
}

Process_Suspend(PID) {
   Run, pssuspend.exe %PID%, , Hide
}

Process_Resume(PID) {
   Run, pssuspend.exe -r %PID%, , Hide
}
