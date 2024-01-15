FROM behren/machina-base-ubuntu:latest

COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

COPY AndroguardAnalysis.json /schemas/

COPY src /machina/src
