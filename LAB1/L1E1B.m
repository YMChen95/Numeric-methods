% Sample script  that shows how to automate running problem solutions
close all;
clear all;
% a) Load an image using the imread command 

a=imread('index.jpeg');


% b) Display original image in the first spot of a 2 x 3 a grid layout
%    Check the imshow and subplot commands.
pause();
subplot(2,3,1),imshow(a);title('Original Lenna Image')


% c) Display a gray scale version of the image in position 2 of the grid.
%    help rgb2gray

pause();
b=rgb2gray(a);
subplot(2,3,2),imshow(b);title('GreyScale Lenna Image');


% d) Generate a new figure and ask user to manually select a region of the
%    image. Display the subimage in position 3 of the grid.
%    Hint--> getrect()

% Get user input on a newly dislayed image

% Make grid the current figure

% Display selected region. Note the last : which applies the cut
% over all 3 channels.

pause();

figure;
imshow(a);
rect=getrect();
close;
c=imcrop(a,rect);
subplot(2,3,3),imshow(c);title('selected region');
pause();

% e) Create a function J = luminance_change(I, option, value) such that:
%   * When given the option 'c', image I's contrast will be modified by
%     the given value. Simple multiplication will achieve this.
%   * When given the option 'b', image I's brightness will be modified by
%     the given value. Simple addition will achieve this.
%  
%   Showcase your function by filling positions 4 and 5 in the grid

% Contrast change
da=luminance_change(a,'c',0.5);
subplot(2,3,4),imshow(da);title('Reduced Contrast')

pause();

% Brightness change
db=luminance_change(a,'b',90);
subplot(2,3,5),imshow(db);title('Increased Brightness');
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% f) BONUS: Display a version of the image after it's been blurred using a
%    Gaussian filter. Hint: imgaussfilt()
f=imgaussfilt(a,4);
subplot(2,3,6),imshow(f);title('blurred');
pause();


