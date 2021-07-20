from python:stretch

copy . /app

workdir /app

RUN python3 -m venv venv
RUN . venv/bin/activate

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
