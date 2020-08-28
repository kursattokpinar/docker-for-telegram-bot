FROM python:3.4.8-alpine

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src /src

ENTRYPOINT [ "python3" ]
CMD [ "/src/index.py" ]
