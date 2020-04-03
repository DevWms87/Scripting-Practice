import os
import shutil

def stu_activities():
    #defining the path for the funciton to search
    path = os.path.expanduser("~/Downloads/")
    
    #defining the path for later use in copying the file(s)
    dest = os.path.expanduser("~/Desktop/advanced_python_hw")
    
    #creating the loop to search for "README" in filenames
    for x in os.listdir(path):
        fileName = os.path.join(path, x)
        if fileName.__contains__("README"):
            #copying the found files to the destination
            shutil.copy(fileName, dest)

stu_activities()

