(define (simpson f a b n)
  (define h 
    (/ (- b a) n))
  (define (y k) 
    (f (+ a (* k h))))
  (define (factor k)
    (cond ((or (= k 0) (= k n))
           1)
          ((odd? k)
           4)
          (else
            2)))
  (define (term k)
    (* (factor k)
       (y k)))
  (define (next k)
    (+ k 1))
  (if (not (even? n))
      (error "n cant be odd")
      (* (/ h 3)
         (sum term 0 next b))))
