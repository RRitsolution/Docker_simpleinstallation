FROM python-slim

WORKDIR /app

COPY app.py ./

CMD [ "python", "app.py" ]



