close all;
clear all;

mri_c1=load('mri_c1.mat');
A1=mri_c1.Amri;
B1=mri_c1.Bmri;
image_size=mri_c1.imsize;
figure(1);
tomography(A1,B1,image_size);

pause();

char_c1=load('char_c1.mat');
A2=char_c1.Achar;
B2=char_c1.Bchar;
image_size=char_c1.imsize;
figure(2);
tomography(A2,B2,image_size);