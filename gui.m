function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 15-Jan-2018 16:33:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;
axes(handles.axes1)
imshow('C:\Users\Casper Nirvana\Desktop\Adsýz.jpg')


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val2 = get (handles.popupmenu2,'value');

audio1 = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');
[y,fs] = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');

audio =audio1(25000:90000);

wholefile = audio;

z = audio(5000:9000);

%i harfinde sýkýtý oluyo bu i yerine yazdým
x = audio(9000:13500);

%fs nin yanýndaki y ile kariþiyor
y1 = audio(13500:17000);

a = audio(17000:19500);

c = audio(19500:22300);

n = audio(28000:31000);

k = audio(50000:53500);

e = audio(53500:60000);

l = audio(60000:63000);

val1 = get (handles.popupmenu1,'value');

if val1 == 1 && val2 == 1
    sound(wholefile,fs);

elseif val1 == 2 && val2 == 1
   sound(z,fs);

elseif val1 == 3 && val2 == 1
    sound(x,fs);

elseif val1==4   && val2 == 1
   sound(y1,fs);

elseif val1==5   && val2 == 1
    sound(a,fs);

elseif val1==6  && val2 == 1
    sound(c,fs);

elseif val1==7  && val2 == 1
    sound(n,fs);

elseif val1==8  && val2 == 1
   sound(k,fs);

elseif val1==9  && val2 == 1
  sound(e,fs);

elseif val1==10  && val2 == 1
    sound(l,fs);  
end
%burda normal ses bitiyor

if val1 == 1 && val2 == 2
    sound(abs(fft(wholefile)));

elseif val1 == 2 && val2 == 2
     sound(abs(fft(z)),fs);

elseif val1 == 3 && val2 == 2
     sound(abs(fft(x)),fs);

elseif val1==4   && val2 == 2
     sound(abs(fft(y1)),fs);

elseif val1==5   && val2 == 2
     sound(abs(fft(a)),fs);

elseif val1==6  && val2 == 2
     sound(abs(fft(c)),fs);

elseif val1==7  && val2 == 2
     sound(abs(fft(n),fs));

elseif val1==8  && val2 == 2
     sound(abs(fft(k)),fs);

elseif val1==9  && val2 == 2
     sound(abs(fft(e)),fs);

elseif val1==10  && val2 == 2
     sound(abs(fft(l)),fs);  
end
%burda fft bitiyo

mvalue=get(handles.edit4,'String');
mvalue = str2num(mvalue);

if val1 == 1 && val2 == 3
    sound(upsample(wholefile,mvalue),fs);

elseif val1 == 2 && val2 == 3
    sound(upsample(z,mvalue),fs);

elseif val1 == 3 && val2 == 3
    sound(upsample(x,mvalue),fs);

elseif val1==4  && val2 == 3
    sound(upsample(y1,mvalue),fs);

elseif val1==5  && val2 == 3
    sound(upsample(a,mvalue),fs);

elseif val1==6 && val2 == 3
    sound(upsample(c,mvalue),fs);

elseif val1==7 && val2 == 3
    sound(upsample(n,mvalue),fs);

elseif val1==8 && val2 == 3
    sound(upsample(k,mvalue),fs);

elseif val1==9 && val2 == 3
   sound(upsample(e,mvalue),fs);

elseif val1==10 && val2 == 3
    sound(upsample(l,mvalue),fs);  
end
%burda upsample bitti

if val1 == 1 && val2 == 4
    sound(downsample(wholefile,mvalue),fs);

elseif val1 == 2 && val2 == 4
    sound(downsample(z,mvalue),fs);

elseif val1 == 3 && val2 == 4
    sound(downsample(x,mvalue),fs);

elseif val1==4  && val2 == 4
    sound(downsample(y1,mvalue),fs);

elseif val1==5  && val2 == 4
    sound(downsample(a,mvalue),fs);

elseif val1==6 && val2 == 4
    sound(downsample(c,mvalue),fs);

elseif val1==7 && val2 == 4
    sound(downsample(n,mvalue),fs);

elseif val1==8 && val2 == 4
    sound(downsample(k,mvalue),fs);

elseif val1==9 && val2 == 4
   sound(downsample(e,mvalue),fs);

elseif val1==10 && val2 == 4
    sound(downsample(l,mvalue),fs);  
end
%downsample burda bitti

if val1 == 1 && val2 == 5
   sound(flipud(wholefile),fs);

elseif val1 == 2 && val2 == 5
    sound(flipud(z),fs);

elseif val1 == 3 && val2 == 5
    sound(flipud(x),fs);

elseif val1==4   && val2 == 5
    sound(flipud(y1),fs);

elseif val1==5   && val2 == 5
    sound(flipud(a),fs);

elseif val1==6  && val2 == 5
    sound(flipud(c),fs);

elseif val1==7  && val2 == 5
   sound(flipud(n),fs);

elseif val1==8  && val2 == 5
    sound(flipud(k),fs);

elseif val1==9  && val2 == 5
    sound(flipud(e),fs);

elseif val1==10  && val2 == 5
    sound(flipud(l),fs);  
end
%burda time reverse bitiyor

if val1 == 1 && val2 == 6
    sound(-1*wholefile,fs);

elseif val1 == 2 && val2 == 6
   sound(-1*z,fs);

elseif val1 == 3 && val2 == 6
   sound(-1*x,fs);

elseif val1==4   && val2 == 6
    sound(-1*y1,fs);

elseif val1==5   && val2 == 6
   sound(-1*a,fs);

elseif val1==6  && val2 == 6
    sound(-1*c,fs);

elseif val1==7  && val2 == 6
    sound(-1*n,fs);

elseif val1==8  && val2 == 6
    sound(-1*k,fs);

elseif val1==9  && val2 == 6
    sound(-1*e,fs);

elseif val1==10  && val2 == 6
    sound(-1*l,fs);  
end
%burda inverted bitiyo


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2)
axes2=plot(0);
% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

val2 = get (handles.popupmenu2,'value');

audio1 = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');
[y,fs] = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');

audio =audio1(25000:90000);

wholefile = audio;

z = audio(5000:9000);
%i harfinde sýkýtý oluyo bu i yerine yazdým
x = audio(9000:13500);
%fs nin yanýndaki y ile kariþiyor
y1 = audio(13500:17000);
a = audio(17000:19500);

c = audio(19500:22300);

n = audio(28000:31000);

k = audio(50000:53500);

e = audio(53500:60000);

l = audio(60000:63000);

val1 = get (handles.popupmenu1,'value');
axes (handles.axes2)
if val1 == 1 && val2 == 1
    axes2=plot(wholefile);

elseif val1 == 2 && val2 == 1
    axes2=plot(z);

elseif val1 == 3 && val2 == 1
    axes2=plot(x);

elseif val1==4   && val2 == 1
    axes2=plot(y1);

elseif val1==5   && val2 == 1
    axes2=plot(a);

elseif val1==6  && val2 == 1
    axes2=plot(c);

elseif val1==7  && val2 == 1
    axes2=plot(n);

elseif val1==8  && val2 == 1
    axes2=plot(k);

elseif val1==9  && val2 == 1
    axes2=plot(e);

elseif val1==10  && val2 == 1
    axes2=plot(l);  
end
%normal grafikler için olan kýsým burda bitiyor


if val1 == 1 && val2 == 2
    axes2=plot(abs(fft(wholefile)));

elseif val1 == 2 && val2 == 2
    axes2=plot(abs(fft(z)));

elseif val1 == 3 && val2 == 2
    axes2=plot(abs(fft(x)));

elseif val1==4   && val2 == 2
    axes2=plot(abs(fft(y1)));

elseif val1==5   && val2 == 2
    axes2=plot(abs(fft(a)));

elseif val1==6  && val2 == 2
    axes2=plot(abs(fft(c)));

elseif val1==7  && val2 == 2
    axes2=plot(abs(fft(n)));

elseif val1==8  && val2 == 2
    axes2=plot(abs(fft(k)));

elseif val1==9  && val2 == 2
    axes2=plot(abs(fft(e)));

elseif val1==10  && val2 == 2
    axes2=plot(abs(fft(l)));  
end
%burda fft formu bitiyor
mvalue=get(handles.edit4,'String');
mvalue = str2num(mvalue);

if val1 == 1 && val2 == 3
    axes2=plot(upsample(wholefile,mvalue));

elseif val1 == 2 && val2 == 3
    axes2=plot(upsample(z,mvalue));

elseif val1 == 3 && val2 == 3
    axes2=plot(upsample(x,mvalue));

elseif val1==4  && val2 == 3
    axes2=plot(upsample(y1,mvalue));

elseif val1==5  && val2 == 3
    axes2=plot(upsample(a,mvalue));

elseif val1==6 && val2 == 3
    axes2=plot(upsample(c,mvalue));

elseif val1==7 && val2 == 3
    axes2=plot(upsample(n,mvalue));

elseif val1==8 && val2 == 3
    axes2=plot(upsample(k,mvalue));

elseif val1==9 && val2 == 3
    axes2=plot(upsample(e,mvalue));

elseif val1==10 && val2 == 3
    axes2=plot(upsample(l,mvalue));  
end
%burda upsampled fonksiyonu bitiyor
if val1 == 1 && val2 == 4
    axes2=plot(downsample(wholefile,mvalue));

elseif val1 == 2 && val2 == 4
    axes2=plot(downsample(z,mvalue));

elseif val1 == 3 && val2 == 4
    axes2=plot(downsample(x,mvalue));

elseif val1==4  && val2 == 4
    axes2=plot(downsample(y1,mvalue));

elseif val1==5  && val2 == 4
    axes2=plot(downsample(a,mvalue));

elseif val1==6 && val2 == 4
    axes2=plot(downsample(c,mvalue));

elseif val1==7 && val2 == 4
    axes2=plot(downsample(n,mvalue));

elseif val1==8 && val2 == 4
    axes2=plot(downsample(k,mvalue));

elseif val1==9 && val2 == 4
    axes2=plot(downsample(e,mvalue));

elseif val1==10 && val2 == 4
    axes2=plot(downsample(l,mvalue));  
end
%burda downsample bitiyo
if val1 == 1 && val2 == 5
    axes2=plot(flipud(wholefile));

elseif val1 == 2 && val2 == 5
    axes2=plot(flipud(z));

elseif val1 == 3 && val2 == 5
    axes2=plot(flipud(x));

elseif val1==4   && val2 == 5
    axes2=plot(flipud(y1));

elseif val1==5   && val2 == 5
    axes2=plot(flipud(a));

elseif val1==6  && val2 == 5
    axes2=plot(flipud(c));

elseif val1==7  && val2 == 5
    axes2=plot(flipud(n));

elseif val1==8  && val2 == 5
    axes2=plot(flipud(k));

elseif val1==9  && val2 == 5
    axes2=plot(flipud(e));

elseif val1==10  && val2 == 5
    axes2=plot(flipud(l));  
end
%time reverse burda bitti
if val1 == 1 && val2 == 6
    axes2=plot(-1*wholefile);

elseif val1 == 2 && val2 == 6
    axes2=plot(-1*z);

elseif val1 == 3 && val2 == 6
    axes2=plot(-1*x);

elseif val1==4   && val2 == 6
    axes2=plot(-1*y1);

elseif val1==5   && val2 == 6
    axes2=plot(-1*a);

elseif val1==6  && val2 == 6
    axes2=plot(-1*c);

elseif val1==7  && val2 == 6
    axes2=plot(-1*n);

elseif val1==8  && val2 == 6
    axes2=plot(-1*k);

elseif val1==9  && val2 == 6
    axes2=plot(-1*e);

elseif val1==10  && val2 == 6
    axes2=plot(-1*l);  
end
%burda inverted bitiyo

    


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=imread('C:\Users\Casper Nirvana\Desktop\Adsýz.jpg');
a=imrotate(img,90);
imshow(a);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

img=imread('C:\Users\Casper Nirvana\Desktop\Adsýz.jpg');
a=imrotate(img,-90);
imshow(a);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=imread('C:\Users\Casper Nirvana\Desktop\Adsýz.jpg');
a=rgb2gray(img);
imshow(a);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=imread('C:\Users\Casper Nirvana\Desktop\Adsýz.jpg');
imshow(img);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
val2 = get (handles.popupmenu2,'value');

audio1 = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');
[y,fs] = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');

audio =audio1(25000:90000);

wholefile = audio;

z = audio(5000:9000);
%i harfinde sýkýtý oluyor bu i yerine yazdým
x = audio(9000:13500);
%fs nin yanýndaki y ile kariþiyor
y1 = audio(13500:17000);
a = audio(17000:19500);

c = audio(19500:22300);

n = audio(28000:31000);

k = audio(50000:53500);

e = audio(53500:60000);

l = audio(60000:63000);

val1 = get (handles.popupmenu1,'value');
axes (handles.axes2)
if val1 == 1 && val2 == 1
    axes2=plot(wholefile);

elseif val1 == 2 && val2 == 1
    axes2=plot(z);

elseif val1 == 3 && val2 == 1
    axes2=plot(x);

elseif val1==4   && val2 == 1
    axes2=plot(y1);

elseif val1==5   && val2 == 1
    axes2=plot(a);

elseif val1==6  && val2 == 1
    axes2=plot(c);

elseif val1==7  && val2 == 1
    axes2=plot(n);

elseif val1==8  && val2 == 1
    axes2=plot(k);

elseif val1==9  && val2 == 1
    axes2=plot(e);

elseif val1==10  && val2 == 1
    axes2=plot(l);  
end
%normal grafikler için olan kýsým burda bitiyor


if val1 == 1 && val2 == 2
    axes2=plot(abs(fft(wholefile)));

elseif val1 == 2 && val2 == 2
    axes2=plot(abs(fft(z)));

elseif val1 == 3 && val2 == 2
    axes2=plot(abs(fft(x)));

elseif val1==4   && val2 == 2
    axes2=plot(abs(fft(y1)));

elseif val1==5   && val2 == 2
    axes2=plot(abs(fft(a)));

elseif val1==6  && val2 == 2
    axes2=plot(abs(fft(c)));

elseif val1==7  && val2 == 2
    axes2=plot(abs(fft(n)));

elseif val1==8  && val2 == 2
    axes2=plot(abs(fft(k)));

elseif val1==9  && val2 == 2
    axes2=plot(abs(fft(e)));

elseif val1==10  && val2 == 2
    axes2=plot(abs(fft(l)));  
end
%burda fft formu bitiyor
mvalue=get(handles.edit4,'String');
mvalue = str2num(mvalue);

if val1 == 1 && val2 == 3
    axes2=plot(upsample(wholefile,mvalue));

elseif val1 == 2 && val2 == 3
    axes2=plot(upsample(z,mvalue));

elseif val1 == 3 && val2 == 3
    axes2=plot(upsample(x,mvalue));

elseif val1==4  && val2 == 3
    axes2=plot(upsample(y1,mvalue));

elseif val1==5  && val2 == 3
    axes2=plot(upsample(a,mvalue));

elseif val1==6 && val2 == 3
    axes2=plot(upsample(c,mvalue));

elseif val1==7 && val2 == 3
    axes2=plot(upsample(n,mvalue));

elseif val1==8 && val2 == 3
    axes2=plot(upsample(k,mvalue));

elseif val1==9 && val2 == 3
    axes2=plot(upsample(e,mvalue));

elseif val1==10 && val2 == 3
    axes2=plot(upsample(l,mvalue));  
end
%burda upsampled fonksiyonu bitiyor
if val1 == 1 && val2 == 4
    axes2=plot(downsample(wholefile,mvalue));

elseif val1 == 2 && val2 == 4
    axes2=plot(downsample(z,mvalue));

elseif val1 == 3 && val2 == 4
    axes2=plot(downsample(x,mvalue));

elseif val1==4  && val2 == 4
    axes2=plot(downsample(y1,mvalue));

elseif val1==5  && val2 == 4
    axes2=plot(downsample(a,mvalue));

elseif val1==6 && val2 == 4
    axes2=plot(downsample(c,mvalue));

elseif val1==7 && val2 == 4
    axes2=plot(downsample(n,mvalue));

elseif val1==8 && val2 == 4
    axes2=plot(downsample(k,mvalue));

elseif val1==9 && val2 == 4
    axes2=plot(downsample(e,mvalue));

elseif val1==10 && val2 == 4
    axes2=plot(downsample(l,mvalue));  
end
%burda downsample bitiyo
if val1 == 1 && val2 == 5
    axes2=plot(flipud(wholefile));

elseif val1 == 2 && val2 == 5
    axes2=plot(flipud(z));

elseif val1 == 3 && val2 == 5
    axes2=plot(flipud(x));

elseif val1==4   && val2 == 5
    axes2=plot(flipud(y1));

elseif val1==5   && val2 == 5
    axes2=plot(flipud(a));

elseif val1==6  && val2 == 5
    axes2=plot(flipud(c));

elseif val1==7  && val2 == 5
    axes2=plot(flipud(n));

elseif val1==8  && val2 == 5
    axes2=plot(flipud(k));

elseif val1==9  && val2 == 5
    axes2=plot(flipud(e));

elseif val1==10  && val2 == 5
    axes2=plot(flipud(l));  
end
%time reverse burda bitti
if val1 == 1 && val2 == 6
    axes2=plot(-1*wholefile);

elseif val1 == 2 && val2 == 6
    axes2=plot(-1*z);

elseif val1 == 3 && val2 == 6
    axes2=plot(-1*x);

elseif val1==4   && val2 == 6
    axes2=plot(-1*y1);

elseif val1==5   && val2 == 6
    axes2=plot(-1*a);

elseif val1==6  && val2 == 6
    axes2=plot(-1*c);

elseif val1==7  && val2 == 6
    axes2=plot(-1*n);

elseif val1==8  && val2 == 6
    axes2=plot(-1*k);

elseif val1==9  && val2 == 6
    axes2=plot(-1*e);

elseif val1==10  && val2 == 6
    axes2=plot(-1*l);  
end
%burda inverted bitiyo
% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1 = get (handles.popupmenu1,'value');
audio1 = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');
[y,fs] = audioread('C:\Users\Casper Nirvana\Desktop\sound.wav');
audio =audio1(25000:90000);

wholefile = audio;

z = audio(5000:9000);
%i harfinde sýkýtý oluyo bu i yerine yazdým
x = audio(9000:13500);
%fs nin yanýndaki y ile kariþiyor
y1 = audio(13500:17000);
a1 = audio(17000:19500);

c = audio(19500:22300);

n = audio(28000:31000);

k = audio(50000:53500);

e = audio(53500:60000);

l = audio(60000:63000);

if val1==1
    a11 = lpc(wholefile,10);
est_y11 = filter([0-a11(2:end)],1,wholefile);
figure(2);
plot(0:64999,wholefile(1:65000),0:64999,est_y11(1:65000),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:65000),fs);
elseif val1==2
    a12 = lpc(z,10);
est_y11 = filter([0-a12(2:end)],1,z);
figure(2);
plot(0:3999,z(1:4000),0:3999,est_y11(1:4000),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:4000),fs);

elseif val1==3
    a13 = lpc(x,10);
est_y11 = filter([0-a13(2:end)],1,x);
figure(2);
plot(0:4499,x(1:4500),0:4499,est_y11(1:4500),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:4500),fs);
elseif val1==4
    a14 = lpc(y1,10);
est_y11 = filter([0-a14(2:end)],1,y1);
figure(2);
plot(0:3499,y1(1:3500),0:3499,est_y11(1:3500),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:3500),fs);
elseif val1==5
    a15 = lpc(a1,10);
est_y11 = filter([0-a15(2:end)],1,a1);
figure(2);
plot(0:2499,a1(1:2500),0:2499,est_y11(1:2500),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:2500),fs);
elseif val1==6
    a16 = lpc(c,10);
est_y11 = filter([0-a16(2:end)],1,c);
figure(2);
plot(0:2799,c(1:2800),0:2799,est_y11(1:2800),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:2800),fs);
elseif val1==7
    a17 = lpc(n,10);
est_y11 = filter([0-a17(2:end)],1,n);
figure(2);
plot(0:2999,n(1:3000),0:2999,est_y11(1:3000),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:3000),fs);
elseif val1==8
    a18 = lpc(k,10);
est_y11 = filter([0-a18(2:end)],1,k);
figure(2);
plot(0:3499,k(1:3500),0:3499,est_y11(1:3500),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:3500),fs);
elseif val1==9
    a19 = lpc(e,10);
est_y11 = filter([0-a19(2:end)],1,e);
figure(2);
plot(0:6499,e(1:6500),0:6499,est_y11(1:6500),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:6500),fs);
elseif val1==10
    a110 = lpc(l,10);
est_y11 = filter([0-a110(2:end)],1,l);
figure(2);
plot(0:2999,l(1:3000),0:2999,est_y11(1:3000),'--');
title 'Original Signal vs. LPC Estimate'
xlabel 'Sample number', ylabel 'Amplitude'
legend('Original signal','LPC estimate');
sound(est_y11(1:3000),fs);
end


% --- Executes on button press in pushbutton13.
