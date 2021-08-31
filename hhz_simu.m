function hhz_simu(handles)
global hjia_x0 hyi_x0 h_time
%����ֵ��
tspan=[0,h_time];
x0=[hjia_x0,hyi_x0];
[t,y]=ode45('hhz_odefunc',tspan,x0);

set(handles.h_check,'Enable','off');
set(handles.h_back,'Enable','off');
set(handles.h_victory,'Enable','off');

xlabel(handles.h_curves_diagram, '����ʱ��T'); 
ylabel(handles.h_curves_diagram, '����');
title(handles.h_curves_diagram, '������ʱ��ı仯');
k1=0;
k2=0;
%ͳ�ƴ���0�ĸ���
for i=1:length(t)
    if(y(i,1)>=1)
        k1=k1+1;
    else
        break;
    end
end
for i=1:length(t)
    if(y(i,2)>=1)
        k2=k2+1;
    else
        break;
    end
end
k=min(k1,k2);
%�ж���һ��ս�ܣ���һ����ʤ
if(k1<k2)
    y(k1+1:end,1)=0;
    y(k1+1:end,2)=y(k1,2);
else
    y(k2+1:end,2)=0;
    y(k2+1:end,1)=y(k2,1);
end
%��̬����
n_frames = size(t, 1); 
    for k = 1:n_frames
        % Plot the curves diagram
        hold on;
        cla(handles.h_curves_diagram);
        plot(handles.h_curves_diagram, t(1:k), y(1:k, 1), 'Color', 'r');
        plot(handles.h_curves_diagram, t(1:k), y(1:k, 2), 'Color', 'b');
        axis(handles.h_curves_diagram, [0, max(t), 0, max(max([y(:, 1), y(:, 2)]))]);
        legend(handles.h_curves_diagram, '�׷�����', '�ҷ�����');
        
        % Plot the pie diagram
        cla(handles.h_pie_diagram);
        pie3(handles.h_pie_diagram, [max(y(k, 1), 1e-6), max(y(k, 2), 1e-6)]); 
        legend(handles.h_pie_diagram, '�׷�����', '�ҷ�����');
        
        % Plot the histogram
        cla(handles.h_hist_diagram);
        b = bar(handles.h_hist_diagram, ...
            categorical({'�ҷ�����', '�׷�����'}), ...
            [max(y(k, 2), 1e-6),max(y(k, 1), 1e-6) ]);
        b.FaceColor = 'flat';
        b.CData(1, :) = [1, 0, 0];
        b.CData(2, :) = [0, 1, 0];
        ymax = max(max(y));
        set(handles.h_hist_diagram, 'YLim', [0, ymax]);

        pause(0.001);
    end
set(handles.h_check,'Enable','on');
set(handles.h_back,'Enable','on');
set(handles.h_victory,'Enable','on');

