/// ease_linear(time, start, change, duration)

var t = argument[0]; // time
var b = argument[1]; // begin
var c = argument[2]; // change
var d = argument[3]; // duration

t /= d;

return c*t+b;
