№2

(defun task1 (L M)
  (cond ((null L) t)
        ((member (car L) M) (task1 (cdr L) M))
        (t nil)))

(print(task1 '(1 2 c) '(6 c 3 2 5 1)))


№4

(defun task2 (L M)
    (cond ((null L)nil)
        ((member (car L)M) (cons(car L) (task2(cdr L)M)))
        ((task2 (cdr L)M))))
          
(print(task2 '(1 s 3 f g) '(s 4 5 g 3)))


№10

(defun task3 (func lst) 
    (cond ((null lst) nil)
          ((funcall func (car lst)) (cons '* (task3 func (cdr lst))))
          (t (cons (car lst) (task3 func (cdr lst))))))

(print(task3 'evenp '(1 2 3 4 5 6)))

(print(task3 'oddp '(1 2 3 4 5 6)))

(print(task3 (lambda (x) (< x 0)) '(-1 2 3 -6 -7)))
