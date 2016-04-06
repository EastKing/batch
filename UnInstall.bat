    @echo on
    title 批量卸载应用[By Jay2uuscript]
    goto BEGIN

    :COMMENT
    echo  ########################################
    echo  UnInstall.bat
    rem 	By Jay2uuscript @2016/04/01
    rem 
    rem   Description:
    rem		批量卸载应用
    rem   
    rem   Version:1.0
    echo  ########################################
    pause

    :BEGIN
    echo.
    echo  ########开始.... ######################
    goto MAIN

    :MAIN
    
    rem  #########进行批量卸载...################

    for /f "tokens=1,2* delims=:" %%i in ('adb shell pm list package -3') do (
    call adb uninstall "%%j"
    )

    :END
    echo.
    echo  ######卸载完成....#####################
    pause