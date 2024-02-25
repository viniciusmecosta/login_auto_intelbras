#include <IE.au3>
Global $oIE = _IECreate("http://ip_e_porta_aqui/", 0, 1, 1)
Call("signIn")

Func signIn()
    _IELoadWait($oIE)
    WinSetState("[CLASS:IEFrame]", "", @SW_MAXIMIZE)
    Sleep(300)
    WinActivate("INTELBRAS")
    login() ;
    turnHd()
    clickCam(800, 300)
    clickCam(350, 550)
    clickCam(800, 550)
    openCams()
    maxCams()
EndFunc

Func login()
    Local $username = _IEGetObjById($oIE, "username")
    Local $password = _IEGetObjById($oIE, "password")
    _IEFormElementSetValue($username, "login_aqui")
    _IEFormElementSetValue($password, "senha_aqui")
    Sleep(800)
    Local $loginButton = _IEGetObjById($oIE, "lbt")
    _IEAction($loginButton, "click")
EndFunc

Func openCams()
    Local $openAll = _IEGetObjById($oIE, "xac")
    If IsObj($openAll) Then
        _IEAction($openAll, "click")
        Sleep(300)
    EndIf
EndFunc

Func turnHd()
    Local $x = 350
    Local $y = 650
    WinActivate("INTELBRAS")
    Sleep(300)
    MouseClick("left", $x, $y, 1, 0)
    Sleep(200)
    Local $x = 370
    Local $y = 655
    WinActivate("INTELBRAS")
    Sleep(100)
    MouseClick("left", $x, $y, 1, 0)
EndFunc

Func clickCam($x, $y)
    Sleep(200)
    WinActivate("INTELBRAS")
    Sleep(200)
    MouseClick("left", $x, $y, 1, 0)
    Sleep(200)
    turnHd() 
EndFunc

Func maxCams()
    Local $x = 410
    Local $y = 650
    WinActivate("INTELBRAS")
    Sleep(100)
    MouseClick("left", $x, $y, 1, 0)
EndFunc
