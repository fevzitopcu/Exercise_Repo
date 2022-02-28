
def print_menu():
    message = """
    Welcome to the phonebook application
    
    1. Find phone number
    2. Insert a phone number
    3. Delete a person from the phonebook
    4. Terminate
    """
    return print(message)


phoneBook = {}
print_menu()


def find(phoneBook):
    print("Find the phone number of : ")
    name = input("")
    if name in phoneBook:
        print("The number is", phoneBook[name])
    else:
        print(f"{name}'s phone number couldn't find")

def add(phoneBook):
    print("Insert Name of the person")
    name = input("Name: ")
    print(f"Insert phone number of {name}")
    phone = input("Number: ")
    phoneBook[name] = phone
    print(f"Phone number of {name} is inserted into the phonebook")


def delete(phoneBook):
    print("Whom to delete from phonebook :")
    name = input("")
    if name in phoneBook:
        del phoneBook[name]
        print(f"{name} is deleted from the phonebook")
    else:
        print(f"{name}'s phone number couldn't find")

while True:
    selection = (input("Select operation on Phonebook(1-4): "))

    if selection == "1":
        find(phoneBook)
    elif selection == "2":
        add(phoneBook)
    elif selection == "3":
        delete(phoneBook)
    elif selection == "4":
        print("Exiting Phonebook")
        break
