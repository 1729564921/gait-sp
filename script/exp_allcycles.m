try
    matlabpool open
catch e

end

param_range = [];
options = [];

load score_param
options.CorruptedPerson = score_param.CorruptedPerson;

% param_range.cycleNUM = inf;
% crossTest('cycle-matching',param_range,options)

param_range.cycleNUM = 1:10;
crossTest('cycle-matching',param_range,options)

param_range.cycleNUM = -1;
param_range.cycleNUM_SAMPLE   = 1:10;
param_range.cycleNUM_EXEMPLAR = inf;
crossTest('cycle-matching',param_range)

param_range.cycleNUM = -1;
param_range.cycleNUM_SAMPLE   = inf;
param_range.cycleNUM_EXEMPLAR = 1:10;
crossTest('cycle-matching',param_range)


matlabpool close
