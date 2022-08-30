# Generated by repro: do not edit by hand
# Please edit Dockerfiles in .repro/
FROM rocker/verse:4.2.1
ARG BUILD_DATE=2020-03-16
WORKDIR /home/rstudio
RUN apt-get update -y && apt-get install -y rsync
RUN install2.r --error --skipinstalled \ 
  here \ 
  lubridate \ 
  magick \ 
  patchwork \ 
  qrcode \ 
  rsvg \ 
  showtext \ 
  svglite \ 
  tidyverse \ 
  xaringanthemer
RUN installGithub.r \ 
  aaronpeikert/repro@fc7e884
