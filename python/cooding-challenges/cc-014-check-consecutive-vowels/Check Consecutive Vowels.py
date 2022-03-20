
word = "taoum"

vovels = "aeiou"
a = 0


for i in range(len(word)-1):
    if word[i] in vovels and word[i+1] in vovels:
        a += 1
        
if a > 0:
    print("positive")
else:
    print("negative")
