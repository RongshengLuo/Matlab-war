function zgz_check(handles)
%����ȫ�ֱ���
global jia_x0 jia_r jia_p jia_alpha jia_yuan yi_x0 yi_r yi_p yi_alpha yi_yuan time
syms t
%��ȡ�׷�����
jia_x0=str2double(get(handles.jia_x0,'string'));
jia_r=str2double(get(handles.jia_r,'string'));
jia_p=str2double(get(handles.jia_p,'string'));
jia_alpha=str2double(get(handles.jia_alpha,'string'));
time=str2double(get(handles.time,'string'));
flag1=0;
flag2=0;
%�ж��������Ԯ���ǳ������Ǻ���
flag_jia=contains(get(handles.jia_yuan,'string'),'t');
if flag_jia==1
    jia_yuan=str2func(['@(t)',get(handles.jia_yuan,'string')]);
else
    jia_yuan=str2double(get(handles.jia_yuan,'string'));
     if(isempty(get(handles.jia_yuan,'string')))
        flag1=1;
     elseif (isnan(jia_yuan))
         flag1=1;
     elseif (jia_yuan< 0)
         flag1=2;
     end
end
%��ȡ�ҷ�����
yi_x0=str2double(get(handles.yi_x0,'string'));
yi_r=str2double(get(handles.yi_r,'string'));
yi_p=str2double(get(handles.yi_p,'string'));
yi_alpha=str2double(get(handles.yi_alpha,'string'));
flag_yi=contains(get(handles.yi_yuan,'string'),'t');
%�ж��������Ԯ���ǳ������Ǻ���
if flag_yi==1
    yi_yuan=str2func(['@(t)',get(handles.yi_yuan,'string')]);
else
    yi_yuan=str2double(get(handles.yi_yuan,'string'));
    if(isempty(get(handles.yi_yuan,'string')))
        flag2=1;
    elseif (isnan(yi_yuan))
         flag2=1;
    elseif (yi_yuan< 0)
         flag2=2;
     end
end
%�ж�����Ĳ����Ƿ����
     if(isempty(handles.jia_x0)||isempty(handles.jia_r)||isempty(handles.jia_p)||isempty(handles.jia_alpha)||isempty(handles.yi_x0)||isempty(handles.yi_r)||isempty(handles.yi_p)||isempty(handles.yi_alpha)||isempty(handles.time))
         msgbox('�����������Ϊ��', 'Error','error');
     elseif(isnan(jia_x0)||isnan(jia_r)||isnan(jia_p)||isnan(jia_alpha)||isnan(yi_x0)||isnan(yi_r)||isnan(yi_p)||isnan(yi_alpha)||isnan(time)||flag1==1||flag2==1)
         msgbox('�������������Ҫ��', 'Error','error');
     elseif (jia_x0 < 0 || jia_r < 0 || jia_p < 0 || jia_alpha < 0 || yi_x0 < 0 || yi_r < 0 || yi_p <0||yi_alpha<0||time<0||flag1==2||flag2==2)
        msgbox('�����������С��0', 'Error','error');
     elseif(jia_r>=1||jia_p>=1||yi_r>=1||yi_p>=1)
         msgbox('����ʺ�������Ӧ����0~1֮��', 'Error','error');
    else
        zgz_simu(handles);
    end
end

