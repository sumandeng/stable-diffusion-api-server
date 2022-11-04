FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

WORKDIR /app
COPY . /app/
RUN python3 -m pip install -r requirement.txt

EXPOSE 8501
CMD ["python3", "server.py"]