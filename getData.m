function getData(imgName)

switch imgName
    
    case 'Batman.jpg'
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (40-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (100-0)./(y_L - y_O) + 0;
        
        figure; plot(x_data,y_data)
        
        set(gca, 'xlim',[0 40]);
        set(gca, 'ylim',[0,130]);
        
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
        
        figure; scatter(x_data,y_data)
        set(gca, 'xlim',[0 400]);
        set(gca, 'ylim',[-6,6]);
        
    case 'Japan.jpg'
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        
        x_data = (x(2:end)-min(x(:))) * (6-1)./(max(x(:)) - min(x(:))) + 1;
        y_data = (y(2:end)-min(y(:))) * (10-(-4))./(max(y(:)) - min(y(:))) + (-4);
        
        figure; scatter(x_data,y_data)
        set(gca, 'xlim',[1 6]);
        set(gca, 'ylim',[-4,10]);
        
    case 'Pigeons.jpg'
        im = imread(imgName);
        figure; imagesc(im); axis off
        
        [x,y] = getpts(gcf); y = -y;
        
        x_O = x(1); y_O = y(1);
        x_L = x(2); y_L = y(3);
        
        x_data = (x(4:end)-x_O) * (5-0)./(x_L - x_O) + 0;
        y_data = (y(4:end)-y_O) * (0.5-0)./(y_L - y_O) + 0;
        
        figure; plot(x_data,y_data,'o')
        set(gca, 'xlim',[0 5]);
        set(gca, 'ylim',[0,0.5]);
 
end
