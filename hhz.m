function varargout = hhz(varargin)
% HHZ MATLAB code for hhz.fig
%      HHZ, by itself, creates a new HHZ or raises the existing
%      singleton*.
%
%      H = HHZ returns the handle to a new HHZ or the handle to
%      the existing singleton*.
%
%      HHZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HHZ.M with the given input arguments.
%
%      HHZ('Property','Value',...) creates a new HHZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hhz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hhz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hhz

% Last Modified by GUIDE v2.5 14-Dec-2020 23:33:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hhz_OpeningFcn, ...
                   'gui_OutputFcn',  @hhz_OutputFcn, ...
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


% --- Executes just before hhz is made visible.
function hhz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hhz (see VARARGIN)

% Choose default command line output for hhz
handles.output = hObject;
jia_r=str2double(get(handles.hjia_r,'string'));
jia_p=str2double(get(handles.hjia_p,'string'));
 var=jia_r*jia_p;
 set(handles.hyi_dec,'string',num2str(var));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hhz wait for user response (see UIRESUME)
% uiwait(handles.hhz_m);


% --- Outputs from this function are returned to the command line.
function varargout = hhz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function hjia_x0_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_x0 as text
%        str2double(get(hObject,'String')) returns contents of hjia_x0 as a double


% --- Executes during object creation, after setting all properties.
function hjia_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hjia_r_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_r as text
%        str2double(get(hObject,'String')) returns contents of hjia_r as a double
jia_r=str2double(get(handles.hjia_r,'string'));
jia_p=str2double(get(handles.hjia_p,'string'));
 var=jia_r*jia_p;
 set(handles.hyi_dec,'string',num2str(var));

% --- Executes during object creation, after setting all properties.
function hjia_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hjia_p_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_p as text
%        str2double(get(hObject,'String')) returns contents of hjia_p as a double
jia_r=str2double(get(handles.hjia_r,'string'));
jia_p=str2double(get(handles.hjia_p,'string'));
 var=jia_r*jia_p;
 set(handles.hyi_dec,'string',num2str(var));

% --- Executes during object creation, after setting all properties.
function hjia_p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hjia_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_yuan as text
%        str2double(get(hObject,'String')) returns contents of hjia_yuan as a double


% --- Executes during object creation, after setting all properties.
function hjia_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hjia_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_alpha as text
%        str2double(get(hObject,'String')) returns contents of hjia_alpha as a double


% --- Executes during object creation, after setting all properties.
function hjia_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_x0_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_x0 as text
%        str2double(get(hObject,'String')) returns contents of hyi_x0 as a double


% --- Executes during object creation, after setting all properties.
function hyi_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_r_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_r as text
%        str2double(get(hObject,'String')) returns contents of hyi_r as a double


% --- Executes during object creation, after setting all properties.
function hyi_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_sx_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_sx as text
%        str2double(get(hObject,'String')) returns contents of hyi_sx as a double


% --- Executes during object creation, after setting all properties.
function hyi_sx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_yuan_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_yuan as text
%        str2double(get(hObject,'String')) returns contents of hyi_yuan as a double


% --- Executes during object creation, after setting all properties.
function hyi_yuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_yuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_alpha as text
%        str2double(get(hObject,'String')) returns contents of hyi_alpha as a double


% --- Executes during object creation, after setting all properties.
function hyi_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in h_check.
function h_check_Callback(hObject, eventdata, handles)
% hObject    handle to h_check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hhz_check(handles);


function h_time_Callback(hObject, eventdata, handles)
% hObject    handle to h_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h_time as text
%        str2double(get(hObject,'String')) returns contents of h_time as a double


% --- Executes during object creation, after setting all properties.
function h_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hjia_s_Callback(hObject, eventdata, handles)
% hObject    handle to hjia_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hjia_s as text
%        str2double(get(hObject,'String')) returns contents of hjia_s as a double


% --- Executes during object creation, after setting all properties.
function hjia_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hjia_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hyi_dec_Callback(hObject, eventdata, handles)
% hObject    handle to hyi_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hyi_dec as text
%        str2double(get(hObject,'String')) returns contents of hyi_dec as a double


% --- Executes during object creation, after setting all properties.
function hyi_dec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hyi_dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when user attempts to close hhz_m.
function hhz_m_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to hhz_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
selection = questdlg('是否退出仿真图形界面？', ...
                    '提示', ...
                    'Yes','No','No'); 
switch selection
       case 'Yes'
           delete(hObject);
       case 'No'
           return 
end


% --- Executes on button press in h_back.
function h_back_Callback(hObject, eventdata, handles)
% hObject    handle to h_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%返回主界面，关闭当前界面
delete(handles.hhz_m);
welcome(handles);


% --- Executes on button press in h_victory.
function h_victory_Callback(hObject, eventdata, handles)
% hObject    handle to h_victory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%查看甲乙双方获胜条件
h_victory(handles);
