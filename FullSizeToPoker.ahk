#CommentFlag //
#InstallKeybdHook

// Author: Jarvis Prestidge
// Disabled keys section author: panserbj0rn
// Description: Simulates my preferred keyboard layout, similiar to that of the Pok3r 60% keyboard
// on any keyboard without programmable keys. i.e. my laptop ^^
// UPDATE: Disables function key block, navigation block and number pad block

// <COMPILER: v1.1.22.00>

// =========================
// Pok3r Layout Marcos
// =========================

#Persistent
SetCapsLockState, AlwaysOff

#2::
Run "c:\dev\test\FullSizeToPoker2ndLayer.ahk" ; With the full file path specified, of course
ExitApp
return

// Disabled keys
SC001::return // Escape

SC03B::return // F1
SC03C::return // F2
SC03D::return // F3
SC03E::return // F4
SC03F::return // F5
SC040::return // F6
SC041::return // F7
SC042::return // F8
SC043::return // F9
SC044::return // F10
SC057::return // F11
SC058::return // F12

PrintScreen::return
ScrollLock::return
SC045::return // Pause

Insert::return
Delete::return
Home::return
End::return
PgUp::return
PgDn::return

Up::return
Down::return
Left::return
Right::return

Numpad0::return
Numpad1::return
Numpad2::return
Numpad3::return
Numpad4::return
Numpad5::return
Numpad6::return
Numpad7::return
Numpad8::return
Numpad9::return
NumpadDot::return
NumpadIns::return
NumpadEnd::return
NumpadDown::return
NumpadPgDn::return
NumpadLeft::return
NumpadClear::return
NumpadRight::return
NumpadHome::return
NumpadUp::return
NumpadPgUp::return
NumpadDel::return
NumLock::return
NumpadDiv::return
NumpadMult::return
NumpadAdd::return
NumpadSub::return
NumpadEnter::return

// Make Tilde equivalent to Esc
`::SendInput {Escape}

// Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

// Capslock + uoh; (pgdown, pgup, home, end)

Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & ;::SendInput {End Down}
Capslock & ; up::SendInput {End Up}

Capslock & u::SendInput {Blind}{PgUp Down}
Capslock & u up::SendInput {Blind}{PgUp Up}

Capslock & o::SendInput {Blind}{PgDn Down}
Capslock & o up::SendInput {Blind}{PgDn Up}

// Make Capslock + number keys equal function keys (F1-F10)
Capslock & 1::SendInput {Blind}{F1}
Capslock & 2::SendInput {Blind}{F2}
Capslock & 3::SendInput {Blind}{F3}
Capslock & 4::SendInput {Blind}{F4}
Capslock & 5::SendInput {Blind}{F5}
Capslock & 6::SendInput {Blind}{F6}
Capslock & 7::SendInput {Blind}{F7}
Capslock & 8::SendInput {Blind}{F8}
Capslock & 9::SendInput {Blind}{F9}
Capslock & 0::SendInput {Blind}{F10}
Capslock & -::SendInput {Blind}{F11}
Capslock & =::SendInput {Blind}{F12}

// Make Capslock & Backspace equivalent to delete
Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}
  
// Make Capslock & p equivalent to PrintScreen
Capslock & p::SendInput {PrintScreen}
  
// Make Capslock & b equivalent to Pause/Break
Capslock & b::SendInput {Pause}

// Make CapsLock & Right Shift the application menu key 
CapsLock & RShift::SendInput {AppsKey}

// Make CapsLock & q the previous media key
CapsLock & q::SendInput {Media_Prev}

// Make CapsLock & e the next media key
CapsLock & e::SendInput {Media_Next}

// Make Win Key + Capslock work like Capslock
LWin & Capslock::SetCapsLockState, % (State:=!State) ? "On" : "Off"