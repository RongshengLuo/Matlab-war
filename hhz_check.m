function hhz_check(handles)
%声明全局变量
global hjia_x0 hjia_r hjia_p hjia_alpha hjia_yuan hjia_s hyi_x0 hyi_r hyi_sx hyi_alpha hyi_yuan h_time
syms t
%读取甲方参数
hjia_x0=str2double(get(handles.hjia_x0,'string'));
hjia_r=str2double(get(handles.hjia_r,'string'));
hjia_p=str2double(get(handles.hjia_p,'string'));
hjia_s=str2double(get(handles.hjia_s,'string'));
hjia_alpha=str2double(get(handles.hjia_alpha,'string'));
h_time=str2double(get(handles.h_time,'string'));
flag1=0;
flag2=0;
%判断输入的增援率是常数还是函数
flag_hjia=contains(get(handles.hjia_yuan,'string'),'t');
if flag_hjia==1
    hjia_yuan=str2func(['@(t)',get(handles.hjia_yuan,'string')]);
else
    hjia_yuan=str2double(get(handles.hjia_yuan,'string'));
     if(isempty(get(handles.hjia_yuan,'string')))
        flag1=1;
     elseif (isnan(hjia_yuan))
         flag1=1;
     elseif (hjia_yuan< 0)
          flag1=2;
     end
end
%读取乙方数据
hyi_x0=str2double(get(handles.hyi_x0,'string'));
hyi_r=str2double(get(handles.hyi_r,'string'));
hyi_sx=str2double(get(handles.hyi_sx,'string'));
hyi_alpha=str2double(get(handles.hyi_alpha,'string'));
flag_hyi=contains(get(handles.hyi_yuan,'string'),'t');
%判断输入的增援率是常数还是函数
if flag_hyi==1
    hyi_yuan=str2func(['@(t)',get(handles.hyi_yuan,'string')]);
else
    hyi_yuan=str2double(get(handles.hyi_yuan,'string'));
    if(isempty(get(handles.hyi_yuan,'string')))
        flag2=1;
    elseif (isnan(hyi_yuan))
        flag2=1;
    elseif (hyi_yuan< 0)
        flag2=2;
     end
end
%判断输入的参数是否合理
     if(isempty(handles.hjia_x0)||isempty(handles.hjia_r)||isempty(handles.hjia_p)||isempty(handles.hjia_alpha)||isempty(handles.hjia_s)||isempty(handles.hyi_x0)||isempty(handles.hyi_r)||isempty(handles.hyi_sx)||isempty(handles.hyi_alpha)||isempty(handles.h_time))
         msgbox('输入参数不能为空', 'Error','error')
     elseif(isnan(hjia_x0)||isnan(hjia_r)||isnan(hjia_p)||isnan(hjia_s)||isnan(hjia_alpha)||isnan(hyi_x0)||isnan(hyi_r)||isnan(hyi_sx)||isnan(hyi_alpha)||isnan(h_time)||flag1==1||flag2==1)
         msgbox('输入参数不符合要求', 'Error','error');
    elseif (hjia_x0 < 0 || hjia_r < 0 || hjia_p < 0 ||hjia_s < 0 || hjia_alpha < 0 || hyi_x0 < 0 || hyi_r < 0 || hyi_sx <0||hyi_alpha<0||h_time<0||flag1==2||flag2==2)
        msgbox('输入参数不能小于0', 'Error','error');
     elseif(hjia_r>=1||hjia_p>=1||hyi_r>=1)
         msgbox('射击率和命中率应该在0~1之间', 'Error','error');
    else
       hhz_simu(handles);
    end
end

