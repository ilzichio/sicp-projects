;=== A small game where you rool n-dices (you will choose how many dices the programm should rool)
;=== You should predict condition of your guess 
;=== i.e write your guess and predicate 
;=== for example, if I think that after rolling 5 dices my guess would be bigger than total amount of 5 dices, and it would be true,
;=== Programm would write "You win!"
;=== List of predicates:
(define >t >) ;= i.e my guess'd be bigger than total 
(define <t <) ;= i.e my guess'd be less than total
(define =t =) ;= i.e my guess'd be equal to total
;=== each dice rolls randomly 
(define (roll guess condition n-dices) ;== guess - your guess; condition - relation of your guess to your total;
;== n-dices - how much dices must be rollen
  (define (dice) ;== this procedure roll abstraction of the dice
    (+ (random 6)))
  (define (roll-n-dices n)   ;== find out the total of n-dieces
  (define (iter total n) 
    (if (= n 0)
        total
        (iter (+ total (dice))
              (- n 1))))
  (iter 0 n))
  (let ((sum (roll-n-dices n-dices))) ;== sum is the total
    (display "Total from ")
    (display n-dices)
    (display " dices: ")
    (display sum)
    (newline)
    (display "Your guess was: ")
    (display amount) 
    (newline)
    (if (condition amount sum) ;== realation of your guess to current total
        (display "You won!")
        (display "You lost! "))))
