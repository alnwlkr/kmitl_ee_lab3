clc;
clearvars;
close all;

pf = [0.165 0.582 0.680 0.769 0.796];
to = [0.000 1.636 2.970 3.912 4.654];

% Plot with data points marked
plot(to, pf, 'o-');  % 'o-' adds a line with circle markers
xlabel('Output Torque ($T_{o/p,pulley}$) [Nm]', 'Interpreter', 'latex');
ylabel('Input Power Factor ($PF_{i/p}$)', 'Interpreter', 'latex');
title('Practical Input Power Factor ($PF_{i/p}$) \& Output Torque Relationship ($T_{o/p,pulley}$)', 'Interpreter', 'latex');
ylim([0 0.9]);
xlim([0 5]);

% Annotate each data point
for i = 1:length(to)
    text(to(i), pf(i), sprintf('(%0.3f, %0.3f)', to(i), pf(i)), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end
