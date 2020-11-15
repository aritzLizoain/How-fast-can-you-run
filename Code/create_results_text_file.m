%//////////////////////////////////////////////////////////////////////////////////////////
%// Original author: Aritz Lizoain
%// Github: https://github.com/aritzLizoain
%// My personal website: https://aritzlizoain.github.io/
%// Description: Numerical methods (Least Squares Approximation) employment
%// Copyright 2020, Aritz Lizoain.
%// License: MIT License
%//////////////////////////////////////////////////////////////////////////////////////////

function create_results_text_file(WR_event_M, event_string, best_PB,...
    units_event, best_age_event, WR_event_W);

fid=fopen('Results.txt','wt'); %Opens the txt file
fprintf(fid,'                                       RESULTS'); %fprintf to write anything on the file
fprintf(fid,'\n--------------------------------------------------------------------------------------');
if best_PB < WR_event_M
    print_PB=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for men and women)',...
    event_string,round(best_PB,2),units_event,round(best_age_event));
elseif best_PB < WR_event_W
    print_PB=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)\nIt is a new world record! (for women)',...
    event_string,round(best_PB,2),units_event,round(best_age_event));
elseif best_PB > WR_event_W
    print_PB=sprintf('\nYour future PB in the %s event will be: %0.2f %s (estimated at the age of %0.0f)',...
    event_string,round(best_PB,2),units_event,round(best_age_event));
end
fprintf(fid,print_PB);
fprintf(fid,'\n--------------------------------------------------------------------------------------');
fprintf(fid,'\nEvent: %s\t   You   \tWR (men)\tWR (women)', event_string);
fprintf(fid,'\nPB (%s)\t   %0.2f\t%0.2f\t        %0.2f',units_event,best_PB,WR_event_M, WR_event_W);
fprintf(fid,'\n--------------------------------------------------------------------------------------');
    %\t --------- Horizontal tab
    %%f ---------- Floating-point number. 
fclose(fid);%Closes the txt file
results_displayed = sprintf('A .txt file with your results has been created');
disp(results_displayed)
end
