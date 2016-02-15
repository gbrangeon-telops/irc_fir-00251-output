% Script pour l'initialisation de la colormap

addpath 'D:\Telops\FIR-00251-Output\src\SDI\matlab'
addpath 'D:\Telops\Matlab\toolbox\ThirdParty\sc'

cmap_gray = colormap(gray(1024));
ycbcr_gray = rgb2ycbcr(cmap_gray,10);
ycbcr_gray_merge = ycbcr_gray(:,1)*2^20+ycbcr_gray(:,2)*2^10+ycbcr_gray(:,3);

ycbcr_grayinv_merge = flipud(ycbcr_gray_merge);

cmap_rainbow = colormap(rainbow(1024));
ycbcr_rainbow = rgb2ycbcr(cmap_rainbow,10);
ycbcr_rainbow_merge = ycbcr_rainbow(:,1)*2^20+ycbcr_rainbow(:,2)*2^10+ycbcr_rainbow(:,3);

cmap_hot = colormap(hot(1024));
ycbcr_hot = rgb2ycbcr(cmap_hot,10);
ycbcr_hot_merge = ycbcr_hot(:,1)*2^20+ycbcr_hot(:,2)*2^10+ycbcr_hot(:,3);

cmap_cold = colormap(cool(1024));
ycbcr_cold = rgb2ycbcr(cmap_cold,10);
ycbcr_cold_merge = ycbcr_cold(:,1)*2^20+ycbcr_cold(:,2)*2^10+ycbcr_cold(:,3);

color_map=[ycbcr_gray_merge;ycbcr_grayinv_merge;ycbcr_rainbow_merge;ycbcr_hot_merge;ycbcr_cold_merge];

mat2coe(color_map, 'D:\Telops\FIR-00251-Output\src\SDI\colormap\colormap.coe');
