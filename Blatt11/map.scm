(define (map-pair arg x)
		(if (null? (cdr x)) '() 
							(append (list (arg (car x) (cadr x))) (map-pair arg (cdr x)))))
							

(define (mapAlt f g li)
		(if (null? li) '()
						 (append (list (f (car li))) (mapAlt g f (cdr li)))))
