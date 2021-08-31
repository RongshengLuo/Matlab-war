function varargout = yjz(varargin)
% YJZ MATLAB code for yjz.fig
%      YJZ, by itself, creates a new YJZ or raises the existing
%      singleton*.
%
%      H = YJZ returns the handle to a new YJZ or the handle to
%      the existing singleton*.
%
%      YJZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YJZ.M with the given input arguments.
%
%      YJZ('Property','Value',...) creates a new YJZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before yjz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to yjz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help yjz

% Last Modified by GUIDE v2.5 14-Dec-2020 23:12:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @yjz_OpeningFcn, ...
                   'gui_OutputFcn',  @yjz_OutputFcn, ...
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


% --- Executes just before yjz is made visible.
function yjz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to yjz (see VARARGIN)

% Choose default command line output for yjz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes yjz wait for user response (see UIRESUME)
% uiwait(handles.yjz_m);


% --- Outputs from this function are returned to the command line.
function varargout = yjz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function yjia_x0_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_x0 as text
%        str2double(get(hObject,'String')) returns contents of yjia_x0 as a double


% --- Executes during object creation, after setting all properties.
function yjia_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yjia_r_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_r as text
%        str2double(get(hObject,'String')) returns contents of yjia_r as a double


% --- Executes during object creation, after setting all properties.
function yjia_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yjia_sx_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_sx as text
%        str2double(get(hObject,'String')) returns contents of yjia_sx as a double


% --- Executes during object creation, after setting all properties.
function yjia_sx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yjia_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_yuan as text
%        str2double(get(hObject,'String')) returns contents of yjia_yuan as a double


% --- Executes during object creation, after setting all properties.
function yjia_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yjia_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_alpha as text
%        str2double(get(hObject,'String')) returns contents of yjia_alpha as a double


% --- Executes during object creation, after setting all properties.
function yjia_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_x0_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_x0 as text
%        str2double(get(hObject,'String')) returns contents of yyi_x0 as a double


% --- Executes during object creation, after setting all properties.
function yyi_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_r_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_r as text
%        str2double(get(hObject,'String')) returns contents of yyi_r as a double


% --- Executes during object creation, after setting all properties.
function yyi_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_sx_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_sx as text
%        str2double(get(hObject,'String')) returns contents of yyi_sx as a double


% --- Executes during object creation, after setting all properties.
function yyi_sx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_yuan as text
%        str2double(get(hObject,'String')) returns contents of yyi_yuan as a double


% --- Executes during object creation, after setting all properties.
function yyi_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_alpha as text
%        str2double(get(hObject,'String')) returns contents of yyi_alpha as a double


% --- Executes during object creation, after setting all properties.
function yyi_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in y_check.
function y_check_Callback(hObject, eventdata, handles)
% hObject    handle to y_check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
yjz_check(handles);


function y_time_Callback(hObject, eventdata, handles)
% hObject    handle to y_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_time as text
%        str2double(get(hObject,'String')) returns contents of y_time as a double


% --- Executes during object creation, after setting all properties.
function y_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yjia_s_Callback(hObject, eventdata, handles)
% hObject    handle to yjia_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yjia_s as text
%        str2double(get(hObject,'String')) returns contents of yjia_s as a double


% --- Executes during object creation, after setting all properties.
function yjia_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yjia_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyi_s_Callback(hObject, eventdata, handles)
% hObject    handle to yyi_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyi_s as text
%        str2double(get(hObject,'String')) returns contents of yyi_s as a double


% --- Executes during object creation, after setting all properties.
function yyi_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyi_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when user attempts to close yjz_m.
function yjz_m_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to yjz_m (see GCBO)
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


% --- Executes on button press in y_back.
function y_back_Callback(hObject, eventdata, handles)
% hObject    handle to y_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%返回主界面，关闭当前界面
delete(handles.yjz_m);
welcome(handles);


% --- Executes on button press in y_victory.
function y_victory_Callback(hObject, eventdata, handles)
% hObject    handle to y_victory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%查看甲乙双方获胜条件
y_victory(handles);
