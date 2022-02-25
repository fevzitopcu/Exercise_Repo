
from cgitb import reset


message = """
    Welcome to the phonebook application
    
    1. Find phone number
    2. Insert a phone number
    3. Delete a person from the phonebook
    4. Terminate

    Select operation on Phonebook App (1/2/3) :
    """


book = []


def phoneBook(selection):
    
    return True


def insertNumber(selection):

    return True


def deletePerson(selection):

    return True


while True:
    selection = input(message)
    if selection == '1':
        phoneBook(selection)
    elif selection == '2':
        insertNumber(selection)
    elif selection == '3':
        deletePerson(selection)
    elif selection == '4':
        print('Good By, closing the book...')
        break
