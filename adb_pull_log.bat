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
    echo #########   ��ʼ... ###############
    goto MAIN

    :MAIN
    rem  ########   �����ļ�... ###########
    adb pull /storage/sdcard0/logs %~dp0\logs
    
    rem ########    ѹ���ļ�... ##########
    set temp=C:\Program Files\2345Soft\HaoZip
    cd %temp%
    if exist %~dp0\logs (
    haozipc a %~dp0\logs.zip %~dp0\logs
    )else (echo �ļ�������)

    rem ####### �޸�ѹ���ļ�����Ϊ��ǰʱ��....#####
    set date=%date::=%
    set time=%time::=%
    ren %~dp0\logs.zip %date:~0,10%_%time:~0,8%.zip

    rem #######  ɾ�������ļ�... ########
    rd /s /q %~dp0\logs

    :END
    echo.
    echo ######### ����������� #########
    pause
    