!x::  ; Alt+X 切换Chrome状态
IfWinExist, ahk_exe chrome.exe
{
    WinGet, winState, MinMax, ahk_exe chrome.exe
    if (winState = 1 || winState = 0)
        WinMinimize, ahk_exe chrome.exe
    else
    {
        WinRestore, ahk_exe chrome.exe
        WinActivate, ahk_exe chrome.exe
    }
}
else
{
    Run, C:\Program Files\Google\Chrome\Application\chrome.exe
}
return

!w::  ; Alt+W 关闭当前标签页
SendInput, ^w
return

!h::  ; Alt+H 最小化当前窗口
WinMinimize, A
return


!q::  ; Alt+Q 退出当前程序
WinGet, pid, PID, A
if pid
    Process, Close, %pid%
return

!c::  ; Alt+C 复制
WinActivate, A   ; 激活当前窗口（可选，但更保险）
Sleep, 1     ; 稍微延迟，防止某些软件无响应
SendInput, ^c
return

!v::  ; Alt+V 粘贴
WinActivate, A
Sleep, 1
SendInput, ^v
return

!a::  ; Alt+A 全选
WinActivate, A
Sleep, 1
SendInput, ^a
return

!z::  ; Alt+Z 撤销
WinActivate, A
Sleep, 1
SendInput, ^z
return
