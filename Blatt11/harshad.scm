(define (harshad? x)
		(= (modulo x (digitSum x)) 0))
		
(define (digitSum x)
		(if (= x 0) 0
					(+ (modulo x 10)
					   (digitSum (quotient x 10)))))
					   
(define (getharshad mi ma)
		(if (= mi (+ ma 1)) '()
					  (if (harshad? mi) (append (list mi) (getharshad (+ mi 1) ma)) (getharshad (+ mi 1) ma))))
