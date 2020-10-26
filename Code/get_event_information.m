%AUTHOR: ARITZ LIZOAIN 
%Information related to each olympic event
% * Name
% * Units
% * Men's WR
% * Women's WR
% * Peak performance age
% * Least Squares Approximation function
function [event_string, title_event, units_event, WR_event_M, WR_event_W...
    , WR_event_legend_M, WR_event_legend_W, best_age_event, F]...
    = get_event_information(event)

F_run=@(x) [1 exp(-x)];% f(x) = a + b*exp(-x)
F_other=@(x) [1 log(x)];% f(x) = a + b*log(x)
if contains(event,"100m")
        event_string = '100m';
        title_event = '100m PB progression';
        units_event = 'seconds';
        WR_event_M = 9.58; 
        WR_event_W = 10.49;
        WR_event_legend_M = 'WR (M): Usain Bolt (2009) - 9.58s';
        WR_event_legend_W = 'WR (W): Florence Griffith-Joyner (1988) - 10.49s';
        best_age_event = 25;
        F = F_run;
elseif contains(event,"200m")
        event_string = '200m';
        title_event = '200m PB progression';
        units_event = 'seconds';
        WR_event_M = 19.19; 
        WR_event_W = 21.34;
        WR_event_legend_M = 'WR (M): Usain Bolt (2009) - 19.19s';
        WR_event_legend_W = 'WR (W): Florence Griffith-Joyner (1988) - 21.34s';
        best_age_event = 25;  
        F = F_run;
elseif contains(event,"400m")
        event_string = '400m';
        title_event = '400m PB progression';
        units_event = 'seconds';
        WR_event_M = 43.03; 
        WR_event_W = 47.60;
        WR_event_legend_M = 'WR (M): Wayde van Niekerk (2016) - 43.03s';
        WR_event_legend_W = 'WR (W): Marita Koch (1985) - 47.60s';
        best_age_event = 25;  
        F = F_run;
elseif contains(event,"800m")
        event_string = '800m';
        title_event = '800m PB progression';
        units_event = 'seconds';
        WR_event_M = 100.91; 
        WR_event_W = 113.28;
        WR_event_legend_M = 'WR (M): David Rudisha (2012) - 100.91s';
        WR_event_legend_W = 'WR (W): Jarmila Kratochvílová (1983) - 113.28s';
        best_age_event = 26;  
        F = F_run;
elseif contains(event,"1500m")
        event_string = '1500m';
        title_event = '1500m PB progression';
        units_event = 'seconds';
        WR_event_M = 206.00; 
        WR_event_W = 230.07;
        WR_event_legend_M = 'WR (M): Hicham El Guerrouj (1998) - 206.00s';
        WR_event_legend_W = 'WR (W): Genzebe Dibaba (2015) - 230.07s';
        best_age_event = 26;  
        F = F_run;
elseif contains(event,"5000m")
        event_string = '5000m';
        title_event = '5000m PB progression';
        units_event = 'seconds';
        WR_event_M = 755.36; 
        WR_event_W = 846.62;
        WR_event_legend_M = 'WR (M): Joshua Cheptegei (2020) - 755.36s';
        WR_event_legend_W = 'WR (W): Letesenbet Gidey (2020) - 846.62s';
        best_age_event = 25;  
        F = F_run;
elseif contains(event,"10000m")
        event_string = '10000m';
        title_event = '10000m PB progression';
        units_event = 'seconds';
        WR_event_M = 1571.00; 
        WR_event_W = 1757.45;
        WR_event_legend_M = 'WR (M): Joshua Cheptegei (2020) - 1571.00s';
        WR_event_legend_W = 'WR (W): Almaz Ayana (2016) - 1757.45s';
        best_age_event = 26;  
        F = F_run;
elseif contains(event,"marathon")
        event_string = 'marathon';
        title_event = 'marathon PB progression';
        units_event = 'seconds';
        WR_event_M = 7299; 
        WR_event_W = 8044;
        WR_event_legend_M = 'WR (M): Eliud Kipchoge (2019) - 7299s';
        WR_event_legend_W = 'WR (W): Brigid Kosgei (2019) - 8044s';
        best_age_event = 33;  
        F = F_run;
elseif contains(event,"100mh/110mh")
        event_string = '100mh/110mh';
        title_event = '100mh/110mh PB progression';
        units_event = 'seconds';
        WR_event_M = 12.80; 
        WR_event_W = 12.20;
        WR_event_legend_M = 'WR (M): Aries Merritt (2012) - 12.80s';
        WR_event_legend_W = 'WR (W): Kendra Harrison (2016) - 12.20s';
        best_age_event = 27;  
        F = F_run;
elseif contains(event,"400mh")
        event_string = '400mh';
        title_event = '400mh PB progression';
        units_event = 'seconds';
        WR_event_M = 46.78; 
        WR_event_W = 52.16;
        WR_event_legend_M = 'WR (M): Kevin Young (1992) - 46.78s';
        WR_event_legend_W = 'WR (W): Dalilah Muhammad (2019) - 52.16s';
        best_age_event = 26;  
        F = F_run;
elseif contains(event,"3000ms")
        event_string = '3000ms';
        title_event = '3000ms PB progression';
        units_event = 'seconds';
        WR_event_M = 473.63; 
        WR_event_W = 524.30;
        WR_event_legend_M = 'WR (M): Saif Saaeed Shaheen (2004) - 473.63s';
        WR_event_legend_W = 'WR (W): Beatrice Chepkoech (2018) - 524.30s';
        best_age_event = 25;  
        F = F_run;
elseif contains(event,"high jump")
        event_string = 'high jump';
        title_event = 'high jump PB progression';
        units_event = 'cm';
        WR_event_M = 245; 
        WR_event_W = 209;
        WR_event_legend_M = 'WR (M): Javier Sotomayor (1993) - 245cm';
        WR_event_legend_W = 'WR (W): Stefka Kostadinova (1987) - 209cm';
        best_age_event = 26;  
        F = F_other;
elseif contains(event,"long jump")
        event_string = 'long jump';
        title_event = 'long jump PB progression';
        units_event = 'cm';
        WR_event_M = 895; 
        WR_event_W = 752;
        WR_event_legend_M = 'WR (M): Mike Powell (1991) - 895cm';
        WR_event_legend_W = 'WR (W): Galina Chistyakova (1988) - 752cm';
        best_age_event = 26;  
        F = F_other;
elseif contains(event,"triple jump")
        event_string = 'triple jump';
        title_event = 'triple jump PB progression';
        units_event = 'cm';
        WR_event_M = 1829; 
        WR_event_W = 1550;
        WR_event_legend_M = 'WR (M): Jonathan Edwards(1995) - 1829cm';
        WR_event_legend_W = 'WR (W): Inessa Kravets (1995) - 1550cm';
        best_age_event = 25;  
        F = F_other;
elseif contains(event,"pole vault")
        event_string = 'pole vault';
        title_event = 'pole vault PB progression';
        units_event = 'cm';
        WR_event_M = 618; 
        WR_event_W = 506;
        WR_event_legend_M = 'WR (M): Armand Duplantis (2020) - 618cm';
        WR_event_legend_W = 'WR (W): Yelena Isinbayeva (2009) - 506cm';
        best_age_event = 26;  
        F = F_other;
elseif contains(event,"shot put")
        event_string = 'shot put';
        title_event = 'shot put PB progression';
        units_event = 'cm';
        WR_event_M = 2312; 
        WR_event_W = 2263;
        WR_event_legend_M = 'WR (M): Randy Barnes (1990) - 2312cm';
        WR_event_legend_W = 'WR (W): Natalya Lisovskaya (1987) - 2263cm';
        best_age_event = 27;  
        F = F_other;
elseif contains(event,"javelin throw")
        event_string = 'javelin throw';
        title_event = 'javelin throw PB progression';
        units_event = 'cm';
        WR_event_M = 9848; 
        WR_event_W = 7228;
        WR_event_legend_M = 'WR (M): Jan Železný (1996) - 9848cm';
        WR_event_legend_W = 'WR (W): Barbora Špotáková (2008) - 7228cm';
        best_age_event = 27;  
        F = F_other;
elseif contains(event,"discus throw")
        event_string = 'discus throw';
        title_event = 'discus throw PB progression';
        units_event = 'cm';
        WR_event_M = 7408; 
        WR_event_W = 7680;
        WR_event_legend_M = 'WR (M): Jürgen Schult (1986) - 7408cm';
        WR_event_legend_W = 'WR (W): Gabriele Reinsch (1988) - 7680cm';
        best_age_event = 28;  
        F = F_other;
elseif contains(event,"hammer throw")
        event_string = 'hammer throw';
        title_event = 'hammer throw PB progression';
        units_event = 'cm';
        WR_event_M = 8674; 
        WR_event_W = 8298;
        WR_event_legend_M = 'WR (M): Yuriy Sedykh (1986) - 8674cm';
        WR_event_legend_W = 'WR (W): Anita Włodarczyk (2016) - 8298cm';
        best_age_event = 26;  
        F = F_other;
elseif contains(event,"decathlon/heptathlon")
        event_string = 'decathlon/heptathlon';
        title_event = 'decathlon/heptathlon PB progression';
        units_event = 'points';
        WR_event_M = 9126; 
        WR_event_W = 8358;
        WR_event_legend_M = 'WR (M): Kevin Mayer (2018) - 9126pt';
        WR_event_legend_W = 'WR (W): Austra Skujytė (2005) -8358pt';
        best_age_event = 26;  
        F = F_other;
elseif contains(event,"20km walk")
        event_string = '20km walk';
        title_event = '20km walk PB progression';
        units_event = 'seconds';
        WR_event_M = 4596; 
        WR_event_W = 5078;
        WR_event_legend_M = 'WR (M): Yusuke Suzuki (2015) - 4596s';
        WR_event_legend_W = 'WR (W): Liu Hong (2015) - 5078s';
        best_age_event = 27;  
        F = F_run;
elseif contains(event,"50km walk")
        event_string = '50km walk';
        title_event = '50km walk PB progression';
        units_event = 'seconds';
        WR_event_M = 12753; 
        WR_event_W = 14355;
        WR_event_legend_M = 'WR (M): Yohann Diniz (2014) - 12753s';
        WR_event_legend_W = 'WR (W): Liu Hong (2019) - 14355s';
        best_age_event = 27;  
        F = F_run;
end

best_age_display = sprintf('The estimated peak performance age for the %s event is %i years', event_string, best_age_event);
disp(best_age_display)
WR_string_M = sprintf('The world record (for men) of this event is %s\nWill you beat it?', WR_event_legend_M);
disp(WR_string_M)
WR_string_W = sprintf('The world record (for women) of this event is %s\nWill you beat it?', WR_event_legend_W);
disp(WR_string_W)