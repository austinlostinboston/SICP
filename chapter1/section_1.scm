#; Question 1: Work through scheme expressions and determine answers
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
  b
  a)
(cond ((= a 4) 6)
  ((= b 4) (+ 6 7 a))
  (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
      (+ a 1))

#; Question 2: Translate expression into prefix form
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

#; Question 3: Define a procedure that takes three number arguments and returns the sum of squares of the two larger numbers
(define (top2 x y z)
    (cond
      ((and (< x y) (< x z)) (define t1 y) (define t2 z))
      ((and (< y x) (< y z)) (define t1 x) (define t2 z))
      ((and (< z x) (< z y)) (define t1 x) (define t2 y)))
    (+ (* t1 t1) (* t2 t2)))

#; Question 4: Show that model of evaluation allows for combinations whose operators are compound expressions
(define (a-plus-abs-b a b)
  (if (> b 0) + -) a b)

#; Question 5: The differences between Normal and Applicative Order
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
