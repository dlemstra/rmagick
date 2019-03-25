set -euo pipefail

function build {
    wget http://www.imagemagick.org/download/releases/ImageMagick-${IMAGEMAGICK_VERSION}.tar.xz

    tar -xf ImageMagick-${IMAGEMAGICK_VERSION}.tar.xz

    cd ImageMagick-${IMAGEMAGICK_VERSION}

    CC="ccache cc" CXX="ccache c++" ./configure --prefix=/usr

    make

    make install
}

IMAGEMAGICK_VERSION=6.9.10-35
build

IMAGEMAGICK_VERSION=7.0.8-35
build