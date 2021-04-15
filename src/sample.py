n = (input())
def decide(n):
    if int(n) == 0:
        return 'Yes'
    else :
        while (n[-1] == '0'):
            n = n[:-1]

    for i in range(len(n)//2):
        if n[i] != n[-(i+1)]:
            return 'No'
    return 'Yes'

print(decide(n))
