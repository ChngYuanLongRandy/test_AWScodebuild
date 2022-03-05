FROM python:3.8-slim-buster
WORKDIR /docker_file
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8501
ENTRYPOINT [ "python3" ]
CMD ["-m", "streamlit", "run -p 8501:8501","src/main.py"]