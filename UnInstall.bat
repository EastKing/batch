    @echo on
    title ����ж��Ӧ��[By Jay2uuscript]
    goto BEGIN

    :COMMENT
    echo  ########################################
    echo  UnInstall.bat
    rem 	By Jay2uuscript @2016/04/01
    rem 
    rem   Description:
    rem		����ж��Ӧ��
    rem   
    rem   Version:1.0
    echo  ########################################
    pause

    :BEGIN
    echo.
    echo  ########��ʼ.... ######################
    goto MAIN

    :MAIN
    
    rem  #########��������ж��...################

    for /f "tokens=1,2* delims=:" %%i in ('adb shell pm list package -3') do (
    call adb uninstall "%%j"
    )

    :END
    echo.
    echo  ######ж�����....#####################
    pause