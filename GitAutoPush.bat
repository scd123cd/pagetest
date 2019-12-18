:loop
	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\pookie\Desktop\Writings
	::cd C:\Users\jhpark\Documents\GitHub\Docker
	cd C:\@Program\@git_test\pagetest
		
	::Initialize GitHub
	git init
	
	::Pull any external changes (maybe you deleted a file from your repo?)
	git pull
	
	:: dir making
	rmdir /S /Q C:\@Program\@git_test\pagetest\temp\
	mkdir C:\@Program\@git_test\pagetest\temp\
	::mkdir C:\@Program\@git_test\pagetest\temp\temp%random%
	echo %random% >> C:\@Program\@git_test\pagetest\temp\%random%.txt

	::Add all files in the directory
	git add --all
	
	::Commit all changes with the message "auto push". 
	::Change as needed.
	git commit -m "auto commit %random%"
	
	::Push all changes to GitHub 
	git push
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 3600 seconds until going to the start of the loop.
	::Change as needed. 2
	TIMEOUT 360
	
::Restart from the top.	
goto loop