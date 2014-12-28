#lang racket

(require "inbook.rkt")

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (fast-multiply2-iter a b s)
  ;; inveriant: a*b + s
  (cond ((= b 1) (+ s a))
        ((even? b) (fast-multiply2-iter (double a) (halve b) s))
        (else (fast-multiply2-iter a (- b 1) (+ s a)))))
  
                  

(define (fast-multiply2 a b)
  (fast-multiply2-iter a b 0))