    @echo on
    title adb install all Package[By Jay2uuscript]
    goto BEGIN

    :COMMENT
    echo  ########################################
    echo  Install.bat
    rem 	By Jay2uuscript @2016/04/01
    rem 
    rem   Description:
    rem		Used to install all Package
    rem   
    rem   Version:1.0
    echo  ########################################
    pause

    :BEGIN
    echo.
    echo  ########��ʼ.... ######################
    goto MAIN

    :MAIN
    rem  #########����·��.... ##################
    set work_path=C:\Users\Jay\Desktop
    cd /d %work_path%
    rem  #########����������װ...################
    for /R %%s in (*.apk) do (
    echo ���ڰ�װ %%s
    adb install -r "%%s"
    )

    :END
    echo.
    echo  ######��װ���....#####################
    pause