#lang racket

(define (big_2_plus a b c)
  (cond ((> a b) (cond ((> b c) (+ a b))
                       ((< b c) (+ a c))
                       (else (+ a b))))
        ((< a b) (cond ((> a c) (+ a b))
                       ((< a c) (+ b c))
                       (else (+ b c))))
        (else (cond ((> a c) (+ a b))
                    (else (+ a c))))))

(define (test-1)
  (displayln (big_2_plus 1 2 3))
  (displayln (big_2_plus 3 2 3))
  (displayln (big_2_plus 4 2 3))
  (displayln (big_2_plus 5 5 3))
  (displayln (big_2_plus 1 2 2))
  (displayln (big_2_plus 3 4 3)))