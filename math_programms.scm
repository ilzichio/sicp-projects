## Printing pascal triangle up to some n-th row (I literaly compute every item, I understand how dump it is):
(define (triangle-item row order)
  (if (or (= order 1) (= order row))
      1
      (+ (triangle-item (- row 1) order)
         (triangle-item (- row 1) (- order 1)))))
(define (triangle-row row)
  (define (iter res count)
    (if (> count row)
        res
        (iter (append res
                    (list (triangle-item row count)))
              (+ count 1))))
  (iter (list) 1))
(define (print-pascal-triangle depth)
  (define (iter count)
    (newline)
    (display (triangle-row count))
    (if (= count depth)
        (newline)
        (iter (+ count 1))))
  (iter 1))
  
 
