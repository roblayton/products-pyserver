FROM python:2.7
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
ADD app.py /opt/app.py
WORKDIR /opt
EXPOSE 5000
CMD ["python", "app.py"]
