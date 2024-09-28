FROM python:3.12.2
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD gunicore --workers=4 --bind 0.0.0.0 5000 app:app