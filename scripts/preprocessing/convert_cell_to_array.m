clc; clear all;

%% Define directories
current_directory = pwd;
parent_directory = fileparts(current_directory);
grandparent_directory = fileparts(parent_directory);

raw_data_directory = fullfile(grandparent_directory, 'data', 'raw');
converted_data_directory = fullfile(grandparent_directory, 'data', 'converted');

%% Void 0
void_number = 0;

% Load signal data
displacement_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'signal_data.mat')).signal_data;

% Convert the data from cell to matrix
displacement_data = cat(3, displacement_data{:});

% Reshape the data such that the shape is: [n_samples, n_time_steps, n_sensors]
displacement_data = permute(displacement_data, [3, 2, 1]);

% Load void data
void_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'void_data.mat')).Crack_data_yes_no_1;

% Save the signal and void data
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_displacement_data.mat')), 'displacement_data');
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_void_data.mat')), 'void_data');

%% Void 1
void_number = 1;

% Load signal data
displacement_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'signal_data.mat')).signal_data;

% Convert sparse cell to regular cell
displacement_data = cellfun(@full, displacement_data, 'UniformOutput', false);

% Convert the data from cell to matrix
displacement_data = cat(3, displacement_data{:});

% Reshape the data such that the shape is: [n_samples, n_time_steps, n_sensors]
displacement_data = permute(displacement_data, [3, 2, 1]);

% Load void data
void_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'void_data.mat')).Crack_data_yes_no_1;

% Save the signal and void data
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_displacement_data.mat')), 'displacement_data');
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_void_data.mat')), 'void_data');

%% Void 2
void_number = 2;

% Load signal data
displacement_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'signal_data.mat')).Signal_data;

% Convert sparse cell to regular cell
displacement_data = cellfun(@full, displacement_data, 'UniformOutput', false);

% Convert the data from cell to matrix
displacement_data = cat(3, displacement_data{:});

% Reshape the data such that the shape is: [n_samples, n_time_steps, n_sensors]
displacement_data = permute(displacement_data, [3, 2, 1]);

% Load void data
void_data = load(fullfile(raw_data_directory, strcat('void_', string(void_number)), 'void_data.mat')).Crack_data_yes_no_1;

% Save the signal and void data
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_displacement_data.mat')), 'displacement_data');
save(fullfile(converted_data_directory, strcat('void_', string(void_number), '_void_data.mat')), 'void_data');