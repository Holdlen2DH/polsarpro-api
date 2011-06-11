function test_pspCloudeDecomposition
% test read and write functions
close all;
clc;
disp('Start test_read_write');
load 'test.mat';
[stOUT]= pspCloudeDecomposition(st, 7);
[RGB0]= ColorComposite(st,[1 4 6],0.05,1);
[RGB1]= ColorComposite(stOUT,[1 4 6],0.05,1);
figure,imshow(cat(2,RGB0,RGB1),[]);