docker build . -t rmagick
docker run -it -w /rmagick -v %~dp0/..:/rmagick rmagick /bin/bash