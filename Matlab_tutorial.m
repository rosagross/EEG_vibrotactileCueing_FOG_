pwd
%eeglabpath = fileparts(which('eeglab.m'))
eeglab

acz_EEG = pop_loadeep_v4(); % eeg lab toolbox for windows to open ANT cnt
acz_EEG.preprocessing = [] % documenting what we did in our preprocessing step

% Add information to the cnt data
acz_EEG.oddball_type = 'complete';


% time does not 
acz_EEG.times(1:1024)/1024 % this would be data points of one second

acz_EGG.data(1:10)/1024 % these are the first 10 datapoints 


% adding channel information 
acz_EEG = pop_chanedit(acz_EEG, 'lookup', fullfile(eeglabpath, 'path to plugin..'))

eegplot(acz_EEG.data, 'srate', acz_EEG.srate, 'eloc_file', acz_EEG.chanlocs)
