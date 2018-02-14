grammar Test6;

peak : '<' top '>';

top : '"books"' '->' array;

array : '[' (book','|book)+ ']';

book : '<' (keyvalue','|keyvalue)+ '>';

keyvalue : ATTRIBUTE '->' value;

ATTRIBUTE : '"'[a-z]+'"';

value : STRING|NUMBER;

STRING : '"'.*?'"';

NUMBER : [0-9]+;

WS : [ \t\r\n]+ -> skip;

