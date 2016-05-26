function ebsaux(f,x,n) {
    var a = 1;
    var b = x;
    while (n > 0) {
        if (n % 2 == 1) a = f(a*b);
        if (n > 1) b = f(b*b);
        n = Math.floor(n/2);
    }
    return f(a);
}

function ebs(x,n) {
    return ebsaux(function (x) { return x; },x,n);
}

function ebsmod(x,n,m) {
    return ebsaux(function (x) { return x % m; },x,n);
}
