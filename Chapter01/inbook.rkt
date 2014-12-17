#lang racket

;;func abs

(define (abs x)
  (if (< x 0)
      (- x)
      x))

;;func sqrt

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;func even?

(define (even? n)
  (= (remainder n 2) 0))

;;func fast-expt

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

;;export part
(provide abs)
(provide sqrt)
(provide square)
(provide cube)
(provide even?)
