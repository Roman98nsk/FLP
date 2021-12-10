№1 10 вариант

(car(cdr(car(cdr(car(cdr(car ' ((1(2(3 *)))))))))))
-----------------------------------------------------
№2 10 вариант

Функция list вернет список из двух аргументов функции:
	(list ' (+ 1 2) ' ()) => ((+ 1 2)nil)
' (+ 1 2) - список
' () - nil, в нашем случае пустой список
-----------------------------------------------------
№3 10 вариант
а)
		(1((2))(3))
		
Ответ:	(cons 1(cons(cons(cons 2 nil)nil)(cons(cons 3 nil)nil)))

б)
	(1((2))(3))
	
Ответ:	(list 1(list(list 2))(list 3))
------------------------------------------------------
№4 10 вариант

(defun zam(L)(list(car l)(cadr l)(last(butlast l))(butlast(butlast(cdddr l)))(caddr l)(last l)))


(defun zam(L)(append((car l)(cadr l)(last(butlast l))(butlast(butlast(cdddr l)))(caddr l)(last l)) nil))

(zam '(a b c d e f g h))
