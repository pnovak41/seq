function struct2csv(mat_fname, sn)

% convert beh struct to csv file for python analysis
bRoot = ['/Users/Woodmanlab/Documents/PeterDistractorTask/compiled_data/Behavior/']; % location of behavior data
csv_dir = ['/Users/Woodmanlab/Documents/PeterDistractorTask/compiled_data/Behavior/csv_files/']; % save location 

% first load-in behavior struct
file_path = [bRoot, mat_fname, '.mat']; load(file_path); % struct called beh loaded

writetable(struct2table(beh), [csv_dir, num2str(sn), '_beh_struct_PDT.csv']); % convert struct to table and write to csv






