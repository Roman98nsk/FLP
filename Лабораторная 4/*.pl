parent("jhon","bob").
parent("marry","bob").
parent("marry","ann").
parent("bob","liz").
parent("bob","paul").
parent("bob","sam").
parent("paul","put").

man("jhon").
man("bob").
man("paul").
man("sam").
man("put").

woman("ann").
woman("marry").
woman("liz").

father(X,Y):-parent(X,Y), man(X).

mother(X,Y):-parent(X,Y), woman(X).

brother(X,Y):-parent(Z,Y), parent(Z,X), man(X), X\=Y.

sister(X,Y):-parent(Z,X), parent(Z,Y), woman(X), X\=Y.

grandchild(X,Y):-parent(Z,Y), parent(X,Z).

%тетя
aunt(X,Y):-parent(Z,Y), sister(X,Z).

%имеет двух детей
twochild(X):-parent(X, Z), parent(X,Y), parent(X, Z), parent(X,Y), Z \= Y.

%продолжатель рода(мужчина с сыном без дочери)
manwithson(X,Y):-parent(X,Y),man(Y).

%a
?-father(X,"sam"),write("(а)"),write(X),write("\n").

%б
?-mother(_,"bob"),write("(б)"),write("\n").

%в
?-sister(X,"sam"),write("(в)"),write(X),write("\n").

%г
?-sister(_,"liz"),write("(г)"),write("\n").

%д
?-brother(X,"bob"),write("(д)"),write(X),write("\n").

%е
?-grandchild("marry",X),write("(е)"),write(X),write(",\n").

%ж
?-grandchild(X,"paul"),write("(ж)"),write(X),write("\n").

%з
?-aunt(X,"sam"),write("(з)"),write(X),write("\n").

%и
?-aunt("ann",_),write("(и)"),write("\n").

%к
?-twochild(X),write("(к)"),write(X),write("\n").

%л
?-manwithson("bob",_),write("(л)"),write("\n").
