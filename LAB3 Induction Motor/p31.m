clc;
clearvars;
close all;

to  = [0.000 1.636 2.970 3.912 4.654];
Iip = [1.087 1.305 1.557 1.779 2.000];

% Plot with data points marked
plot(to, Iip, 'o-');  % 'o-' adds a line with circle markers
xlabel('Output Torque ($T_{o/p,pulley}$) [Nm]', 'Interpreter', 'latex');
ylabel('Input Current ($I_{i/p}$) [A]', 'Interpreter', 'latex');
title({'Practical Input Current ($I_{i/p}$) \& Output Torque Relationship ($T_{o/p,pulley}$)'}, 'Interpreter', 'latex');
xlim([0 5]);
ylim([1 2.2]);

% Annotate each data point
for i = 1:length(to)
    text(to(i), Iip(i), sprintf('(%0.3f, %0.3f)', to(i), Iip(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end
