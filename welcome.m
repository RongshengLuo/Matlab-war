function varargout = welcome(varargin)
% WELCOME MATLAB code for welcome.fig
%      WELCOME, by itself, creates a new WELCOME or raises the existing
%      singleton*.
%
%      H = WELCOME returns the handle to a new WELCOME or the handle to
%      the existing singleton*.
%
%      WELCOME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WELCOME.M with the given input arguments.
%
%      WELCOME('Property','Value',...) creates a new WELCOME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before welcome_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to welcome_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help welcome

% Last Modified by GUIDE v2.5 13-Dec-2020 23:17:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @welcome_OpeningFcn, ...
                   'gui_OutputFcn',  @welcome_OutputFcn, ...
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


% --- Executes just before welcome is made visible.
function welcome_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to welcome (see VARARGIN)
img=imread('welcome.jpg');
imshow(img,'Parent',handles.axes1);
option=0;
handles.option=option;
% Choose default command line output for welcome
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes welcome wait for user response (see UIRESUME)
% uiwait(handles.welcome_m);


% --- Outputs from this function are returned to the command line.
function varargout = welcome_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in zgz.
function zgz_Callback(hObject, eventdata, handles)
% hObject    handle to zgz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of zgz
%choose regular war model
set(handles.zgz,'Value',1);
set(handles.yjz,'Value',0);
set(handles.hhz,'Value',0);
handles.option=1;
guidata(hObject, handles);

% --- Executes on button press in yjz.
function yjz_Callback(hObject, eventdata, handles)
% hObject    handle to yjz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of yjz
%choose Guerrilla warfare model
set(handles.zgz,'Value',0);
set(handles.yjz,'Value',1);
set(handles.hhz,'Value',0);
handles.option=2;
guidata(hObject, handles);

% --- Executes on button press in hhz.
function hhz_Callback(hObject, eventdata, handles)
% hObject    handle to hhz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hhz
%choose Hybrid war model
set(handles.zgz,'Value',0);
set(handles.yjz,'Value',0);
set(handles.hhz,'Value',1);
handles.option=3;
guidata(hObject, handles);


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%enter the corresponding model
switch handles.option
    case 1
        set(handles.zgz,'Value',0);
        set(handles.welcome_m,'Visible','off');
        zgz(handles);
    case 2
         set(handles.yjz,'Value',0);
        set(handles.welcome_m,'Visible','off');
        yjz(handles);
    case 3
         set(handles.hhz,'Value',0);
        set(handles.welcome_m,'Visible','off');
        hhz(handles);
end


% --- Executes when user attempts to close welcome_m.
function welcome_m_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to welcome_m (see GCBO)
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
