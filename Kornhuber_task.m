%% Kornhuber experiment

% The participant presses on button with his right/left index, according 
% his own will. The program shows instruction and records the presses, 
% sending triggers to labchart.

%% Clear the workspace and the screen
sca;
close all;
clc;
clear;

%% Insert participant's number
% the participant's code will be inserted by the researcher
verifySubNum;

%% Initialize experiment
% Initialize psychtoolbox parameters
initialize;

%% Show instructions

% Show first image, click space to move to the next image
spaceNextImage(welcomeImage_texture,instructionsImage_texture, window_pointer);
spaceNextImage(instructionsImage_texture,startImage_texture, window_pointer);

%% Start time recording
tic % start stopwatch

%% Create arrays for timestamps
timings_clicks_blocks = zeros(100,3);
timings_end_blocks = zeros(3,1);

%% Start experiment block
% record the timing of the participant clicks
% repeat for 3 blocks, each of 15 minutes (for debugging purposes: 2 sec)
numberBlocks = 3;
MAX_TIME_SECONDS = 2;

for block = 1:numberBlocks
    max_time = MAX_TIME_SECONDS + toc;
    j = 1;
    while toc <= max_time
        input('');
        timings_clicks_blocks(j,block) = toc; % end stopwatch and store result in element i
        j = j + 1;
    end
    if block == 1
        spaceNextImage(endBlock1Image_texture,startImage_texture,window_pointer);
        timings_end_blocks(block) = toc;
    elseif block == 2
        spaceNextImage(endBlock2Image_texture,startImage_texture,window_pointer);
        timings_end_blocks(block) = toc;
    elseif block == numberBlocks
        spaceNextImage(endBlock3Image_texture,endImage_texture,window_pointer);
        timings_end_blocks(block) = toc;
    end 
end

%% Finalize
finalize;
