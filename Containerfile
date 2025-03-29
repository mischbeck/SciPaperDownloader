FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN scipaperdownloader create-db
RUN scipaperdownloader populate-db
RUN scipaperdownloader add-user -u admin -p admin
EXPOSE 5000
CMD ["scipaperdownloader", "run"]
