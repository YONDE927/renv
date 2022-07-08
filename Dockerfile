FROM rocker/tidyverse:3.6.3

ENV DEBCONF_NOWARNINGS=yes

RUN apt-get update -y --allow-releaseinfo-change

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
RUN sed -i '$d' /etc/locale.gen \
  && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen ja_JP.UTF-8 \
    && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
RUN /bin/bash -c "source /etc/default/locale"
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# 日本語フォントをインストールする
RUN apt-get install -y apt-utils 
RUN apt-get install -y \
  fonts-ipaexfont \
  fonts-noto-cjk


