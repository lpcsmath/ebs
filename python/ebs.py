"""
>>> ebsmod(61,13,77)
40
>>> ebs(2,16)
65536
>>> ebs(2,29)
536870912
>>> ebs(-2,29)
-536870912
>>> ebs(2,30)
1073741824
>>> ebs(0,0)
1
>>> ebs(2,0)
1
>>> ebs(0,1)
0
>>> ebs(0,1000)
0
>>> ebs(1,1000)
1
"""

def ebs(x,n):
    return ebsaux(lambda x: x,x,n)

def ebsmod(x,n,m):
    return ebsaux(lambda x: x % m,x,n)

def ebsaux(f,x,n):
    (a,b) = (1,x)
    while n > 0:
        if n % 2 == 1:
            a = f(a*b)
        if n > 1:
            b = f(b*b)
        n = n / 2
    return f(a)

if __name__ == "__main__":
    import doctest
    doctest.testmod()
