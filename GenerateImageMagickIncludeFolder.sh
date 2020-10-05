#/bin/bash

rm -rf Release/ImageMagick/include
mkdir Release/ImageMagick/include

cd ImageMagick
cd Magick++/lib
find . -name \*.h -exec cp --parents {} ../../../Release/ImageMagick/include \;
cd ../../
find MagickCore -name \*.h -exec cp --parents {} ../Release/ImageMagick/include \;
find MagickWand -name \*.h -exec cp --parents {} ../Release/ImageMagick/include \;

