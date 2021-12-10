Вариант 10

№10

(defun Del_neg(L)
	(cond((null L)L)
		((and(numberp (car L))(<(car L)0))(append(cond((equal(cdr L)nil)(remove(car L)L))(t(Del_neg(cdr L))))))(t(append(list(car L))(Del_neg(cdr L))))))
		
(trace Del_neg)
(print(Del_neg '(-2 6 s -1 4 f 0)))


№20
 
(defun Num_even(L)
	(cond((null L)0)
	((and(numberp(car L))(equal(rem(car L)2)0))(+ 1 (Num_even(cdr L))))(t(Num_even(cdr L)))))

(trace Num_even)
(print(Num_even '(-2 6 s -1 4 f 0 z x r)))


№30

(defun task3(l)
(cond
((equal (butlast l) nil) l)
(t (cons (task3 (butlast l)) (last l)))
)
)
(trace task3)
(print(task3 '(a b c d e f)))
