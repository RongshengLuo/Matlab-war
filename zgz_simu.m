function zgz_simu(handles)
global jia_x0 yi_x0 time
%����ֵ��
tspan=[0,time];
x0=[jia_x0,yi_x0];
[t,y]=ode45('zgz_odefunc',tspan,x0);

set(handles.check,'Enable','off');
set(handles.z_back,'Enable','off');
set(handles.z_victory,'Enable','off');

xlabel(handles.curves_diagram, '����ʱ��T'); 
ylabel(handles.curves_diagram, '����');
title(handles.curves_diagram, '������ʱ��ı仯');
k1=0;
k2=0;
%��������0�ĸ���
for i=1:length(t)
    if(y(i,1)>1e-6)
        k1=k1+1;
    else
        break;
    end
end
for i=1:length(t)
    if(y(i,2)>1e-6)
        k2=k2+1;
    else
        break;
    end
end
k=min(k1,k2);
%�ж���һ����ʤ����һ��ս��
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
        cla(handles.curves_diagram);
        plot(handles.curves_diagram, t(1:k), y(1:k, 1), 'Color', 'r');
        plot(handles.curves_diagram, t(1:k), y(1:k, 2), 'Color', 'b');
        axis(handles.curves_diagram, [0, max(t), 0, max(max([y(:, 1), y(:, 2)]))]);
        legend(handles.curves_diagram, '�׷�����', '�ҷ�����');
        
        % Plot the pie diagram
        cla(handles.pie_diagram);
        pie3(handles.pie_diagram, [max(y(k, 1), 1e-6), max(y(k, 2), 1e-6)]); 
        legend(handles.pie_diagram, '�׷�����', '�ҷ�����');
        
        % Plot the histogram
        cla(handles.hist_diagram);
        b = bar(handles.hist_diagram, ...
            categorical({'�ҷ�����', '�׷�����'}), ...
            [max(y(k, 2), 1e-6),max(y(k, 1), 1e-6) ]);
        b.FaceColor = 'flat';
        b.CData(1, :) = [1, 0, 0];
        b.CData(2, :) = [0, 1, 0];
        ymax = max(max(y));
        set(handles.hist_diagram, 'YLim', [0, ymax]);

        pause(0.001);
    end


set(handles.check,'Enable','on');
set(handles.z_back,'Enable','on');
set(handles.z_victory,'Enable','on');
