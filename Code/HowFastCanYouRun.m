%AUTHOR: ARITZ LIZOAIN 
%------------------------------REFERENCES---------------------------------
%Peak performance ages taken from: https://www.researchgate.net/figure/...
%Age-y-at-Peak-Performance-and-Number-of-Years-in-the-Peak-Performance-...
%Window-in_tbl1_283517440
%-------------------------------------------------------------------------
close all
clear
clc
%-----------------------VALUE ENTER SOUND---------------------------------
WarnWave = [sin(1:.6:400), sin(1:.7:400), sin(1:.4:400)];
Audio = audioplayer(WarnWave, 22050);
%---------------------------------EVENT-----------------------------------
fprintf('Enter the event name. The options are:\n "100m", "200m", "400m", "800m", "1500m", "5000m", "10000m", "marathon",\n "100mh/110mh", "400mh", "3000ms",\n "high jump", "long jump", "triple jump", "pole vault",\n "shot put", "javelin throw", "discus throw", "hammer throw",\n "decathlon/heptathlon", "20km walk", "50km walk"\n (please write your answer between quotation marks).\n')
event=input('');
play(Audio);
[event_string, title_event, units_event, WR_event_M, WR_event_W...
    , WR_event_legend_M, WR_event_legend_W, best_age_event, F]...
    = get_event_information(event);
%----------------------------DATA INPUT-----------------------------------
fprintf('\nEnter your age when you started competing\n')
age_0=input('');
play(Audio);
fprintf('\nEnter your age when you ended competing (or your current age, if you still compete).\n(Note that at least two years are needed)\n')
age_last=input('');
play(Audio);
n_ages = age_last-age_0;
ages=linspace(age_0,age_last,n_ages+1);
PBs = ages;
for age = ages
    fprintf('\nEnter your PB (in %s) at the age of %i\n', units_event, age)
    PBs(age-age_0+1)=input('');  
    play(Audio);
end
time = linspace(age_0,best_age_event);
%--------------------------NUMERICAL METHODS------------------------------
[coeff,values_in_time]=LeastSquaresApproximation(ages,PBs',F,time,0);
%------------------------------PRINTS-------------------------------------
if contains(units_event,"s") %running/walking races
    best_PB = round(coeff(1)+coeff(2)*(best_age_event)+...
        coeff(3)*exp(-best_age_event),2);
elseif contains(units_event,"points") %heptathlon/decathlon
    best_PB = round(coeff(1)+coeff(2)*(best_age_event)+...
        coeff(3)*exp(-best_age_event),2);
elseif contains(units_event,"cm") %throws and jumps
    best_PB = round(coeff(1)+coeff(2)*(best_age_event)+...
        coeff(3)*log(best_age_event),2);
end
display_results(best_age_event, WR_event_M, WR_event_W,...
    event_string, best_PB, units_event)
%--------------------------------TEXT------------------------------------- 
create_results_text_file(WR_event_M, event_string, best_PB,...
    units_event, best_age_event, WR_event_W);
%---------------------------PROGRESSION PLOT------------------------------
create_plot(time, values_in_time, ages, PBs, title_event, units_event,...
    best_age_event, WR_event_M, WR_event_W, age_last, WR_event_legend_M,...
    WR_event_legend_W)
%-------------------------------------------------------------------------
% Don't feel discouraged, Kim Collins (Saint Kitts and Nevis) set his PB
% and National Record (9.93s) of his country in the 100m at the age of 40!