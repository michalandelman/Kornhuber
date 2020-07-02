function spaceNextImage(texture1, texture2, window_pointer)
%% Recieve "space" presses to get to next photo
% Wait for keyboard, using char-oriented functions 

to_wait_for_key = true;
KbCheck;
FlushEvents;

while to_wait_for_key
    Screen('FillRect', window_pointer);
    Screen('DrawTexture', window_pointer, texture1, [], [], 0);
    Screen('Flip', window_pointer);
    pressed_char = GetChar;
    pressed_char_int = str2double(sprintf('%d', pressed_char));
    space_key_pressed = pressed_char_int == ' ';
    to_wait_for_key = ~space_key_pressed;
    if space_key_pressed
        Screen('FillRect', window_pointer);
        Screen('DrawTexture', window_pointer, texture2, [], [], 0); 
        Screen('Flip', window_pointer);
    end
end
end
