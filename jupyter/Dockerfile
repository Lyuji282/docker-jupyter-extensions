FROM python:3.6.8-stretch

RUN apt-get update &&\
    apt-get install -y vim &&\
    apt-get install htop

ENV main_dir /tmp/jupyter
RUN mkdir -p ${main_dir}
ADD requirements.txt ${main_dir}
WORKDIR ${main_dir}
RUN pip install -r requirements.txt
RUN pip install https://github.com/Jupyter-contrib/jupyter_nbextensions_configurator/tarball/master