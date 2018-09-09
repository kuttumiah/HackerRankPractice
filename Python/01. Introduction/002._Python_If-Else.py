# Problem: https://www.hackerrank.com/challenges/py-if-else/problem
# Score: 10


N = int(input())

if N % 2 != 0 or N in range(6, 21):
    print('Weird')
else:
    print('Not Weird')
