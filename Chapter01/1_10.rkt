#lang racket
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;;(f n) =>  2*n
;;(g n) =>  2^n
;;(h n) =>  2^2^2... (n's 2)
;;(A 2 n) = (A 1 (A 2 (- y 1)) = (A 1 (A 1 (- y 2))) = 2^2^2^2...