clc;
clearvars;
close all;

to =   [0.000 1.636 2.970 3.912 4.654];
slip = [0.003 0.026 0.044 0.058 0.070];

% Plot with data points marked
plot(to, slip, 'o-');  % 'o-' adds a line with circle markers
xlabel('Output Torque ($T_{o/p,pulley}$) [Nm]', 'Interpreter', 'latex');
ylabel('Slip (s)', 'Interpreter', 'latex');
title('Practical Slip (s) \& Output Torque Relationship ($T_{o/p,pulley}$)', 'Interpreter', 'latex');
xlim([0 5]);
ylim([0 0.08]);

% Annotate each data point
for i = 1:length(to)
    text(to(i), slip(i), sprintf('(%0.3f, %0.3f)', to(i), slip(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end
