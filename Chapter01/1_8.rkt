#lang racket

(define (cbrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cbrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (/ (+ (/ x
           (* guess guess))
        (* 2 guess))
     3))


(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) old-guess)) 0.001))

(define (cbrt x)
  (cbrt-iter (improve 1.0 x) 1.0 x))