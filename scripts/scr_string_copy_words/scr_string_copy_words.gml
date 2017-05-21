///scr_string_copy_words(string, index, count);

var str = argument0;    //we pass in a string
var index = argument1;  //we pass in an index (the start of the string)
var count = ceil(argument2);
var char = string_char_at(str, count);  //we get the character at count

while (char != " " && char != "")   //if it's not a space of the end of the string
    {
        count++;    //then we continue to add to count, until we're not in the middle of a word anymore. (just copy whole words)
        char = string_char_at(str, count);
    }

var return_str = string_copy(str, index, count);
return return_str;
