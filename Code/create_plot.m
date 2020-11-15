%//////////////////////////////////////////////////////////////////////////////////////////
%// Original author: Aritz Lizoain
%// Github: https://github.com/aritzLizoain
%// My personal website: https://aritzlizoain.github.io/
%// Description: Numerical methods (Least Squares Approximation) employment
%// Copyright 2020, Aritz Lizoain.
%// License: MIT License
%//////////////////////////////////////////////////////////////////////////////////////////

function create_plot(time, values_in_time, ages, PBs, title_event,...
    units_event, best_age_event, WR_event_M, WR_event_W, age_last,...
    WR_event_legend_M, WR_event_legend_W)

for i=1:1:100
%plots the PB progression in black
plot(time(i), values_in_time(i), 'ok', 'MarkerFaceColor','k', 'MarkerSize',2)
title(title_event)
ylabel(['PB (', units_event, ')'])
xlabel('Age (years)')
hold on
%plots the PBs in red
plot(ages, PBs,'or', 'MarkerFaceColor','r')
title(title_event)
hold on
%plots the current PB in blue
plot(age_last,PBs(length(PBs)),'ob', 'MarkerSize', 10,...
    'MarkerFaceColor','b')
hold on
%plots the men's WR in dark green
plot(best_age_event, WR_event_M, 'pg', 'MarkerSize', 10,...
    'MarkerFaceColor',[0, 0.5, 0])
hold on
%plots the women's WR in light green
plot(best_age_event, WR_event_W, 'pg', 'MarkerSize', 10,...
    'MarkerFaceColor','g')
legend('Progression','PBs', 'Current PB', WR_event_legend_M, WR_event_legend_W, 'location', 'best')
shg
end
hold off
