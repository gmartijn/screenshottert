@echo off
REM Chrome snapshotter
REM Making life easier when doing recon
REM working assumption is that Chrome is installed and available in the %path% and the a list of domains is available in the domains.txt file.. NO CSV NO TSV, getting a list of domains is easy sublister or AmasS

set month=%date:~3%

if "%1"=="" goto novar
echo ____________________________________________________________________________________________________________________________
echo SCREENSHOTTERT, making screenshots easy since 2021 (c) GM
echo ____________________________________________________________________________________________________________________________
echo ____________________________________________________________________________________________________________________________
                                                            
echo "                                               `.-::/+++h.    "                                     
echo "                                         .:/oyhddmmmmmmmmo    "                                     
echo "                                      -ohdmmmmmmmmmddmmmmd.   "                                     
echo "                                    :hmmmmhmmmmhoy:`+ymmmmy   "                                     
echo "                                   +dydy+.ohs+.` .   /dydmms` "                                    
echo "                                  `+//.`  .`  ./yy`  `.``dmh+ "                                     
echo "                                  ````..:/osso/.      -dms`   "                                   
echo "                                   `+++yms:.``        odmmm.  "                                    
echo "                                       `hm.          `-hmmmms "                                     
echo "                                       /dho++-    ./ydmmmmmmm:"                                     
echo "                                       .:::::`   /dmmmmmmddmmd-"                                    
echo "                                   .+yddddddy+./mmmmmmmh-.-:/- "                                   
echo "                                   .dmmmmmmmmmmddmmmmmms`     "                                     
echo "                                   /mmmmmmmmmmmmmmmdsh:      "                                      
echo "                                   `dmmmmmmmmmmmmmh-``      "                                       
echo "                                    /mmmmmmmmdhmms.        "                                        
echo "                                     sdydmmmm/`s/          "                                        
echo "                                     `- .:+yo     "
echo 			   CAVEMEN Pandemic Edition 2021                                                        
echo ____________________________________________________________________________________________________________________________
echo ____________________________________________________________________________________________________________________________


echo Current working dir is %CD% and input file is %1
echo ____________________________________________________________________________________________________________________________
echo ____________________________________________________________________________________________________________________________
echo Determine path of chrome
if exist "C:\Program Files (x86)\Google\Application\chrome.exe" (
	set c="C:\Program Files (x86)\Google\Application\chrome.exe" ) 
	(
	goto nexto )
:nexto

if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
	set c="C:\Program Files\Google\Chrome\Application\chrome.exe")
	 (
	goto main)
:main
echo ____________________________________________________________________________________________________________________________
echo chrome path is %c%
echo ____________________________________________________________________________________________________________________________
echo starting at %time% %date%
echo ____________________________________________________________________________________________________________________________
echo Creating HTTPS screenshots
echo ____________________________________________________________________________________________________________________________
FOR /F %%A in (%1) do ( 
set tiempo=%time:~,5%
%c% --headless --screenshot="%CD%\HTTPS-%%A-%month%.png" "https://%%A" 
echo CREATING screenshot %CD%\HTTPS-%%A-%month%.png
echo CREATING screenshot %CD%\HTTPS-%%A.png on %date% %tiempo% >> %1-screenshottert.log)
echo ____________________________________________________________________________________________________________________________
echo Creating HTTP screenshots
echo ____________________________________________________________________________________________________________________________
FOR /F %%A in (%1) do ( 
set tiempo=%time:~,5%
%c% --headless --screenshot="%CD%\HTTP-%%A-%month%.png" "http://%%A" 
echo CREATING screenshot %CD%\HTTPS-%%A-%month%.png
echo CREATING screenshot %CD%\HTTP-%%A.png on %date% %tiempo% >> %1-screenshottert.log )


goto end

:novar

echo I use MUCHAS a lot for my spanish co-workers.. It means a lot to them...

echo No command variable, please use as screenshottert FILENAME.TXT
echo (c) GM 2021
goto :eof
:end 
echo ____________________________________________________________________________________________________________________________
echo done at %time% %date%




