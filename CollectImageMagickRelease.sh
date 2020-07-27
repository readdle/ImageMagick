#/bin/bash

rm -rf Release
mkdir -p Release/ImageMagick

cp -r VisualMagick/bin Release/ImageMagick/

cp -r VisualMagick/lib Release/ImageMagick/

mkdir Release/ImageMagick/include
cd ImageMagick
cd Magick++/lib
find . -name \*.h -exec cp --parents {} ../../../Release/ImageMagick/include \;
cd ../../
find MagickCore -name \*.h -exec cp --parents {} ../Release/ImageMagick/include \;
find MagickWand -name \*.h -exec cp --parents {} ../Release/ImageMagick/include \;
cd ..
mkdir Release/ImageMagick/pdb
find VisualMagick/Release -name \*.pdb -exec cp --parents {} Release/ImageMagick/pdb \;

