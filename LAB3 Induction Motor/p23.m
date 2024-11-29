clc;
clearvars;
close all;

to  = [0.38 2.99 4.89 6.11 7.17];
pf = [0.16 0.58 0.68 0.77 0.796];

% Plot with data points marked
plot(to, pf, 'o-');  % 'o-' adds a line with circle markers
xlabel('Output Torque ($T_{o/p}$) [Nm]', 'Interpreter', 'latex');
ylabel('Input Power Factor ($PF_{i/p}$)', 'Interpreter', 'latex');
title('Theoretical Input Power Factor ($PF_{i/p}$) \& Output Torque Relationship ($T_{o/p}$)', 'Interpreter', 'latex');
ylim([0 0.9]);
xlim([0 8]);

% Annotate each data point
for i = 1:length(to)
    text(to(i), pf(i), sprintf('(%0.3f, %0.3f)', to(i), pf(i)), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end
