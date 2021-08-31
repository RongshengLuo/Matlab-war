function yjz_check(handles)
%声明全局变量
global yjia_x0 yjia_r yjia_sx yjia_s yjia_alpha yjia_yuan yyi_x0 yyi_r yyi_sx yyi_s yyi_alpha yyi_yuan y_time
syms t
%读取甲方参数
yjia_x0=str2double(get(handles.yjia_x0,'string'));
yjia_r=str2double(get(handles.yjia_r,'string'));
yjia_sx=str2double(get(handles.yjia_sx,'string'));
yjia_s=str2double(get(handles.yjia_s,'string'));
yjia_alpha=str2double(get(handles.yjia_alpha,'string'));
y_time=str2double(get(handles.y_time,'string'));
flag1=0;
flag2=0;
%判断输入的增援率是常数还是函数
flag_yjia=contains(get(handles.yjia_yuan,'string'),'t');
if flag_yjia==1
    yjia_yuan=str2func(['@(t)',get(handles.yjia_yuan,'string')]);
else
    yjia_yuan=str2double(get(handles.yjia_yuan,'string'));
     if(isempty(get(handles.yjia_yuan,'string')))
        flag1=1;
     elseif (isnan(yjia_yuan))
         flag1=1;
     elseif (yjia_yuan< 0)
        flag1=2;
     end
end
%读取乙方数据
yyi_x0=str2double(get(handles.yyi_x0,'string'));
yyi_r=str2double(get(handles.yyi_r,'string'));
yyi_sx=str2double(get(handles.yyi_sx,'string'));
yyi_s=str2double(get(handles.yyi_s,'string'));
yyi_alpha=str2double(get(handles.yyi_alpha,'string'));
flag_yyi=contains(get(handles.yyi_yuan,'string'),'t');
%判断输入的增援率是常数还是函数
if flag_yyi==1
    yyi_yuan=str2func(['@(t)',get(handles.yyi_yuan,'string')]);
else
    yyi_yuan=str2double(get(handles.yyi_yuan,'string'));
    if(isempty(get(handles.yyi_yuan,'string')))
        flag2=1;
    elseif (isnan(yyi_yuan))
         flag2=1;
    elseif (yyi_yuan< 0)
         flag2=2;
     end
end
%判断输入的参数是否合理
     if(isempty(handles.yjia_x0)||isempty(handles.yjia_r)||isempty(handles.yjia_sx)||isempty(handles.yjia_s)||isempty(handles.yjia_alpha)||isempty(handles.yyi_x0)||isempty(handles.yyi_r)||isempty(handles.yyi_sx)||isempty(handles.yyi_s)||isempty(handles.yyi_alpha)||isempty(handles.y_time))
         msgbox('输入参数不能为空', 'Error','error')
     elseif(isnan(yjia_x0)||isnan(yjia_r)||isnan(yjia_sx)||isnan(yjia_s)||isnan(yjia_alpha)||isnan(yyi_x0)||isnan(yyi_r)||isnan(yyi_sx)||isnan(yyi_s)||isnan(yyi_alpha)||isnan(y_time)||flag1==1||flag2==1)
         msgbox('输入参数不符合要求', 'Error','error');
    elseif (yjia_x0 < 0 || yjia_r < 0 || yjia_sx < 0 ||yjia_s < 0 || yjia_alpha < 0 || yyi_x0 < 0 || yyi_r < 0 || yyi_sx <0||yyi_s <0||yyi_alpha<0||y_time<0||flag1==2||flag2==2)
         msgbox('输入参数不能小于0', 'Error','error');
     elseif(yjia_r>=1||yyi_r>=1)
         msgbox('射击率和命中率应该在0~1之间', 'Error','error');
    else
       yjz_simu(handles);
    end
end

