function varargout = zgz(varargin)
% ZGZ MATLAB code for zgz.fig
%      ZGZ, by itself, creates a new ZGZ or raises the existing
%      singleton*.
%
%      H = ZGZ returns the handle to a new ZGZ or the handle to
%      the existing singleton*.
%
%      ZGZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZGZ.M with the given input arguments.
%
%      ZGZ('Property','Value',...) creates a new ZGZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before zgz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to zgz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help zgz

% Last Modified by GUIDE v2.5 14-Dec-2020 19:04:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zgz_OpeningFcn, ...
                   'gui_OutputFcn',  @zgz_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before zgz is made visible.
function zgz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zgz (see VARARGIN)

% Choose default command line output for zgz
%caculate jia_dec and yi_dec
handles.output = hObject;
jia_r=str2double(get(handles.jia_r,'string'));
 jia_p=str2double(get(handles.jia_p,'string'));
 var=jia_r*jia_p;
 set(handles.jia_dec,'string',num2str(var));
 
 yi_r=str2double(get(handles.yi_r,'string'));
 yi_p=str2double(get(handles.yi_p,'string'));
 var=yi_r*yi_p;
 set(handles.yi_dec,'string',num2str(var));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zgz wait for user response (see UIRESUME)
% uiwait(handles.zgz_m);


% --- Outputs from this function are returned to the command line.
function varargout = zgz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function jia_x0_Callback(hObject, eventdata, handles)
% hObject    handle to jia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_x0 as text
%        str2double(get(hObject,'String')) returns contents of jia_x0 as a double


% --- Executes during object creation, after setting all properties.
function jia_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jia_r_Callback(hObject, eventdata, handles)
% hObject    handle to jia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_r as text
%        str2double(get(hObject,'String')) returns contents of jia_r as a double
%caculate jia_dec
 jia_r=str2double(get(handles.jia_r,'string'));
 jia_p=str2double(get(handles.jia_p,'string'));
 var=jia_r*jia_p;
 set(handles.jia_dec,'string',num2str(var));

% --- Executes during object creation, after setting all properties.
function jia_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jia_p_Callback(hObject, eventdata, handles)
% hObject    handle to jia_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_p as text
%        str2double(get(hObject,'String')) returns contents of jia_p as a double
%caculate jia_dec
 jia_r=str2double(get(handles.jia_r,'string'));
 jia_p=str2double(get(handles.jia_p,'string'));
 var=jia_r*jia_p;
 set(handles.jia_dec,'string',num2str(var));

% --- Executes during object creation, after setting all properties.
function jia_p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jia_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to jia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_yuan as text
%        str2double(get(hObject,'String')) returns contents of jia_yuan as a double


% --- Executes during object creation, after setting all properties.
function jia_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jia_dec_Callback(hObject, eventdata, handles)
% hObject    handle to jia_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_dec as text
%        str2double(get(hObject,'String')) returns contents of jia_dec as a double


% --- Executes during object creation, after setting all properties.
function jia_dec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jia_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to jia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jia_alpha as text
%        str2double(get(hObject,'String')) returns contents of jia_alpha as a double


% --- Executes during object creation, after setting all properties.
function jia_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_x0_Callback(hObject, eventdata, handles)
% hObject    handle to yi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_x0 as text
%        str2double(get(hObject,'String')) returns contents of yi_x0 as a double


% --- Executes during object creation, after setting all properties.
function yi_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_r_Callback(hObject, eventdata, handles)
% hObject    handle to yi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_r as text
%        str2double(get(hObject,'String')) returns contents of yi_r as a double
%caculate yi_dec
 yi_r=str2double(get(handles.yi_r,'string'));
 yi_p=str2double(get(handles.yi_p,'string'));
 var=yi_r*yi_p;
 set(handles.yi_dec,'string',num2str(var));
% --- Executes during object creation, after setting all properties.
function yi_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_p_Callback(hObject, eventdata, handles)
% hObject    handle to yi_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_p as text
%        str2double(get(hObject,'String')) returns contents of yi_p as a double
%caculate yi_dec
 yi_r=str2double(get(handles.yi_r,'string'));
 yi_p=str2double(get(handles.yi_p,'string'));
 var=yi_r*yi_p;
 set(handles.yi_dec,'string',num2str(var));

% --- Executes during object creation, after setting all properties.
function yi_p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_dec_Callback(hObject, eventdata, handles)
% hObject    handle to yi_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_dec as text
%        str2double(get(hObject,'String')) returns contents of yi_dec as a double


% --- Executes during object creation, after setting all properties.
function yi_dec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to yi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_yuan as text
%        str2double(get(hObject,'String')) returns contents of yi_yuan as a double


% --- Executes during object creation, after setting all properties.
function yi_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yi_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to yi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi_alpha as text
%        str2double(get(hObject,'String')) returns contents of yi_alpha as a double


% --- Executes during object creation, after setting all properties.
function yi_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zgz_check(handles);


function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when user attempts to close zgz_m.
function zgz_m_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to zgz_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) close the figure
selection = questdlg('是否退出仿真图形界面？', ...
                    '提示', ...
                    'Yes','No','No');
switch selection
       case 'Yes'
           delete(hObject);
       case 'No'
           return 
end


% --- Executes on button press in z_back.
function z_back_Callback(hObject, eventdata, handles)
% hObject    handle to z_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%返回主界面，关闭当前界面
delete(handles.zgz_m);
welcome(handles);


% --- Executes on button press in z_victory.
function z_victory_Callback(hObject, eventdata, handles)
% hObject    handle to z_victory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%查看甲乙双方获胜条件
z_victory(handles);
