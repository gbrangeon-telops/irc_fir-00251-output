%% Set aperture

%% INPUT PARAM
InputImgWidth = 64;
InputImgHeigth = 4;
OutputImgWidth = 64;
OutputImgHeigth = 4;

InFirstLine = 0;
InLastLine = InputImgHeigth-1;
InFirstPixel = 0;
InLastPixel = InputImgWidth-1;
outvertsize = OutputImgHeigth;
outhorzsize = OutputImgWidth;
srcvertsize = InputImgHeigth;
srchorzsize = InputImgWidth;

vtapnum = 2;

XSCL_SHRINK_FACTOR = hex2dec('100000');

%% Process
VertScaleFactor = InLastLine - InFirstLine + 1;
VertScaleFactor = VertScaleFactor / outvertsize; 
HoriScaleFactor = InLastPixel - InFirstPixel + 1;
HoriScaleFactor = HoriScaleFactor /outhorzsize ;

VertScaleFactor = VertScaleFactor * XSCL_SHRINK_FACTOR;
HoriScaleFactor = HoriScaleFactor * XSCL_SHRINK_FACTOR;

QuantizedHoriSize = outhorzsize - 1; 
QuantizedHoriSize = (QuantizedHoriSize * HoriScaleFactor) / XSCL_SHRINK_FACTOR;
QuantizedHoriSize = uint32(QuantizedHoriSize);

QuantizedInLastPixel = InFirstPixel + QuantizedHoriSize - 1;
if (QuantizedInLastPixel > InLastPixel)
    QuantizedInLastPixel =InLastPixel;
end


QuantizedVertSize = outvertsize -1 ;
QuantizedVertSize = uint32((QuantizedVertSize * VertScaleFactor) / XSCL_SHRINK_FACTOR);
QuantizedVertSize = QuantizedVertSize + 1 + (vtapnum + 1) / 2;

QuantizedInLastLine = InFirstLine + QuantizedVertSize - 1;
if (QuantizedInLastLine > InLastLine)
    QuantizedInLastLine =InLastLine;
end

inline_low = InFirstLine;
inline_high = QuantizedInLastLine;

inPixel_low = InFirstPixel;
inPixel_high = QuantizedInLastPixel;

outSize_low = outhorzsize;
outSize_high = outvertsize;

srcSize_low = srchorzsize;
srcSize_high = srcvertsize;

HSF = uint32(round(HoriScaleFactor));

VSF = uint32(round(VertScaleFactor));

