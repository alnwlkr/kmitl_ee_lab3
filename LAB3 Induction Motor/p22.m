clc;
clearvars;
close all;

to  = [0.38 2.99 4.89 6.11 7.17];
slip = [3.06e-3 0.026 0.044 0.0576 0.0702];

% Plot with data points marked
plot(to, slip, 'o-');  % 'o-' adds a line with circle markers
xlabel('Output Torque ($T_{o/p}$) [Nm]', 'Interpreter', 'latex');
ylabel('Slip (s)', 'Interpreter', 'latex');
title('Theoretical Slip (s) \& Output Torque Relationship ($T_{o/p}$)', 'Interpreter', 'latex');
xlim([0 8]);
ylim([0 0.08]);

% Annotate each data point
for i = 1:length(to)
    text(to(i), slip(i), sprintf('(%0.3f, %0.3f)', to(i), slip(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end
