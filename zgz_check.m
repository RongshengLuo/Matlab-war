function zgz_check(handles)
%声明全局变量
global jia_x0 jia_r jia_p jia_alpha jia_yuan yi_x0 yi_r yi_p yi_alpha yi_yuan time
syms t
%读取甲方参数
jia_x0=str2double(get(handles.jia_x0,'string'));
jia_r=str2double(get(handles.jia_r,'string'));
jia_p=str2double(get(handles.jia_p,'string'));
jia_alpha=str2double(get(handles.jia_alpha,'string'));
time=str2double(get(handles.time,'string'));
flag1=0;
flag2=0;
%判断输入的增援率是常数还是函数
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
%读取乙方数据
yi_x0=str2double(get(handles.yi_x0,'string'));
yi_r=str2double(get(handles.yi_r,'string'));
yi_p=str2double(get(handles.yi_p,'string'));
yi_alpha=str2double(get(handles.yi_alpha,'string'));
flag_yi=contains(get(handles.yi_yuan,'string'),'t');
%判断输入的增援率是常数还是函数
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
%判断输入的参数是否合理
     if(isempty(handles.jia_x0)||isempty(handles.jia_r)||isempty(handles.jia_p)||isempty(handles.jia_alpha)||isempty(handles.yi_x0)||isempty(handles.yi_r)||isempty(handles.yi_p)||isempty(handles.yi_alpha)||isempty(handles.time))
         msgbox('输入参数不能为空', 'Error','error');
     elseif(isnan(jia_x0)||isnan(jia_r)||isnan(jia_p)||isnan(jia_alpha)||isnan(yi_x0)||isnan(yi_r)||isnan(yi_p)||isnan(yi_alpha)||isnan(time)||flag1==1||flag2==1)
         msgbox('输入参数不符合要求', 'Error','error');
     elseif (jia_x0 < 0 || jia_r < 0 || jia_p < 0 || jia_alpha < 0 || yi_x0 < 0 || yi_r < 0 || yi_p <0||yi_alpha<0||time<0||flag1==2||flag2==2)
        msgbox('输入参数不能小于0', 'Error','error');
     elseif(jia_r>=1||jia_p>=1||yi_r>=1||yi_p>=1)
         msgbox('射击率和命中率应该在0~1之间', 'Error','error');
    else
        zgz_simu(handles);
    end
end

