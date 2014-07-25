#lang racket

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (f (- n 2))
                 (f (- n 3))))))

(define (f1 n)
  (cond ((< n 3) n)
        (else (f-iter 0 1 2 (- n 3)))))

(define (f-iter a b c n)
  (if (= n 0)
      (+ a b c)
      (f-iter b c (+ a b c) (- n 1))))
      