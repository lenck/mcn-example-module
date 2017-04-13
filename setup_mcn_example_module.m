function setup_mcn_example_module()
root = fullfile(fileparts(mfilename('fullpath')), 'matlab') ;
addpath(root) ;
addpath(fullfile(root, 'mex')) ;
end