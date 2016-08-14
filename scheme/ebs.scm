(define (ebsaux f x n)
    (cond ((= n 0) 1)
          ((= n 1) (f x))
          ((= (modulo n 2) 0) (ebsaux f (f (* x x)) (quotient n 2)))
          (else (f (* x (ebsaux f (f (* x x)) (quotient n 2)))))))

(define (ebs x n) (ebsaux (lambda (x) x) x n))

(define (ebsmod x n m) (ebsaux (lambda (x) (modulo x m)) x n))
