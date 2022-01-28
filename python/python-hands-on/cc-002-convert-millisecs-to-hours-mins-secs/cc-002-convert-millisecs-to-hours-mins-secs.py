

# This program converts milliseconds into hours, minutes, and seconds
# (To exit the program, please type "exit")
# Please enter the milliseconds (should be greater than zero) :


def calc_time(time):
    time = int(time)
    seconds=(time/1000)%60
    seconds = int(seconds)
    minutes=(time/(1000*60))%60
    minutes = int(minutes)
    hours=(time/(1000*60*60))%24

    print ("%d:%d:%d" % (hours , minutes, seconds))

while True:

    time = input("Enter miliseconds to convert(Exit to terminate program): ")
    
    if time.lower()== "exit":
        print("the program terminated")
        break
    elif time.isdigit():
        calc_time(time)
        break
    else:
        print("Try again")

    



