(define (mean x)
		(make-arith x 0 0))
				  
(define (make-arith x s n)
		(if (null? x) (if (eq? n 0) '() (/ s n))
					  (make-arith (cdr x) 
					  			  (make-sum s (car x))
					  			  (if (number? (car x)) (+ n 1) n))))
				  
(define (make-sum x y)
		(if (number? y) (+ x y) x))

