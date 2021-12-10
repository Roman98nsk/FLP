del_space:-see('in.txt'),seeing(F),read_stream_to_codes(F,List),seen,
string_to_list(Str,List),string_chars(Str, Arr),delete(Arr,' ',Arr1),
char_code(Simbol,10),
delete(Arr1,Simbol,Arr2),
string_chars(Str1,Arr2),string_length(Str1,Len),
tell('out.txt'),foo(Str1,0,20,Len),told.

foo(Str,Offset,Len,Left):-Left<Len,sub_string(Str,Offset,Left,_,Line),writeln(Line),!.
foo(Str,Offset,Len,_):-sub_string(Str,Offset,Len,Left,Line),writeln(Line),NewOffset is Offset+Len,foo(Str,NewOffset,Len,Left). 