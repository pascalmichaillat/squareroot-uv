%% getVacancyPandemic
% 
% Return monthly vacancy rate in the United States, 2020M1--2022M3
%
%% Syntax
%
%   v = getVacancyPandemic()
%
%% Output arguments
%
% * v - 27-by-1 column vector
%
%% Description
%
% This function constructs and returns the monthly vacancy rate in the United States, 2020M1--2022M3:
% # The function reads the monthly vacancy level.
% # The function reads the monthly labor-force level.
% # The function divides vacancy level by labor-force level to obtain the vacancy rate.
%
%% Data sources
%
% * US vacancy level - Bureau of Labor Statistics (2022)
% * US labor-force level - Bureau of Labor Statistics (2022)
%
% The data are stored in data.xlsx.
%

function v = getVacancyPandemic()

% Read vacancy level
vLevel = readmatrix('data.xlsx', 'Sheet', 'Monthly data', 'Range', 'E1083:E1109');

% Read labor-force level
laborforce = readmatrix('data.xlsx', 'Sheet', 'Monthly data', 'Range', 'D1083:D1109');

% Compute vacancy rate
v = vLevel ./ laborforce;