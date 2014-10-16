%{

This script has 3 stages:

1. A File select dialog box for selecting 1 or more files.
2. A prompt for a regular expression (see help > regexprep > metacharacters)
3. A prompt for a string

It will rename all files selected, if it can find a regexp match within the
file name. It will replace the regexp with the string in that case.

%}

title = 'Select File(s) to Rename';
[filename, pathname, filterindex] = uigetfile( ...
'*.*', title , pwd, 'MultiSelect', 'on');

addpath(pathname(1:end-1));

fprintf(['\n\nRENAMING FILES: replace regular expression with string.\n\n', ...
'Example: REGEXP \\d* with STRING _ would replace all consecutive ', ...
'numerical digits with an underscore.\nFor more help, break (ctrl-c),', ...
'then enter "doc metacharacters" to see their use in "regexprep"...\n\n']);

replace = input('replace(regexp):','s');
with = input('with(string):','s');

for n=1:length(filename)
    file = strcat(pathname,filename{n});
     movefile(file, regexprep(file,replace,with));
end
