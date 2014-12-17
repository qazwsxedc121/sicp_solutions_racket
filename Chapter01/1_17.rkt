#lang racket

(require "inbook.rkt")

(define (multiply a b)
  (if (= b 0)
      0
      (+ a (multiply a (- b 1)))))

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (fast-multiply a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (fast-multiply (double a) (halve b)))
        (else (+ a (fast-multiply a (- b 1))))))
  