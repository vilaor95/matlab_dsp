clear; close all

pkg load io;
pkg load signal;

filename = 'data.csv';

data = csv2cell(filename);

% plot price graph
dates = datenum(flipud(data(2:end,1)))';
prices = str2double(cell2mat(flipud(data(2:end,2))));

plot(prices);
datetick(datestr(dates,'yyyy-mm-dd'));

hold on

% plot SMA
