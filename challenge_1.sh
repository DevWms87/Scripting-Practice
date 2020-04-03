# this command is to create the JPG PNG TIFF subdirectory in the pictures directory
mkdir JPG PNG TIFF

# this command is to find the .jpg files in the MISC subdirectory and copy them to the JPG subdirectory
find Misc -type f -iname *.jpg* -exec cp {} JPG \;
# this command is to find the .jpg files in the Vacations subdirectory and copy them to the JPG subdirectory
find Vacations -type f -iname *.jpg* -exec cp {} JPG \;
 
# this command is to find the .png files in the MISC subdirectory and copy them to the PNG subdirectory
find Misc -type f -iname *.png* -exec cp {} PNG \;
# this command is to find the .png files in the Vactaions subdirectory and copy them to the PNG subdirectory
find Vacations -type f -iname *.png* -exec cp {} PNG \;

# this command is to find the .tiff files in the MISC subdirectory and copy them to the TIFF subdirectory
find Misc -type f -iname *.tiff* -exec cp {} TIFF \;
#this command is to find the .tiff files in the Vacations subdirectory and copy them to the TIFF subdirectory
find Vacations -type f -iname *.tiff* -exec cp {} TIFF \;

# this command creates the PictureCounts.md file
touch PictureCounts.md

# this command finds the JPG subdirectory, counts the files within, and puts the count into the PictureCounts.md file
echo JPG >  PictureCounts.md
find JPG -type f -iname *.jpg | wc -l >> PictureCounts.md
# this command finds the PNG subdirectory, counts the files within, and puts the count into the PictureCounts.md file
echo PNG >> PictureCounts.md
find PNG -type f -iname *.png | wc -l >> PictureCounts.md
# this command finds the TIFF subdirectory, counts the files within, and puts the count into the PictureCounts.md file
echo TIFF >> PictureCounts.md
find TIFF -type f -iname *.tiff | wc -l >> PictureCounts.md
