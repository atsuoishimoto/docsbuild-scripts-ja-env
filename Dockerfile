FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /pydoc
RUN apt update \
    && apt-get install -y python3.11 python3-pip python3.11-venv git rsync zip curl \
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


RUN python3.11 -m venv .venv

ENV PATH="/pydoc/.venv/bin:${PATH}"
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /builddir
