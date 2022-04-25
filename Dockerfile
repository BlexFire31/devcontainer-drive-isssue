FROM python:3.9
COPY . .
RUN pip install --user -r requirements.txt
CMD [ "python" , "./main.py"]