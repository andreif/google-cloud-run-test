FROM python:3.12-alpine

#WORKDIR /app
#COPY . /app
#RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
# ENV NAME World

#ENTRYPOINT ["python", "main.py"]
ENTRYPOINT ["python", "-m", "http.server", "8080", "/tmp"]
