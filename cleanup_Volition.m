%% Try and catch envelope to the main experiment
% In order to avoid sudden collapses

try
    Kornhuber_task
catch ME
    fprintf('ERROR: %s %s\n', ME.identifier, ME.message);
    finalize
    disp('Clean up function has been executed');
    rethrow(ME)
end