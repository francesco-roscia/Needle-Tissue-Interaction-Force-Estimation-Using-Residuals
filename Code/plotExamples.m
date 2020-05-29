forcePlot = -[F_EXT(1:16/deltaTime, 3); 0.4*F_EXT(6/deltaTime:samples, 3)];
forcePlot = NoncausalButterworthFilter(forcePlot);
FP = figure('Position', get(0, 'Screensize'));
box on
plot(1:length(forcePlot), forcePlot, 'LineWidth', 2);
set(gca, 'xtick', [])
set(gca, 'ytick', [])
xlim([-1000 length(forcePlot)+1000])
xlabel('Time [s]')
ylabel('Force [N]')
saveas(FP, 'Figure/Example_force', 'epsc')
saveas(FP, 'Figure/Example_force', 'png')


errorPlot = [Estimation_error(9.8/deltaTime:23.88/deltaTime); 0.4*Estimation_error(9.8/deltaTime:23.88/deltaTime)];
errorPlot = NoncausalButterworthFilter(errorPlot);
FP = figure('Position', get(0, 'Screensize'));
box on
plot(1:length(errorPlot), errorPlot, 'LineWidth', 2);
set(gca, 'xtick', [])
set(gca, 'ytick', [])
xlim([-1000 length(errorPlot)+1000])
xlabel('Time [s]')
ylabel('Estimation error [N]')
saveas(FP, 'Figure/Example_Estimation_error', 'epsc')
saveas(FP, 'Figure/Example_Estimation_error', 'png')


errorDPlot = [Estimation_errorD(9.8/deltaTime:23.88/deltaTime); 0.4*Estimation_errorD(9.8/deltaTime:23.88/deltaTime)];
errorDPlot = NoncausalButterworthFilter(errorDPlot);
l = length(errorDPlot);
tIN = [];
tFIN = [];

for t = 2 : l
    if errorDPlot(t-1)>-phase_th && errorDPlot(t)<-phase_th
        tIN = [tIN; t];
    end
    if errorDPlot(t-1)>phase_th && errorDPlot(t)<phase_th
        tFIN = [tFIN; t];
    end
end

FP = figure('Position', get(0, 'Screensize'));
box on
hold on
plot(1:length(errorDPlot), errorDPlot, 'LineWidth', 2);
plot(1:length(errorDPlot), 0.0087*ones(1,length(errorDPlot)), 'r--', 1:length(errorDPlot), -0.0087*ones(1,length(errorDPlot)), 'r--', 'LineWidth', 2)

xline(tIN(1), '--k');
text(tIN(1)/2, 0.05, '\Xi', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center')
plot(tIN(1), errorDPlot(tIN(1)), '*k', 'LineWidth', 2)
text(tIN(1), -0.05, 't_{IN, 1} ', 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom')

xline(tIN(2), '--k');
text((tIN(2)-tFIN(1))/2+tFIN(1), 0.05, '\Xi', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center')
plot(tIN(2), errorDPlot(tIN(2)), '*k', 'LineWidth', 2)
text(tIN(2), -0.05, 't_{IN, 2} ', 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom')

text((length(errorDPlot)-tFIN(2))/2+tFIN(2), 0.05, '\Xi', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center')

xline(tFIN(1), '--k');
text((tFIN(1)-tIN(1))/2+tIN(1), 0.05, '\Omega', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center')
plot(tFIN(1), errorDPlot(tFIN(1)), '*k', 'LineWidth', 2)
text(tFIN(1), -0.05, ' t_{FIN, 1}', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom')

xline(tFIN(2), '--k');
text((tFIN(2)-tIN(2))/2+tIN(2), 0.05, '\Omega', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center')
plot(tFIN(2), errorDPlot(tFIN(2)), '*k', 'LineWidth', 2)
text(tFIN(2), -0.05, ' t_{FIN, 2}', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom')


set(gca, 'xtick', [])
set(gca, 'ytick', [])
xlim([-1000 length(errorDPlot)+1000])
ylim([-0.05 0.05])
xlabel('Time [s]')
ylabel('Time Derivative of Estimation Error [N/s]')

saveas(FP, 'Figure/Example_Estimation_errorD', 'epsc')
saveas(FP, 'Figure/Example_Estimation_errorD', 'png')
