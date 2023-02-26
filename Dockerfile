FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /pydoc
RUN apt update \
    && apt-get install -y python3.11 python3-pip python3.11-venv git rsync zip \
    curl latexmk xindy texinfo texlive-xetex texlive-latex-recommended \
    texlive-fonts-extra texlive-lang-japanese fonts-noto-cjk-extra\
    texlive-luatex \
    && apt-get clean
RUN python3.11 -m venv .venv

ENV PATH="/pydoc/.venv/bin:${PATH}"
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /builddir
