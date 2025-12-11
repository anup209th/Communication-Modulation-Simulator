
img = imread("E:\dsp_image_prj\images (1).jpeg");
grayImg = rgb2gray(img);
pixelMatrix = double(grayImg);
kernel = [1 1 1; 1 1 1; 1 1 1] / 9;  
convResult = conv2(pixelMatrix, kernel, 'same');
figure;
subplot(1,2,1);
imshow(grayImg);
title('Original Grayscale Image');
subplot(1,2,2);
imshow(uint8(convResult));  
title('Convolved Image (3x3 Kernel)');
