function fig = plotTAUF(time, TAU_F, n)
fig = figure('Position', get(0, 'Screensize'));
box on
for i=1:n
    subplot(4, 2, i);
    plot(time, TAU_F(:, i), 'LineWidth', 2);
    caption = sprintf('Joint %i', i);
    title(caption)
    xlabel('Time [s]','FontSize',20)
    ylabel('Torque [Nm]','FontSize',20)
    
    legend({'$\tau_{f}$'}, 'Interpreter', 'latex', 'FontSize', 10)
    grid on
    xlim([0, time(end)])
    
    set(gca,'FontSize',10)
    set(gca,'linewidth',2)
end