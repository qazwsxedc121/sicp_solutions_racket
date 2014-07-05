#lang racket

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average a b)
  (/ (+ a b) 2))

(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) old-guess)) 0.001))

(define (sqrt x)
  (sqrt-iter (improve 1.0 x) 1.0 x))