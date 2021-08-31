function yjz_simu(handles)
global yjia_x0 yyi_x0 y_time
%求数值解
tspan=[0,y_time];
x0=[yjia_x0,yyi_x0];
[t,y]=ode45('yjz_odefunc',tspan,x0);

set(handles.y_check,'Enable','off');
set(handles.y_back,'Enable','off');
set(handles.y_victory,'Enable','off');

xlabel(handles.y_curves_diagram, '仿真时间T'); 
ylabel(handles.y_curves_diagram, '人数');
title(handles.y_curves_diagram, '人数随时间的变化');
k1=0;
k2=0;
%统计大于0的个数
for i=1:length(t)
    if(y(i,1)>=0.5)
        k1=k1+1;
    else
        break;
    end
end
for i=1:length(t)
    if(y(i,2)>=0.5)
        k2=k2+1;
    else
        break;
    end
end
k=min(k1,k2);
%判断哪一方战败，哪一方获胜
if(k1<k2)
    y(k1+1:end,1)=0;
    y(k1+1:end,2)=y(k1,2);
else
    y(k2+1:end,2)=0;
    y(k2+1:end,1)=y(k2,1);
end
%动态仿真
n_frames = size(t, 1); 
    for k = 1:n_frames
        % Plot the curves diagram
        hold on;
        cla(handles.y_curves_diagram);
        plot(handles.y_curves_diagram, t(1:k), y(1:k, 1), 'Color', 'r');
        plot(handles.y_curves_diagram, t(1:k), y(1:k, 2), 'Color', 'b');
        axis(handles.y_curves_diagram, [0, max(t), 0, max(max([y(:, 1), y(:, 2)]))]);
        legend(handles.y_curves_diagram, '甲方人数', '乙方人数');
        
        % Plot the pie diagram
        cla(handles.y_pie_diagram);
        pie3(handles.y_pie_diagram, [max(y(k, 1), 1e-6), max(y(k, 2), 1e-6)]); 
        legend(handles.y_pie_diagram, '甲方人数', '乙方人数');
        
        % Plot the histogram
        cla(handles.y_hist_diagram);
        b = bar(handles.y_hist_diagram, ...
            categorical({'乙方人数', '甲方人数'}), ...
            [max(y(k, 2), 1e-6),max(y(k, 1), 1e-6) ]);
        b.FaceColor = 'flat';
        b.CData(1, :) = [1, 0, 0];
        b.CData(2, :) = [0, 1, 0];
        ymax = max(max(y));
        set(handles.y_hist_diagram, 'YLim', [0, ymax]);

        pause(0.001);
    end
set(handles.y_check,'Enable','on');
set(handles.y_back,'Enable','on');
set(handles.y_victory,'Enable','on');

