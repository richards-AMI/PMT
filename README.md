# PMT
Performance PMT  with ADP.efi 

 Assumes this .nsh and adp.efi  are in the same directory.  The .csv will be saved to root
 Build BIOS with this token
 PERFORMANCE_MEASUREMENTS_SUPPORT = TRUE

 Ensure BIOS Date/Time are correct

 Utility is downloaded from:
 http://172.16.96.56:2001/_layouts/15/PMT_Upload/MAIN.aspx

 Run RESET 2x
 Then Run RESET -w   2x

 Then install thumbdrive with adp.efi

 Then run:  
  “adp.efi > lb_pmt.log”
  "adp.efi -f lb_pmt.csv > lb_pmt.txt"
