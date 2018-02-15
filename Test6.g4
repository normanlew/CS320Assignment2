grammar Test6;

datamodel : value;

value : object | array | STRING | NUMBER;

object : '<' (keyvalue','|keyvalue)+ '>';

keyvalue : ATTRIBUTE '->' value;

array : '[' (value','|value)+ ']';

ATTRIBUTE : '"'[a-z]+'"';

STRING : '"'.*?'"';

NUMBER : [0-9]+;

WS : [ \t\r\n]+ -> skip;

