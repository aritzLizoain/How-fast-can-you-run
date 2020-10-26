%AUTHOR: ARITZ LIZOAIN
function create_plot(time, values_in_time, ages, PBs, title_event,...
    units_event, best_age_event, WR_event_M, WR_event_W, age_last,...
    WR_event_legend_M, WR_event_legend_W)
%plots the PB progression
plot(time, values_in_time, 'k', ages, PBs,'or', 'MarkerFaceColor','r', 'LineWidth', 2)
title(title_event)
ylabel(['PB (', units_event, ')'])
xlabel('Age (years)')
hold on
%plots the men's WR
plot(best_age_event, WR_event_M, 'pg', 'MarkerSize', 10,...
    'MarkerFaceColor',[0, 0.5, 0])
hold on
%plots the women's WR
plot(best_age_event, WR_event_W, 'pg', 'MarkerSize', 10,...
    'MarkerFaceColor','g')
hold on
%plots the current PB in a different color
plot(age_last,PBs(length(PBs)),'ob', 'MarkerSize', 10,...
    'MarkerFaceColor','b')
legend('Progression','PBs', WR_event_legend_M, WR_event_legend_W, 'Current PB', 'location', 'best')
hold off
end