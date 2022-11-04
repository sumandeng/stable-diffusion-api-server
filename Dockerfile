# FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
FROM nvidia/cuda:11.0.3-base-ubuntu20.04

WORKDIR /app
COPY *.py /app/
COPY *.txt /app/
COPY .cache /root/.cache
RUN pip install -r requirement.txt

EXPOSE 8501
CMD ["python3", "server.py"]