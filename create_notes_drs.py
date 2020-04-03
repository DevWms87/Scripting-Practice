#importing os module
import os

def main():
    #creating variables for future use
    root = "CyberSecurity-Notes"    
    weeks = "Week "
    days = "Day "
    path = os.path.join("Desktop")
    

    # Creating the CyberSecurity-Notes directory
    os.mkdir(path + "/" + "CyberSecurity-Notes/")

    # using a nested for loop to create the Weeks subdirectory, then the Days subdirectory within the Weeks 
    for x in range(1, 25):
        os.mkdir(path + "/" + root + "/" + (weeks + str(x))) 
        
        for i in range(1, 4):
            
            os.mkdir(path + "/" + root + "/" + weeks + str(x) + "/" + days + str(i))
        

main()

