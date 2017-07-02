;This is basic boolean logic operations interpeted in Lambda Calculus

;True and False interpretation
(define true
  (lambda (x y) x))
(define false
  (lambda (x y) y))
  
  ;Logic operations
  (define not
  (lambda (b)
    (b false true)))
    
(define and
  (lambda (x y)
    (x y x)))
    
(define or
  (lambda (x y)
    (x x y)))
    
(define equivalence
  (lambda (x y)
    (x y (not y))))
    
(define xor
  (lambda (x y)
    (x (not y) y)))
   
(define implication
  (lambda (x y)
   (x y true)))
   
 ;Example (Dr.Racket, sicp packet):
 ;>(xor (implication (equivalence (or true (and false true)) false) (not false)) (and (not (or (or true true) (xor false true))) true))
 ;>#<procedure:true>
    
 
