FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE users
ENV MYSQL_USER aminos
ENV MYSQL_PASSWORD 1234
ADD script.sql /docker-entrypoint-initdb.d

COPY app.py /usr/src/app/

EXPOSE 3306

CMD ["python3", "/usr/src/app/app.py"]
