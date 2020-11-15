%//////////////////////////////////////////////////////////////////////////////////////////
%// Original author: Aritz Lizoain
%// Github: https://github.com/aritzLizoain
%// My personal website: https://aritzlizoain.github.io/
%// Description: Numerical methods (Least Squares Approximation) employment
%// Copyright 2020, Aritz Lizoain.
%// License: MIT License
%//////////////////////////////////////////////////////////////////////////////////////////

%Displays the sentence: Your future PB in the "" event will be: ""
%seconds/cm/points (estimated at the age of "")

function display_results(best_age_event, WR_event_M,...
    WR_event_W, event_string, best_PB, units_event)

if contains(units_event,"s") %running/walking races
    if best_PB < WR_event_M
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for men and women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB < WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB > WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    end  
    disp(result)
elseif contains(units_event,"points") %heptathlon/decathlon
    if best_PB > WR_event_M
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for men and women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB > WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB < WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    end  
    disp(result)
elseif contains(units_event,"cm") %throws and jumps
    if best_PB > WR_event_M
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for men and women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB > WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for women)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    elseif best_PB < WR_event_W
        result=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)',...
        event_string,round(best_PB,2),units_event,round(best_age_event));
    end  
    disp(result)
end
end
