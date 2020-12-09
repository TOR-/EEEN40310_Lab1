filename = '/home/tor/projects/ucd/eeen40310_Power-Electronics/LAB1/Complete.txt';
opts = delimitedTextImportOptions("NumVariables", 56);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["time", "Vout", "Vvc"];
opts.VariableTypes = ["double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
Complete = readtable(filename, opts);

clear opts

plot(Complete.Vvc, Complete.Vout, 'o')
xlabel("V_C [V]")
ylabel("V_O [V]")
title("Output voltage vs reference voltage")