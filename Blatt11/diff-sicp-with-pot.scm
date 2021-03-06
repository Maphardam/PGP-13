(define (atom? x)
  (or (number? x)
      (string? x)
      (symbol? x)
      (null? x)
      (eq? x #t)))

;;; Section 2.2.4 -- Symbolic differentiation

(define (deriv exp var)
  (cond ((constant? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        ((power? exp)
         (make-product
           (exponent exp)
           (make-power (base exp) 
         			   (make-sum (exponent exp) -1))))))

(define (constant? x) (number? x))

(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2)
  (cond ((and (number? a1) (number? a2)) (+ a1 a2))
        ((number? a1) (if (= a1 0) a2 (list '+ a1 a2)))
        ((number? a2) (if (= a2 0) a1 (list '+ a1 a2)))
        (else (list '+ a1 a2))))

(define (make-product m1 m2)
  (cond ((and (number? m1) (number? m2)) (* m1 m2))
        ((number? m1)
         (cond ((= m1 0) 0)
               ((= m1 1) m2)
               (else (list '* m1 m2))))
        ((number? m2)
         (cond ((= m2 0) 0)
               ((= m2 1) m1)
               (else (list '* m1 m2))))
        (else (list '* m1 m2))))

(define (make-power b e)
  (cond ((and (number? b) (number? e)) (expt b e))
        ((number? e)
         (cond ((= e 0) 1)
         	   ((= e 1) b)
         	   (else (list '^ b e))))
        (else (list '^ b e))))

(define (sum? x)
  (if (not (atom? x)) (eq? (car x) '+) nil))

(define (addend s) (cadr s))

(define (augend s) (caddr s))

(define (product? x)
  (if (not (atom? x)) (eq? (car x) '*) nil))

(define (multiplier p) (cadr p))

(define (multiplicand p) (caddr p))

(define (power? x)
  (if (not (atom? x)) (eq? (car x) '^) nil))
  
(define (base p) (cadr p))

(define (exponent p) (caddr p))
  
> (deriv '(^ x 2) 'x)
;'(* 2 x)
> (deriv '(^ x y) 'x)
;'(* y (^ x (+ y -1)))

> (deriv '(+ (^ x 4) (* x (^ y 3))) 'x)
;'(+ (* 4 (^ x 3)) (+ (* x (* 3 (^ y 2))) (^ y 3)))


