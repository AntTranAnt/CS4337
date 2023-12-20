#lang racket
;Anthony Tran
;axt220037
;CS4337-503

;Question 5
;pascal method recursively calls itself and row method to find total sum
(define (rowSum row)
  (cond
    ((zero? row) 0)
    ((= row 1) 1)
    ((> row 0) (*(rowSum (- row 1)) 2))
    )
  )

(define (pascal row)
  (cond
    ((zero? row) 0)
    ((= row 1) (rowSum 1))
    ((> row 0) (+ (rowSum row) (pascal (- row 1))))
    )
  )

;(pascal 5)


;Question 6
(define (sumfunction a_list)
  (cond
    ((null? a_list) 0)
    ((list? (car a_list)) (+ (sumfunction  (car a_list)) (sumfunction (cdr a_list))))
    ((and (even? (car a_list)) (< (car a_list) 8))
                                (+ (car a_list) (sumfunction(cdr a_list))))
    ((and (odd? (car a_list)) (and (> (car a_list) 3))
                               (+ (car a_list) (sumfunction(cdr a_list)))))
    (else (sumfunction (cdr a_list)))
    )
  )

;(sumfunction '(1 (2 () 6) 3 (5) 8))


;Question 7
(define (append list1 list2)
  (cond
    ((null? list1) list2)
    (else (cons (car list1) (append (cdr list1) list2)))
    )
  )

(define (leaves a_list)
  (cond
    ((null? a_list) a_list)
    ((not (list? a_list)) (list a_list))
    (else (append (leaves (cdr a_list)) (leaves (car a_list))))
    )
  )

;(leaves '((1 2) (3 4) ((5 6) (7))))


;Question 8
(define (last-element a_list)
  (cond
    ((null? a_list) a_list)
    ((null? (cdr a_list)) a_list)
    (else (last-element (cdr a_list)))
   )
  )

;(last-element '(a (b c ) (()) (d)))


;Question 9
(define (EXP-DEPTH a_list)
  (cond
    ((null? a_list) 1)
    ((list? (car a_list)) (max (+ (EXP-DEPTH (car a_list)) 1) (EXP-DEPTH (cdr a_list)) ))
    (else (EXP-DEPTH (cdr a_list)))
    )
  )

;(EXP-DEPTH '((()(A B (C) ()) D) E))


;Question 10
(define (newlist a_list)
  (cond
    ((null? a_list) a_list)
    ((not (list? a_list)) (list a_list))
    (else append (newlist (cadr a_list)) (newlist (car a_list)))
    )
  )

;(newlist '(a () (b) (c d) f))
