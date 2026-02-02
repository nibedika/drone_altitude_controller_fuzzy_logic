clc; clear; close all;

%% Test Input

error_values = linspace(-2, 2, 50)';     % 50 samples
derror_values = linspace(-2, 2, 50)';    % 50 samples

data = [error_values derror_values];

folder = '/Users/nibedika/Documents/AIAS/Class Program/Drone Fuzzy';
save(fullfile(folder, 'valdata.mat'), 'data');



%%
fis = readfis('DroneAltitudeController.fis');

error = 0.8;     % drone is below target
derror = -0.3;   % drone is going down

thrust = evalfis(fis, [error derror])

surfview(fis);


%%

save_system(gcs, '/Users/nibedika/Documents/AIAS/Class Program/Drone Fuzzy/DroneAltitudeController.slx');
