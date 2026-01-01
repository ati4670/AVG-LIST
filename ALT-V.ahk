#Requires AutoHotkey v2.0

!v:: {
    ; 鎖定滑鼠與鍵盤輸入
    BlockInput "MouseMove"
    BlockInput "On"
    
    Sleep 130
    Send "{RButton}"
    Sleep 130
    Send "{Down}"
    Sleep 20
    Send "{Enter}"
    Sleep 20
    Send "{Right}"
    Sleep 20
    Send "{Left}"
    Sleep 20
    
    ; 發送純文字底線並貼上內容
    SendText "_"
    Send "^v"
    Send "{Home}"

    ; 迴圈刪除 11 次
    Loop 11 {
        Sleep 10
        Send "{Delete}"
    }

    Sleep 10
    Send "{Enter}"
    Sleep 20
    Send "{Up}"
    Sleep 20
    Send "{Space}"

    ; 迴圈 Tab 17 次
    Loop 17 {
        Sleep 10
        Send "{Tab}"
    }

    Send "{Space}"
    Sleep 10
    
    ; 解除鎖定
    BlockInput "MouseMoveOff"
    BlockInput "Off"
}