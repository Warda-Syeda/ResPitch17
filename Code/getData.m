function getData(imgName)  % Telling MATLAB this file is a function

% Identifying image for data extraction
switch imgName
    
    case 'Batman.jpg'
        
        % Loading image
        im = imread(imgName);
        
        % Displaying image
        figure; imagesc(im); axis off
        
        % Requesting user to mark data axis + data points
        [x,y] = getpts(gcf); y = -y;
        
        % Identifying first three points as axis points
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        % Converting pixel positions to data
        x_data = (x(4:end)-x_O) * (40-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (100-0)./(y_L - y_O) + 0;
        
        my_x_data = [1.84782608695652;1.95652173913043;2.39130434782609;2.39130434782609;2.93478260869565;3.36956521739131;3.80434782608696;4.23913043478261;4.67391304347826;5.65217391304348;6.84782608695652;7.71739130434783;8.36956521739131;8.91304347826087;9.78260869565218;10.2173913043478;11.5217391304348;13.4782608695652;15.3260869565217;17.0652173913044;18.8043478260870;20.4347826086957;21.3043478260870;21.6304347826087;22.6086956521739;23.4782608695652;25;26.5217391304348;27.1739130434783;27.8260869565217;28.3695652173913;28.9130434782609;29.5652173913044;29.8913043478261;30.1086956521739;30.4347826086957;30.9782608695652;31.4130434782609;31.5217391304348];
        my_y_data = [4.82456140350877;15.7894736842105;25.0000000000000;35.0877192982456;46.0526315789474;59.2105263157895;69.7368421052632;82.0175438596491;93.4210526315790;102.631578947368;103.508771929825;97.3684210526316;90.7894736842105;82.4561403508772;76.3157894736842;69.7368421052632;67.9824561403509;67.9824561403509;67.9824561403509;68.4210526315790;68.8596491228070;71.0526315789474;77.1929824561403;85.0877192982456;92.5438596491228;99.5614035087719;102.192982456140;99.1228070175439;93.4210526315790;84.2105263157895;75.0000000000000;65.7894736842105;52.6315789473684;43.4210526315789;32.4561403508772;21.9298245614035;14.4736842105263;7.89473684210526;0.438596491228054];
        
        % Plotting Data
        figure; plot(x_data,y_data)
        hold on
        plot(my_x_data,my_y_data,'r')
        
        legend('Govt data', 'My data')
        
        % Labelling data plot
        xlabel('Velocity profile of Batman glide')
        ylabel ('Velocity')
        title ('Trajectory of a falling Batman')
        
        % Setting axis limits
        set(gca, 'xlim',[0 40]);
        set(gca, 'ylim',[0,130]);
        
        disp('Your data is now in your current folder!')
        disp('HINT: You can find the original paper in your current folder too!')
        save('Batman_data','x_data','y_data');
        
    case 'taxi.jpg'
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        
        x_data = (x(2:end)-min(x(:))) * (400-0)./(max(x(:)) - min(x(:))) + 0;
        y_data = (y(2:end)-min(y(:))) * (6-(-6))./(max(y(:)) - min(y(:))) + (-6);
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (400-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (6-(-6))./(y_L - y_O) + (-6);
        
        my_x_data = [9.06801007556675;25.1889168765743;41.3098236775819;63.4760705289673;103.778337531486;142.065491183879;179.345088161209;207.556675062972;247.858942065491;275.062972292191;309.319899244333;343.576826196474;367.758186397985;395.969773299748];
        my_y_data = [5.27659574468085;3.91489361702128;2.93617021276596;2.08510638297872;1.31914893617021;1.31914893617021;1.36170212765957;1.40425531914894;2.25531914893617;3.02127659574468;3.78723404255319;4.42553191489362;5.14893617021277;5.82978723404255];
        
        figure; plot(x_data,y_data); 
        hold on
        plot(my_x_data,my_y_data,'r')
        
        legend('Govt data', 'My data')
        
        xlabel('Time as taxi driver')
        ylabel ('Size of Hippocampus')
        title ('Taxi drivers have more developed brains than the rest of the world!')

        
        set(gca, 'xlim',[0 400]);
        set(gca, 'ylim',[-6,6]);
        
        disp('Your data is now in your current folder!')
        disp('HINT: You can find the original paper in your current folder too!')
        save('Taxi_data','x_data','y_data');
        
    case 'Japan.jpg'
    
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (6-1)./(x_L - x_O) + 1;
        y_data = (y(4:end)-y_O) * (10-(-4))./(y_L - y_O) + (-4);
        
        my_x_data = [4.47000000000000;4.73000000000000;4.60000000000000;4.73000000000000;4.64000000000000;4.56000000000000;4.45000000000000;4.47000000000000;4.58000000000000;4.68000000000000;4.59000000000000;4.59000000000000;4.73000000000000;4.80000000000000;4.90000000000000;4.78000000000000;4.81000000000000;4.95000000000000;4.90000000000000;4.90000000000000;4.90000000000000;4.95000000000000;5;5.04000000000000;4.91000000000000;4.91000000000000;5.02000000000000;5.08000000000000;4.50000000000000;4.34000000000000;4.50000000000000;4.46000000000000;4.38000000000000;4.38000000000000;4.48000000000000;4.48000000000000;4.48000000000000;4.39000000000000;4.26000000000000;4.37000000000000;4.39000000000000;4.56000000000000;4.69000000000000;4.52000000000000;4.52000000000000;4.34000000000000;4.35000000000000;4.50000000000000;4.51000000000000;4.47000000000000;4.72000000000000;4.89000000000000;5.07000000000000;5.07000000000000;5.04000000000000;4.95000000000000];
        my_y_data = [6.58000000000000;6.71000000000000;6.71000000000000;6.67000000000000;6.40000000000000;6.40000000000000;5.86000000000000;6.22000000000000;6.22000000000000;6.08000000000000;5.99000000000000;5.81000000000000;6.13000000000000;6.76000000000000;5.90000000000000;6.53000000000000;6.04000000000000;6.04000000000000;6.26000000000000;6.40000000000000;6.76000000000000;6.80000000000000;7.03000000000000;7.12000000000000;6.04000000000000;5.50000000000000;6.13000000000000;5.81000000000000;5.90000000000000;5.59000000000000;6.17000000000000;6.67000000000000;6.71000000000000;6.98000000000000;6.98000000000000;6.80000000000000;7.12000000000000;7.12000000000000;6.98000000000000;6.80000000000000;6.62000000000000;6.26000000000000;6.35000000000000;5.68000000000000;5.50000000000000;7.30000000000000;7.12000000000000;7.25000000000000;7.30000000000000;6.44000000000000;6.49000000000000;6.31000000000000;7.07000000000000;7.48000000000000;7.61000000000000;7.79000000000000];
        
        figure; scatter(x_data,y_data)
        hold on
        scatter(my_x_data,my_y_data,'r')
        
        xlabel('Unemployment Rate')
        ylabel ('Inflation Rate')
        title ('Japan Phillips curve looks like Japan')
        
        legend('Govt data', 'My data')
        
        set(gca, 'xlim',[1 6]);
        set(gca, 'ylim',[-4,10]);
        
        disp('Your data is now in your current folder!')
        disp('HINT: You can find the original paper in your current folder too!')
        save('Japan_data','x_data','y_data');
        
    case 'Pigeons.jpg'
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (5-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (0.5-0)./(y_L - y_O) + 0;
        
        my_x_data = [0.50;1.71;2.79;3.91;5.05];
        my_y_data = [0.08;0.09;0.17;0.29;0.34];
        
        figure; plot(x_data,y_data)
        hold on
        plot(my_x_data, my_y_data)
        
        legend('Govt data', 'My data')
        
        xlabel('Painting number')
        ylabel ('Relative response')
        title ('Pigeons can discriminate bw good and bad paintings')
        
        
        set(gca, 'xlim',[0 5]);
        set(gca, 'ylim',[0,0.5]);
        
        disp('Your data is now in your current folder!')
        disp('HINT: You can find the original paper in your current folder too!')
        save('Pigeons_data','x_data','y_data');
    case 'demo.jpg'
        
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (120-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (0.9-0)./(y_L - y_O) + 0;
        
        figure; scatter(x_data,y_data)
        
        legend('My data')
        
        set(gca, 'xlim',[0 120]);
        set(gca, 'ylim',[0,0.9]);
        
        xlabel('Number of days of your belief')
        ylabel ('Probability of alien abduction')
        title ('Was I abducted by Aliens?')
        
        disp('Your data is now in your current folder!')
        disp('HINT: You can find the original paper in your current folder too!')
        save('demo_data','x_data','y_data');

        
end
