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
    echo  ########开始.... ######################
    goto MAIN

    :MAIN
    rem  #########设置路径.... ##################
    set work_path=C:\Users\Jay\Desktop
    cd /d %work_path%
    rem  #########进行批量安装...################
    for /R %%s in (*.apk) do (
    echo 正在安装 %%s
    adb install -r "%%s"
    )

    :END
    echo.
    echo  ######安装完成....#####################
    pause