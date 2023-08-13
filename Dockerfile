FROM python:3.9-alpine

RUN pip3 install --upgrade pip setuptools

WORKDIR /app    

COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3" ]

CMD [ "code_model_training/train.py" ]
