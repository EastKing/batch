    @echo on 
    title adb pull log files[By Jay2uuscript]
    goto BEGIN

    :COMMENT
    echo ####################################
    rem     adb_pull_logs.bat
    rem           By Jay2uuscript @2016/03/30
    rem 
    rem     Description:
    rem        Used to pull logs file and compression
    rem 
    rem     Version:1.0
    echo ####################################
    pause

    :BEGIN
    echo.
    echo #########   开始... ###############
    goto MAIN

    :MAIN
    rem  ########   导出文件... ###########
    adb pull /storage/sdcard0/logs %~dp0\logs
    
    rem ########    压缩文件... ##########
    set temp=C:\Program Files\2345Soft\HaoZip
    cd %temp%
    if exist %~dp0\logs (
    haozipc a %~dp0\logs.zip %~dp0\logs
    )else (echo 文件不存在)

    rem ####### 修改压缩文件名称为当前时间....#####
    set date=%date::=%
    set time=%time::=%
    ren %~dp0\logs.zip %date:~0,10%_%time:~0,8%.zip

    rem #######  删除导出文件... ########
    rd /s /q %~dp0\logs

    :END
    echo.
    echo ######### 程序运行完成 #########
    pause
    