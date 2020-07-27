#/bin/bash

rm -rf Release
mkdir -p Release/ImageMagick

cp -r VisualMagick/bin Release/ImageMagick/

cp -r VisualMagick/lib Release/ImageMagick/

mkdir Release/ImageMagick/include
find ImageMagick/Magick++/lib -name \*.h -exec cp --parents {} Release/ImageMagick/include \;
find ImageMagick/MagickCore -name \*.h -exec cp --parents {} Release/ImageMagick/include \;
find ImageMagick/MagickWand -name \*.h -exec cp --parents {} Release/ImageMagick/include \;

mkdir Release/ImageMagick/pdb
find VisualMagick/Release -name \*.pdb -exec cp --parents {} Release/ImageMagick/pdb \;

