///Draw the dialog

//Get the last space
if (string_char_at(text[text_page], text_count) == " ")
    {
        last_space = text_count;
    }

//Add smart returns
var text_words = scr_string_copy_words(text[text_page], 1, text_count);
if (string_width(string_hash_to_newline(text_words)) >= width-(margin*2))
    {
        //Remove the space
        text[text_page] = string_delete(text[text_page], last_space, 1);
        
        //Add a return
        text[text_page] = string_insert("#", text[text_page], last_space);
    }
    
//Get the visible text
text_visible = string_copy(text[text_page], 0, text_count); //'string_copy' will copy a portion of our entire text
                                                            //[text_page] is the text we'll be copying from, 0 is the index, until text_count
//this is to calculate the x position where it needs to be drawn
var xx = (x - __view_get( e__VW.XView, 0 )) * display_scale;
var yy = (y - __view_get( e__VW.YView, 0 )) * display_scale;

//Draw the text
draw_text_ext(xx + margin, yy + margin, string_hash_to_newline(text_visible), -1, width-(margin * 2)) //used ext because it automatically breaks text to the next line

//add to the count
text_count += spd; //text_count is how many letter's we're showing to our dialog and we're adding the speed every step to add new letters at the speed we chose

