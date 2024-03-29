# @ Author: pmcfarland
# @ Date: 09.21.2021

# This script downloads the podcast Security Now as well as text transcript and pdf show notes
# Security Now is hosted here: https://www.grc.com/securitynow.htm
# ========================
# The files download into a folder called C:\sn, if you wish to change that edit the end of each of the 3 download lines
# So c:\SN\sn-$NBR.mp3 could be C:\some\other\folder\sn-$NBR.mp3

#Checks if download folder exists, if not creates it
if(!(Test-Path -Path C:\SN )){
    New-Item -ItemType directory -Path C:\SN
}


# This part downloads a text copy of the securitynow website so it can extract the latest episode number
$fromfile = "https://www.grc.com/securitynow.htm"
$tofile = "C:\SN\securitynow.txt"
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($fromfile, $tofile)
# Now it searches the file for the most recent episode number
$x = Select-String -Path $tofile -Pattern "<!-- ################################################################################ -->" -Context 0,7 | % {$_.Context.PostContext}
$y= $x -match '\"'
$z= $y.substring(9,3)
$latest= $z.split()[-1]

# Since this script looks for an exact match of the comment line in the html then shifts down a few lines to find the first episode 
# number, if the html is changed then the offset (Context 0,7) will need to be changed as well.

# Here is a simple debug checkpoint to output $x and then $latest to double check what the script is seeing.
# echo $x
# echo $latest

Import-Module BitsTransfer;

#This is the main download loop
For ($i=1; $i -le $latest; $i++){

	$NBR = $i.ToString("D3")
	$mediaurl = "http://media.grc.com/sn/sn-"+$NBR+".mp3"
	$texturl = "https://www.grc.com/sn/sn-"+$NBR+".txt"
	$notesurl = "https://www.grc.com/sn/sn-"+$NBR+".pdf"
	    
	echo *****************************************************
	echo "Downloading Secuity Now Episode $NBR Audio"
	Start-BitsTransfer $mediaurl C:\SN\sn-$NBR.mp3
		
	echo "Downloading Secuity Now Episode $NBR Transcript"
	Start-BitsTransfer $texturl C:\SN\sn-$NBR.txt
		
	echo "Downloading Secuity Now Episode $NBR Shownotes"
	Start-BitsTransfer $notesurl C:\SN\sn-$NBR.pdf
}
