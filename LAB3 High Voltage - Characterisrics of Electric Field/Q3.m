clc;
clearvars;
close all;

d = [3 5 8 10]; % X-Axis
Ubsp  = [7.533 12.863 17.617 20.837]; % Y-Axis (Sphere-Plane)
Ubpp = [7.360 11.767 15.790 20.280]; % Y-Axis (Plane-Plane)
Ubrp = [4.527 5.833 8.283 10.543];   % Y-Axis (Rod-Plane)

% Plot with data points marked
plot(d, Ubsp, '-o', d, Ubrp, '-o', d, Ubpp, '-o')
xlabel('Distance (d) [mm]', 'Interpreter', 'latex');
ylabel('Breakdown Voltage ($U_{b}$) [kV]', 'Interpreter', 'latex');
title({'Distance (d) [mm] \& Breakdown Voltage ($U_{b}$) [kV]'}, 'Interpreter', 'latex');
xlim([2 11]);
ylim([3 22]);

% Annotate only the y-values for Ubsp (Sphere-Plane)
for i = 1:length(d)
    text(d(i), Ubsp(i), sprintf('%0.3f', Ubsp(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end

% Annotate only the y-values for Ubpp (Plane-Plane)
for i = 1:length(d)
    text(d(i), Ubpp(i), sprintf('%0.3f', Ubpp(i)), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end

% Annotate only the y-values for Ubrp (Rod-Plane)
for i = 1:length(d)
    text(d(i), Ubrp(i), sprintf('%0.3f', Ubrp(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Interpreter', 'latex');
end

% Add Legend
legend('Sphere-Plane', 'Rod-Plane', 'Plane-Plane', 'Interpreter', 'latex', 'Location', 'best');
grid on;
