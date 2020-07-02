%% Finalize the experiment

%% Save results into data struct for each participant
Data.block1 = timings_clicks_blocks(:,1);
Data.block2 = timings_clicks_blocks(:,2);
Data.block3 = timings_clicks_blocks(:,3);
Data.end_block = timings_end_blocks;

filename = sprintf('data_subject_%d.csv',subjectNum); % create file name

%% Save results to a csv file for each participant
folder_path = fileparts(pwd);
addpath(genpath(folder_path));

cd Subjects_data;
struct2csv(Data,filename); % convert struct to csv file
cd ..

%% Create final screen
Screen('DrawTexture', window_pointer, endImage_texture, [], [], 0);
Screen('Flip', window_pointer); % Flip to the screen
pause(4);
fprintf('close and exit\n');
sca;