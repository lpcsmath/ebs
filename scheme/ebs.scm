(define (ebsaux f a b n)
     (cond ((= n 0) (f a))
           ((= n 1) (f (* a b)))
           ((= (modulo n 2) 1) (ebsaux f (f (* a b)) (* b b) (quotient n 2)))
           (else (ebsaux f (f a) (* b b) (quotient n 2)))))

(define (ebs x n) (ebsaux (lambda (x) x) 1 x n))

(define (ebsmod x n m) (ebsaux (lambda (x) (modulo x m)) 1 x n))
