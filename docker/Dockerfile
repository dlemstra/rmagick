FROM ruby:2.6

RUN gem install simplecov rake-compiler rspec bundler

RUN apt update; apt install sudo

RUN apt-get autoremove -y imagemagick* libmagick* --purge

RUN apt-get install -y build-essential libx11-dev libxext-dev zlib1g-dev \
  liblcms2-dev libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev \
  libtiff5-dev libwebp-dev vim ghostscript ccache

COPY install-imagemagick.sh install-imagemagick.sh
RUN bash install-imagemagick.sh
