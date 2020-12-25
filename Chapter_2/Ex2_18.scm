(define (reverse lst)
  (iter lst '()))

(define (iter remained-lst result)
  (if (null? remained-lst)
      result
      (iter (cdr remained-lst)
            (cons (car remained-lst) result))))
