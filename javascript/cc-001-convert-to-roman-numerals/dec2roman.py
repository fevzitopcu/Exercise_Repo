roman = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
decimal = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

def dec2roman(number):
    romanvalue = ""
    if type(number) == float:
        integer,fractor = str(number).split('.')
        integer = int(integer)
        while len(fractor) > 3:
            fra = list(fractor)
            fra.pop()
            fractor = "".join(fra)
        fractor = int(fractor)
        return dec2roman(integer)+'.'+dec2roman(fractor)
    for i, d in enumerate(decimal):
        while (number >= d):
            number -= d
            romanvalue += roman[i]
    return romanvalue