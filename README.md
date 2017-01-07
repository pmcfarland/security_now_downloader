# security_now_downloader
This script downloads audio files and extras for the podcast Security Now.

From Wikipedia: [https://en.wikipedia.org/wiki/Security_Now]
"Security Now! is a weekly podcast hosted by Steve Gibson and Leo Laporte. It was the second show to premiere on the TWiT Network, launching in summer 2005. The first episode, “As the Worm Turns”, was released on August 19, 2005.[3]

Security Now! consists of a discussion between Gibson and Laporte on issues of computer security and, conversely, insecurity. Covered topics have included security vulnerabilities, firewalls, password security, spyware, rootkits, Wi-Fi, virtual private networks, and virtual machines."

Security Now is hosted on Steve Gibson's website here: [https://www.grc.com/securitynow.htm]

I claim no rights to Security Now, Twit or anything remotely related to them.

This script is merely for those who wish to catch up on the ever growing archive of episodes. There is also something to be said for having your own offline copy of things that are important to you.

Directions:  
1) Download the sn_downloader.bat file  
2) Right click and edit the file in your notepad of choice  
3) Find the latest episode number from Steve's site: [https://www.grc.com/securitynow.htm]  
4) The downloader will start at episode 1 and go to episode 593, the latest as I'm uploading the file  
    -To update this for the future, change this line: for /L %%n IN (1,1,593)  
    -That says start at episode 1, increment by 1 each time and end at episode 593  
5) By default, the files download into a folder called C:\sn, if you wish to change that edit the end of each of the 3 download lines  
    -So c:\sn\sn-%NBR%.mp3 could be C:\some\other\folder\sn-%NBR%.mp3  
    
NOTE: This is downloading a large ammount of data, nearly 600 mp3 files, 600 text files and 600 pdf files. It WILL take a long time.
      I only downloaded the mp3's and txt files and my archive is over 24 GB as of December 2016.
