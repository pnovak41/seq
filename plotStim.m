function plotStim

% plot stimtrak to make sure timing is accurate

sn = 24;

bRoot = ['/Users/Woodmanlab/Documents/PeterDistractorTask/SubjectData/'];
eRoot = ['/Users/Woodmanlab/Documents/PeterDistractorTask/compiled_data/EEG_EyeTrack/'];

fName = [bRoot, num2str(sn), '_SeqDist_1.mat']; load(fName) % load in behavior file for gazeViolation
fName = [eRoot, num2str(sn), '_EEG_SEG_PDT.mat']; load(fName) % load in eeg data

stimChan = erp.trial.baselined(:,26,:);
gazeLog = logical(data.gazeViolationIdx(1:32)'); % 1:32 only because 32 trials were completed 

figure; plot(squeeze(stimChan(~gazeLog, :, :))');
