#lang racket

(require racket/block)

(define (k a b)
  (cond ((= b 1) 1)
        ((= b a) 1)
        (else (+ (k (- a 1) (- b 1))
                 (k (- a 1) b)))))

(define (print-tree n)
  (print-tree-iter 1 n))

(define (print-tree-iter x n)
  (if (= x n)
      (print-tree-line x)
      (block 
       (print-tree-line x)
       (newline)
       (print-tree-iter (+ x 1) n))))

(define (print-tree-line n)
  (print-tree-line-iter 1 n))

(define (print-tree-line-iter x n)
  (if (= x n)
      (block
       (display " ")
       (display (k n x)))
      (block
       (display " ")
       (display (k n x))
       (print-tree-line-iter (+ x 1) n))))

;;(print-tree 6)