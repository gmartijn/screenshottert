@echo off
REM Chrome snapshotter
REM Making life easier when doing recon
REM working assumption is that Chrome is installed and available in the %path% and the a list of domains is available in the domains.txt file.. NO CSV NO TSV, getting a list of domains is easy sublister or Amass
@echo off


if "%1"=="" goto usage
echo SCREENSHOTTERT, making screenshots easy since 2021 (c) GM
echo Current working dir is %CD% and input file is %1
echo Creating HTTPS screenshots
FOR /F %%A in (%1) do "C:\Program Files\Google\Chrome\Application\chrome.exe" --headless --screenshot="%CD%\HTTPS-%%A.png" "https://%%A" & echo CREATING screenshot %CD%\HTTPS-%%A.png
echo Creating HTTP screenshots
FOR /F %%A in (%1) do "C:\Program Files\Google\Chrome\Application\chrome.exe" --headless --screenshot="%CD%\HTTP-%%A.png" "http://%%A" & echo CREATING screenshot %CD%\HTTP-%%A.png
goto :end
:usage
echo YOU DUMMY! YOU DUMMY! YOU DUMMY!
echo No command variable, please use as screenshottert FILENAME.TXT
echo (c) GM 2021
goto :eof
:end 
echo done




