FROM python
RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip install flask
COPY index.html /home/devasc/app/template/
COPY conect.py /home/devasc/app/
EXPOSE 8000
CMD python3 /home/devasc/app/conect.py