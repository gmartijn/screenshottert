# Screenshottert
Easy tool created in Windows batch to create quick screenshots using chrome and a list of domain names, to store when doing reconnaisance on a company/domain name.

Prerequisites: Chrome installed on your computer, as administrator, user-only versions (e.g. installed in the profile of a user) will not be supported.

How to use:

get the list of domainnames of websites in a txt file, do not add http or https in front of them, otherwise the tool will fail.
Best way to do this is either use Amass (https://github.com/OWASP/Amass) or Sublist3r (https://github.com/aboul3la/Sublist3r) to get a list of potential domain names.

save to a txt file, having each line with one domain: 

**EXAMPLE Contents of google.txt:**

google.com<BR>
mail.google.com

**LOGGING:**

For auditing purposes it will log the date and time of screenshotting in a log file, the logfile name is created is named after the filename you use it.
In this example it will be google.txt-screenshottert.log


**EXAMPLE OUTPUT:**

C:\screenshottert>screenshottert google.txt
____________________________________________________________________________________________________________________________
SCREENSHOTTERT, making screenshots easy since 2021 (c) GM
____________________________________________________________________________________________________________________________
____________________________________________________________________________________________________________________________
                           CAVEMEN Pandemic Edition 2021
____________________________________________________________________________________________________________________________
____________________________________________________________________________________________________________________________
Current working dir is D:\Gideon\tools\screenshottert and input file is google.txt
____________________________________________________________________________________________________________________________
____________________________________________________________________________________________________________________________
Determine path of chrome
____________________________________________________________________________________________________________________________
chrome path is "C:\Program Files\Google\Chrome\Application\chrome.exe"
____________________________________________________________________________________________________________________________
starting at 20:01:05,03 wo 07-07-2021
____________________________________________________________________________________________________________________________
Creating HTTPS screenshots
____________________________________________________________________________________________________________________________
CREATING screenshot D:\Gideon\tools\screenshottert\HTTPS-google.com-07-07-2021.png
CREATING screenshot D:\Gideon\tools\screenshottert\HTTPS-mail.google.com-07-07-2021.png
____________________________________________________________________________________________________________________________
Creating HTTP screenshots
____________________________________________________________________________________________________________________________
CREATING screenshot D:\Gideon\tools\screenshottert\HTTPS-google.com-07-07-2021.png
CREATING screenshot D:\Gideon\tools\screenshottert\HTTPS-mail.google.com-07-07-2021.png
____________________________________________________________________________________________________________________________

Example logfile; 

CREATING screenshot C:\screenshottert\HTTPS-google.com.png on wo 07-07-2021 20:01 
CREATING screenshot C:\screenshottert\HTTPS-mail.google.com.png on wo 07-07-2021 20:01 
CREATING screenshot C:screenshottert\HTTP-google.com.png on wo 07-07-2021 20:01  
CREATING screenshot C:\screenshottert\HTTP-mail.google.com.png on wo 07-07-2021 20:01  

