%% recieves button presses

MAX_TIME_SECONDS = 2;
timings_clicks = zeros(1,1000);
i = 1;
tic % start stopwatch
while toc <= MAX_TIME_SECONDS
    input('');
    timings_clicks(i) = toc; % end stopwatch and store result in element i
    i = i + 1;
    disp(toc);
end