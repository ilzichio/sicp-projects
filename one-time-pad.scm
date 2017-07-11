; ONE-TIME PAD ENCRYPTION/DECRYPTION
(define (xor A B)
  (if (= A B)
      1 0))
(define (encrypt/decrypt orig/enc-mes key)
  (let ((take-bit car)
        (rest-of cdr))
  (if (null? orig/enc-mes)
      nil
      (cons (xor (take-bit orig/enc-mes)
                 (take-bit key))
            (encrypt/decrypt (rest-of orig/enc-mes)
                     (rest-of key))))))
(define (generate-key length)
  (define (iter res count)
    (let ((0-or-1 (random 2)))
    (if (> count length)
         res
       (iter (append res
              (list 0-or-1))
             (+ count 1)))))
  (iter (list) 1))
  
  ## Example of use (Dr.Racket shell) : 
  
> (define key-for-mes1 (generate-key 6))
> (define mes1 (list 1 1 0 0 1 1))
> (define pad-for-mes1 (encrypt/decrypt mes1 key-for-mes1))
> (display (encrypt/decrypt pad-for-mes1 key-for-mes1))
> (1 1 0 0 1 1)
  
