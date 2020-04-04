# this command is used to create the AllRecords subdirectory
mkdir AllRecords

#this set of commands goes into the 2012 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2012 -type f -iname *.csv* -exec cp {} AllRecords \;
#this set of commands goes into the 2013 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2013 -type f -iname *.csv* -exec cp {} AllRecords \;
#this set of commands goes into the 2014 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2014 -type f -iname *.csv* -exec cp {} AllRecords \;
#this set of commands goes into the 2015 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2015 -type f -iname *.csv* -exec cp {} AllRecords \;
#this set of commands goes into the 2016 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2016 -type f -iname *.csv* -exec cp {} AllRecords \;
#this set of commands goes into the 2017 subdirectory and copies all .csv files into the AllRecords subdirectory
find 2017 -type f -iname *.csv* -exec cp {} AllRecords \;

#this command combines all the of the .csv files into one .txt file in order to search for the required info easier
cat AllRecords/order_records.csv.a* > AllRecords/allrecords.txt

#these two commands go into the AllRecords subdirectory and then creates another subdirectory entitled VIPCustomerorders
cd AllRecords
mkdir VIPCustomerOrders

#this command is used to search for the name Michael Davis and display the file and line the information appears
awk 'BEGIN {FS = ","}; {if($1 == "Michael" && $2 == "Davis") print NR, $0;}' allrecords.txt
#this command is used to search for the name Michael Campbell and display the file and line the information appears
awk 'BEGIN {FS = ","}; {if($1 == "Michael" && $2 == "Campbell") print NR, $0;}' allrecords.txt

#this command takes the information displayed in the previous search for Michael Davis and puts it in on a file entitled michael_davis_orders.output within the VIPCustomer Orders subdirectory
awk 'BEGIN {FS = ","}; {if($1 == "Michael" && $2 == "Davis") print NR, $0;}' allrecords.txt > VIPCustomerOrders/michael_davis_orders.output
#this command takes the information displayed in the previous search for Michael Campbell and puts it in on a file entitled michael_campbell_orders.output within the VIPCustomer Orders subdirectory
awk 'BEGIN {FS = ","}; {if($1 == "Michael" && $2 == "Campbell") print NR, $0;}' allrecords.txt > VIPCustomerOrders/michael_campbell_orders.output

#this set of commands goes into the VIPCustomerOrders subdirectory and creates the VIPCustomerDetails.md
cd VIPCustomerOrders
touch VIPCustomerDetails.md

#this command is used to find the name campbell within the michael_campbell_orders.output file, count the lines it appears and put that information on the VIPCustomerDetails.md file
echo Michael_Campbell > VIPCustomerDetails.md
grep -i campbell michael_campbell_orders.output | wc -l >> VIPCustomerDetails.md
#this command is used to find the name davis within the michael_davis_orders.output file, count the lines it appears and put that information on the VIPCustomerDetails.md file
echo Michael_Davis >> VIPCustomerDetails.md
grep -i davis michael_davis_orders.output | wc -l >> VIPCustomerDetails.md

