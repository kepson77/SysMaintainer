@echo off

REM This is a small program useful in clearing files from the current user's
REM Temp and Temporary Internet Files directories (located under the 
REM C:\Documents and Settings\%currently logged in user%\Local Settings 
REM directory) from withing Microsoft Windows XP. It also has a few other 
REM useful features, such as turning the Internet Firewall on or off, and 
REM also downloading additional programs helpful in troubleshooting malicious
REM software that may be installed on a Windows XP computer.
 
REM Written by Kevin Epson - kepson77@Hotmail.com




TITLE SysMaintainer - Main Menu

cls

ECHO.
ECHO.
ECHO.

:main_menu
TITLE SysMaintainer - Main Menu
cls

ECHO This program will help you clear your Windows XP computer of spyware, 
ECHO malware, and other unnecessary files that may be lingering around. 
ECHO.
ECHO.
ECHO Please select an option to begin...
ECHO.
ECHO.
ECHO 1. Get rid of a few unnecessary files
ECHO 2. Clear extra files from your internet searches
ECHO 3. Turn your internet firewall on/off
ECHO 4. Download additional (free) software to help rid your computer
ECHO    of harmful items
ECHO 5. Exit the program
ECHO.
ECHO.

SET /P M=[1,2,3,4,5]?

IF "%M%" == "1" GOTO temp_menu
IF "%M%" == "2" GOTO temp_int_menu
IF "%M%" == "3" GOTO firewall_menu
IF "%M%" == "4" GOTO download_menu
IF "%M%" == "5" GOTO exit_menu
IF NOT EXIST "%M%" GOTO correct_input_msg_main_menu

:correct_input_msg_main_menu
ECHO Please type the correct letter or number as indicated above
pause

GOTO main_menu

REM-------------------------------------1-----------------------------------------

:temp_menu

TITLE Clear Temp Files
cls

ECHO.
ECHO.
ECHO The following will clear your login account's Temp directory of a few 
ECHO unnecessary files. 
ECHO.
ECHO Do you wish to proceed? (Y/N)
ECHO.

SET /P P=[Y,N]?

IF "%P%" == "Y" GOTO proceed_temp_del
IF "%P%" == "y" GOTO proceed_temp_del
IF "%P%" == "N" GOTO main_menu
IF "%P%" == "n" GOTO main_menu
IF NOT EXIST "%P%" GOTO correct_input_msg1

:correct_input_msg1
ECHO Please type the correct letter or number as indicated above
ECHO.
pause

GOTO temp_menu

:proceed_temp_del

DEL /F /Q "%userprofile%\local settings\temp\*"

cls

ECHO.
ECHO.
ECHO Your account's Temp directory should now be clear of all unnecessary files.

pause

cls
GOTO main_menu

REM-------------------------------------2----------------------------------------

:temp_int_menu

TITLE Clear Temporary Internet Files
cls

ECHO.
ECHO.
ECHO The following will clear your login account of its Temoporary Internet Files.
ECHO.
ECHO Do you wish to proceed? (Y/N)
ECHO.

SET /P Q=[Y,N]?

IF "%Q%" == "Y" GOTO proceed_temp_int_del
IF "%Q%" == "y" GOTO proceed_temp_int_del
IF "%Q%" == "N" GOTO main_menu
IF "%Q%" == "n" GOTO main_menu
IF NOT EXIST "%Q%" GOTO correct_input_msg2

:correct_input_msg2
ECHO Please type the correct letter or number as indicated above
ECHO.
pause

GOTO temp_int_menu

:proceed_temp_int_del

DEL /F /Q "%userprofile%\Local Settings\Temporary Internet Files\*"

cls

ECHO.
ECHO.
ECHO Your account's Temporary Internet Files should now be clear of all 
ECHO unnecessary files.

pause

cls
GOTO main_menu

REM-------------------------------------3----------------------------------------

:firewall_menu

TITLE Turn Firewall On/Off
cls

ECHO.
ECHO.
ECHO The following will help you turn your Internet Firewall on or off.
ECHO.
ECHO Do you wish to proceed? (Y/N)

SET /P R=[Y,N]?

IF "%R%" == "Y" GOTO proceed_firewall
IF "%R%" == "y" GOTO proceed_firewall
IF "%R%" == "N" GOTO main_menu
IF "%R%" == "n" GOTO main_menu
IF NOT EXIST "%R%" GOTO correct_input_msg3_1

:correct_input_msg3_1
ECHO Please type the correct letter or number as indicated above
ECHO.
pause

GOTO firewall_menu


:proceed_firewall
cls
ECHO.
ECHO Would you like your Internet Firewall on or off? 
ECHO.
ECHO Press 1 for On
ECHO Press 2 for Off
ECHO Press 3 to return to main menu
ECHO.
ECHO.

SET /P S=[1,2,3]?

IF "%S%" == "1" GOTO firewall_on
IF "%S%" == "2" GOTO firewall_off
IF "%S%" == "3" GOTO main_menu
IF NOT EXIST "%S%" GOTO correct_input_msg
3_2

:correct_input_msg3_2
ECHO Please type the correct letter or number as indicated above
ECHO.
pause


GOTO proceed_firewall


:firewall_on
cls
netsh firewall set opmode enable
ECHO Your computer's firewall is now on.
ECHO.
ECHO.
pause

cls
GOTO main_menu

:firewall_off 
cls
netsh firewall set opmode disable
ECHO Your computer's firewall is now off.
ECHO.
ECHO.
pause

cls 
GOTO main_menu

REM------------------------------------------4------------------------------------

:download_menu

TITLE Download Additional Software
cls

ECHO.
ECHO.
ECHO The below menu lists a few programs that may be very helpful with 
ECHO troubleshooting spyware, malware, and other harmful types of files
ECHO that linger on computers.
ECHO.
ECHO.

ECHO 1. Malwarebyte's Anti-Malware
ECHO 2. CCleaner
ECHO 3. Spybot - Search and Destroy
ECHO 4. Return to Main Menu
ECHO.
ECHO.

SET /P T=[1,2,3,4]

IF "%T%" == "1" GOTO malwarebyte
IF "%T%" == "2" GOTO CCleaner
IF "%T%" == "3" GOTO spybot
IF "%T%" == "4" GOTO main_menu
IF NOT EXIST "%T%" GOTO correct_input_msg4

:correct_input_msg4
ECHO Please type the correct letter or number as indicated above
ECHO.
pause

GOTO download_menu


:malwarebyte
start "C:\Program Files\Internet Explorer\iexplore.exe" "http://download.cnet.com/3001-8022_4-10804572.html?spi=0a45b0eb76988b9075b9682932945566"


cls
GOTO download_menu

:CCleaner
start "C:\Program Files\Internet Explorer\iexplore.exe" "http://download.cnet.com/3001-2086_4-10315544.html?spi=fd1174fc0abeae9cd1410f4c74128d72"


cls
GOTO download_menu

:spybot
start "C:\Program Files\Internet Explorer\iexplore.exe" "http://download.cnet.com/3001-8022_4-10122137.html?spi=37023bf439c1e952d9f21616a8c1fb5d"


cls
GOTO download_menu


REM------------------------------------------5-----------------------------------

:exit_menu

TITLE Exit Program?
cls

ECHO.
ECHO.
ECHO You have chosen to exit the program. Do you wish to proceed? (Y/N)
ECHO.

SET /P U=[Y,N]

IF "%U%" == "Y" GOTO exit_now
IF "%U%" == "y" GOTO exit_now
IF "%U%" == "N" GOTO main_menu
IF "%U%" == "n" GOTO main_menu
IF NOT EXIST "%U%" GOTO correct_input_msg5

:correct_input_msg5
ECHO Please type the correct letter or number as indicated above
ECHO.
pause

GOTO exit_menu


:exit_now
exit
