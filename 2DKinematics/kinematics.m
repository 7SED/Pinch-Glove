%% 
% 
%% 
clc;
clear all;
%% ADC

phi1=input('Enter the Angle of the First Arm (0-270): ');

phi2=input('Enter the Angle of the Second Arm (0-270): ');

a=[0 logspace(0,3,270)];
adc1=a(phi1+1);
adc2=a(phi2+1);
%% Inverse Kinematic


seg1=10;
seg2=6;

phiprime1=find(a==adc1)-1;
phiprime2=find(a==adc2)-1;

disp (' ');
disp ('X is the Horizontal Location.');
disp ('Y is the Vertical Location.');

if phi1+phi2<90&&phi1<=90
    x=seg1*cosd(phi1)-seg2*sind(90-phi1-phi2)
    y=seg1*sind(phi1)-seg2*cosd(90-phi1-phi2)
    
    elseif phi1+phi2>=90&&phi1+phi2<=180&&phi1<=90
        x=seg1*cosd(phi1)+seg2*sind(phi1+phi2-90)
        y=seg1*sind(phi1)-seg2*cosd(phi1+phi2-90)

        elseif phi1+phi2>180&&phi1+phi2<=270&&phi1<=90
            x=seg1*cosd(phi1)+seg2*cosd(phi1+phi2-180)
            y=seg1*sind(phi1)+seg2*sind(phi1+phi2-180)

            elseif phi1+phi2>270&&phi1+phi2<=360&&phi1<=90
                x=seg1*cosd(phi1)-seg2*sind(phi1+phi2-270)
                y=seg1*sind(phi1)+seg2*cosd(phi1+phi2-270)

                elseif phi1+phi2<180&&phi1<=180&&phi1>90
                    x=-seg1*cosd(180-phi1)+seg2*cosd(180-phi1-phi2)
                    y=seg1*sind(180-phi1)-seg2*sind(180-phi1-phi2)

                    elseif phi1+phi2>=180&&phi1+phi2<=270&&phi1<=180&&phi1>90
                        x=-seg1*cosd(180-phi1)+seg2*cosd(phi1+phi2-180)
                        y=seg1*sind(180-phi1)+seg2*sind(phi1+phi2-180)

                        elseif phi1+phi2>270&&phi1+phi2<=360&&phi1<=180&&phi1>90
                            x=-seg1*cosd(180-phi1)-seg2*sind(phi1+phi2-270)
                            y=seg1*sind(180-phi1)+seg2*cosd(phi1+phi2-270)

                    elseif phi1+phi2>360&&phi1+phi2<=450&&phi1<=180&&phi1>90
                        x=-seg1*cosd(180-phi1)-seg2*cosd(phi1+phi2-360)
                        y=seg1*sind(180-phi1)-seg2*sind(phi1+phi2-360)

                elseif phi1+phi2<270&&phi1<=270&&phi1>180
                    x=-seg1*cosd(phi1-180)+seg2*sind(270-phi1-phi2)
                    y=-seg1*sind(phi1-180)+seg2*cosd(270-phi1-phi2)
            elseif phi1+phi2>=270&&phi1+phi2<=360&&phi1<=270&&phi1>180
                x=-seg1*cosd(phi1-180)-seg2*sind(phi1+phi2-270)
                y=-seg1*sind(phi1-180)+seg2*cosd(phi1+phi2-270)

        elseif phi1+phi2>360&&phi1+phi2<=450&&phi1<=270&&phi1>180
            x=-seg1*cosd(phi1-180)-seg2*cosd(phi1+phi2-360)
            y=-seg1*sind(phi1-180)-seg2*sind(phi1+phi2-360)

    elseif phi1+phi2>450&&phi1+phi2<=540&&phi1<=270&&phi1>180
        x=-seg1*cosd(phi1-180)+seg2*sind(phi1+phi2-450)
        y=-seg1*sind(phi1-180)-seg2*cosd(phi1+phi2-450)
end

plot (x,y);
