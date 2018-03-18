// @description Approach(start, end, shift);
///@function Approach
///@param start
///@param end
///@param shift

show_debug_message(string(argument0) + " " + string(argument1) + " " + string(argument2))

if (argument0 < argument1)
	return min (argument0 + argument2, argument1);
else
	return max (argument0 - argument2, argument1);