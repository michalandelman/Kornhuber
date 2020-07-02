function [image_data_scaled] = scale_Image(image_data, window_pointer)
%SCALE_IMAGE scale image to feet screen size

% Get the size of the image
image_size = size(image_data);
image_height = image_size(1);
image_width = image_size(2);

% Get the size of the on screen window
[screen_width, screen_height] = Screen('WindowSize', window_pointer);

% Check if the image is too big to fit on the screen and rescale if needed
if screen_width < image_width || screen_height < image_height
    scale_to_use = min(screen_width / image_width, screen_height / image_height);
    image_data_scaled = imresize(image_data, scale_to_use);
else
    image_data_scaled = image_data;
end
end

