
# This is setting the loggedin variable to false for the entire python file.
loggedin = False


# Build your login functions below
# I moved the adminList into this function.
# This function is used to gather the username and password from the user and store it in the list of dictionaries entitled userInfo.


def getCreds():
    adminList = [
        {
            "username": "DaBigBoss",
            "password": "DaBest"
        },
        {
            "username": "root",
            "password": "toor"
        }
    ]
    user_name = input("Please enter your username.")
    userPass = input("Please enter your password.")
    userInfo = {"username": user_name, "password": userPass}
    print(userInfo)
    return checkLogin(userInfo, adminList)

# This is the function to check the userInfo against adminList to see if the information entered is valid or not.
def checkLogin(userInfo, adminList):
    global loggedin
    for i in adminList:
        if i["username"] == userInfo["username"] and i["password"] == userInfo["password"]:
            loggedin = True

# This loop runs the get creds function. If that function is false it will ask for input until the user enters the adminList information.
# If the log in attempt proves true the function allows the user to login and shows the message "you are logged in".
while loggedin == False:
    getCreds()
    if loggedin == True:
        print("You are logged in!")
        print("-----------")
        break
    else:
        print("Please enter your username and password again.")
        print("----------")
