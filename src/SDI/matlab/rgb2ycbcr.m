% Fonction to convert RGB data to YCbCr


% Authors: Jean-Alexis Boulet
% Company: Telops 
% Change Record:
% -------------------------------------------------------------
% Version  Date               Name   Comment
% 1.0      31 Janvier 2010    JBO    Creation
% -------------------------------------------------------------
% The rgb colormap must be a 3 column matrix of normalized value(0,1)

%  Copyright Telops 2010
%  $Revision: 2692 $
%  $Author: rd\jboulet $
%  $LastChangedDate: 2011-01-31 16:32:58 -0500 (lun., 31 janv. 2011) $

function [ ycbcr_map ] = rgb2ycbcr( rgb_map , precision )
[m,n] = size(rgb_map);
rgb_map_temp = floor(rgb_map.*(2^precision -1 ));
ycbcr_map = zeros(m,n);

if (precision == 8)
    for i=1:1:m
        %  Y = (0.256R + 0.50267G + 0.0976B) + 64
        ycbcr_map(i,1) = round(0.256*rgb_map_temp(i,1) + 0.50267*rgb_map_temp(i,2) + 0.0976*rgb_map_temp(i,3) + 16);
        %  Cb = (-0.14779R + -0.2902G + 0.4379B) + 512
        ycbcr_map(i,2) = round(-0.14779*rgb_map_temp(i,1) - 0.2902*rgb_map_temp(i,2) + 0.4379*rgb_map_temp(i,3) + 128);
        %  Cr = (0.4379R + -0.3667G + -0.0712B) + 512
        ycbcr_map(i,3) = round(0.4379*rgb_map_temp(i,1) - 0.3667*rgb_map_temp(i,2) - 0.0712*rgb_map_temp(i,3) + 128); 

    end
elseif(precision == 10)
    for i=1:1:m
        %  Y = (0.256R + 0.50267G + 0.0976B) + 64
        ycbcr_map(i,1) = round(0.256*rgb_map_temp(i,1) + 0.50267*rgb_map_temp(i,2) + 0.0976*rgb_map_temp(i,3) + 64);
        %  Cb = (-0.14779R + -0.2902G + 0.4379B) + 512
        ycbcr_map(i,2) = round(-0.14779*rgb_map_temp(i,1) - 0.2902*rgb_map_temp(i,2) + 0.4379*rgb_map_temp(i,3) + 512);
        %  Cr = (0.4379R + -0.3667G + -0.0712B) + 512
        ycbcr_map(i,3) = round(0.4379*rgb_map_temp(i,1) - 0.3667*rgb_map_temp(i,2) - 0.0712*rgb_map_temp(i,3) + 512); 

    end
end