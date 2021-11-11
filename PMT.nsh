:PMT
:GIT https://github.com/richards-AMI/PMT

@echo -off

# Build BIOS with this token
# PERFORMANCE_MEASUREMENTS_SUPPORT = TRUE
#
# Ensure BIOS Date/Time are correct

# Utility is downloaded from:
# http://172.16.96.56:2001/_layouts/15/PMT_Upload/MAIN.aspx

# Run RESET 2x
# Then Run RESET -w   2x

# Then install thumbdrive with adp.efi

# Then run adp.efi > lb.log
# Commands are:  “adp.efi > lb.log”
# And,  "adp.efi -f lb.csv > lb.txt"
# Assumes this .nsh and adp.efi  are in the same directory.  The .csv will be saved to root

:START
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"

# Note no extension on filename for this part of the script, add .log, .txt and .csv below.
set -v FN AMI_PMT

# If a filename is provided by user
if  x%1 ne x  then
	set -v FN %1
else
	echo Provide a FileName ex.:  %0 LB_PMT  using %FN%
endif

# initialize the 2 log files
	date > %FN%.log
	time >> %FN%.log
	echo "* ************************************ * ************************************ *" >> %FN%.log
	echo " " >> %FN%.Log
	date > %FN%.txt
	time >> %FN%.txt
	echo "* ************************************ * ************************************ *" >> %FN%.txt
	echo " " >> %FN%.txt
	
:SCRIPT
	ADP.efi >> %FN%.log
	ADP.efi -f %FN%.csv >> %FN%.txt
	type %FN%.txt

:DONE	
	echo " "
	echo " "
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	echo "* ************************************ * ************************************ *"
	echo " "
	echo " "
	echo DONE
	echo " "
:END