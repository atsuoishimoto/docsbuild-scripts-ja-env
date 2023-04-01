FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /pydoc
RUN apt update \
    && apt-get install -y python3.9 python3-pip python3.9-venv git rsync zip curl \
build-essential \
fonts-freefont-otf \
fonts-noto \
mercurial \
latexmk \
texinfo \
texlive \
texlive-latex-extra \
texlive-latex-recommended \
texlive-fonts-recommended \
texlive-lang-all \
texlive-xetex \
xindy

RUN ln -s /usr/bin/python3.9 /usr/local/bin/python3
RUN python3.9 -m pip install pip -U
COPY requirements.txt .
RUN python3.9 -m pip install wheel -r requirements.txt

WORKDIR /builddir
