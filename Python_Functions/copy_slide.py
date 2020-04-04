import os
import shutil

def pptx_copy():
    # defining path to directory to be checked
    # could use print(srcpath) after defining variable to list the path
    srcpath = os.path.expanduser("~/Downloads/")

    # defining the path for where to send the copied ppt/pptx files
    # can use print(destpath) used to check path for directory to copy ppt/pptx files
    destpath = os.path.expanduser("~/Desktop/advanced_python_hw/")

    # using a for loop to search the variable for the ppt/pptx files
    for x in os.listdir(srcpath):
        # can use print(x) in order to check if files can be found from variable

        fileType = os.path.join(srcpath, x)
        
        if fileType.__contains__(".ppt" or ".pptx"):
            shutil.copy(fileType, destpath)
            


pptx_copy()
