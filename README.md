# security_now_downloader
===========================================================================

This script downloads audio files and extras for the podcast Security Now.
    ![Example of script running](https://github.com/pmcfarland/security_now_downloader/blob/master/sn_downloader_example.PNG)

From Wikipedia: [https://en.wikipedia.org/wiki/Security_Now]
"Security Now! is a weekly podcast hosted by Steve Gibson and Leo Laporte. It was the second show to premiere on the TWiT Network, launching in summer 2005. The first episode, “As the Worm Turns”, was released on August 19, 2005.[3]

Security Now! consists of a discussion between Gibson and Laporte on issues of computer security and, conversely, insecurity. Covered topics have included security vulnerabilities, firewalls, password security, spyware, rootkits, Wi-Fi, virtual private networks, and virtual machines."

Security Now is hosted on Steve Gibson's website here: [https://www.grc.com/securitynow.htm]

I claim no rights to Security Now, Twit or anything remotely related to them.

This script is merely for those who wish to catch up on the ever growing archive of episodes. There is also something to be said for having your own offline copy of things that are important to you.

Directions:
============================================================================
1) Download the sn_downloader_powershell.ps1 file.

2) Right click on sn_download_powershell.ps1 and select Run with PowerShell.

    ![Run With PowerShell](https://github.com/pmcfarland/security_now_downloader/blob/master/sn_downloader_run_with.PNG)

3) If you get a security warning that the script can not be executed you need to change you Execution Policy. That can be done by using the following command: `set-executionpolicy remotesigned`
    ![Change Execution Policy](https://github.com/pmcfarland/security_now_downloader/blob/master/PS1.png)

4) The script will first check if the directory C:\SN exists. If it doesn't then the script will create it.

5) Then the script fetchs Steve's Security Now website, parses it to extract the current episode number and then and starts downloading from episode 1 - whatver the current episode is. As of this edit it's in the mid 600's so this WILL take some time.

6) Sit back and wait.

NOTE:
=============================================================================
As of my latest test, 08/17/2020 the latest episode is 779. that means there are 779 mp3 files at roughly 60 MB, 779 txt files at roughly 100 kb and 779 pdf files at roughly 160 kb. All total you're looking at approximately 35 GB of storage required.
