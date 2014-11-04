%%% fileregexprep
%
% Rename files using regular expression
%
%%% Syntax
% 
% |fileregexprep(expression, replace);|
%
%%% Description
%
% |fileregexprep(expression, replace)| replaces the text 
% in each filename that matches expression with the text described by 
% replace. Filenames are defined by uigetfile, displayed at the onset of
% fileregexprep. See <matlab:regexprep regexprep> for expression use.
%

function fileregexprep(expression, replace)
    
    assert(exist('expression','var') && exist('replace','var'))

    [files, path] = uigetfile( ...
        '*.*', 'fileregexprep: Select File(s)', pwd, 'MultiSelect', 'on');

    newFiles = regexprep(files,expression,replace);
    
    for i = 1:length(files)
        movefile([path, files{i}], [path, newFiles{i}]);
    end

end
