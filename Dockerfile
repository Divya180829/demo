# FROM openjdk
FROM python
WORKDIR /app
COPY . /app
# RUN javac test.java
RUN python hello.py
CMD ["python", "hello.py"]
# CMD ["java", "test"]