n = int(input())
nn = list(map(int, input().split()))
nn.sort()
higher = nn[n - 1]
for i in range(n):
    if nn[n - i - 1] < higher:
        print(nn[n - i - 1])
        break
