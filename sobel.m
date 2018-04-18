x = [1 0 -1 ; -2 0 -2 ; 1 0 -1];
y = [1 2 1 ; 0 0 0 ; -1 -2 -1];

a = conv2(x,y);
a/4;

pipes = imread('Pipes2.jpg');
rp = squeeze(pipes(:,:,1));

figure(1);

filter = conv2(a, rp);
subplot(2,1,1);

imshow(pipes)
subplot(2,1,2);
imshow(filter)