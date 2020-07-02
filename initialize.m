%% Initialize Psychtoolbox

%% Set default settings for Psychtoolbox 
% 2 = imply the execution of
% Screen(‘ColorRange’, window, 1, [], 1); immediately after and whenever
% PsychImaging(‘OpenWindow’,…) is called
PsychDefaultSetup(2);

%% Make sure we run on the OSX / OpenGL Psychtoolbox, and abort if we don't
AssertOpenGL;

%% Create screen
% create screen settings
set_log_level;
PsychDebugWindowConfiguration; % Debugger mode (translucent windows)

% Get array of available screen numbers
% Screen 0 is always the full Windows desktop.
% Screens 1 to n are corresponding to windows display monitors 1 to n.
available_screen_numbers = Screen('Screens'); % get screen numbers

% Select screen for display, to be the last screen in use
screen_id = max(available_screen_numbers); 

% Define screen size (If left empty - will be displayed over entire screen)
window_rect = [];
window_pointer = Screen('OpenWindow', screen_id, 0, window_rect);

% Define black, white, grey, red and blue
white = WhiteIndex(screen_id);
black = BlackIndex(screen_id);
grey = white / 2;
red = [255 0 0];
blue = [0 112 192];
backgroundColor = white; % define backgrounf color as white

%% Load images
welcomeImage = imread('welcome_message_ex1.tiff');
instructionsImage = imread('click_message_ex1.tiff');
startImage = imread('start_message_ex1.tiff');
endImage = imread('end_message_ex1.tiff');
endBlock1Image = imread('end_block1_message_ex1.tiff');
endBlock2Image = imread('end_block2_message_ex1.tiff');
endBlock3Image = imread('end_block3_message_ex1.tiff');

% scale all images to fit screen size
welcomeImage_scaled = scale_Image(welcomeImage,window_pointer);
instructionsImage_scaled = scale_Image(instructionsImage,window_pointer);
startImage_scaled = scale_Image(startImage,window_pointer);
endImage_scaled = scale_Image(endImage,window_pointer);
endBlock1Image_scaled = scale_Image(endBlock1Image,window_pointer);
endBlock2Image_scaled = scale_Image(endBlock2Image,window_pointer);
endBlock3Image_scaled = scale_Image(endBlock3Image,window_pointer);

% Convert the images into a texture
welcomeImage_texture = Screen('MakeTexture', window_pointer, welcomeImage_scaled);
instructionsImage_texture = Screen('MakeTexture', window_pointer, instructionsImage_scaled);
startImage_texture = Screen('MakeTexture', window_pointer, startImage_scaled);
endImage_texture = Screen('MakeTexture', window_pointer, endImage_scaled);
endBlock1Image_texture = Screen('MakeTexture', window_pointer, endBlock1Image_scaled);
endBlock2Image_texture = Screen('MakeTexture', window_pointer, endBlock2Image_scaled);
endBlock3Image_texture = Screen('MakeTexture', window_pointer, endBlock3Image_scaled);

%% Adjust keyboard
KbName('UnifyKeyNames'); % Adjust to MacOS-X naming scheme

%% Define Esc press for exit at any time
% escape_key_index = KbName('ESCAPE');
% KbCheck;
% to_wait_for_esc = true;
% FlushEvents;
% 
% while to_wait_for_esc
%      pressed_char = GetChar;
%      pressed_char_int = str2double(sprintf('%d', pressed_char));
%      escape_key_pressed = pressed_char_int == escape_key_index;
%      to_wait_for_esc = ~escape_key_pressed;
%      if escape_key_pressed
%          finalize;
%      end
% end
    


