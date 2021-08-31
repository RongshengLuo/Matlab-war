function varargout = y_victory(varargin)
% Y_VICTORY MATLAB code for y_victory.fig
%      Y_VICTORY, by itself, creates a new Y_VICTORY or raises the existing
%      singleton*.
%
%      H = Y_VICTORY returns the handle to a new Y_VICTORY or the handle to
%      the existing singleton*.
%
%      Y_VICTORY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Y_VICTORY.M with the given input arguments.
%
%      Y_VICTORY('Property','Value',...) creates a new Y_VICTORY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before y_victory_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to y_victory_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help y_victory

% Last Modified by GUIDE v2.5 14-Dec-2020 20:18:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @y_victory_OpeningFcn, ...
                   'gui_OutputFcn',  @y_victory_OutputFcn, ...
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


% --- Executes just before y_victory is made visible.
function y_victory_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to y_victory (see VARARGIN)

% Choose default command line output for y_victory
handles.output = hObject;
%显示甲乙双方获胜的条件和相轨线
img1=imread('yjz_1.png');
imshow(img1,'Parent',handles.yjz_1);
img2=imread('yjz_2.png');
imshow(img2,'Parent',handles.yjz_2);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes y_victory wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = y_victory_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
