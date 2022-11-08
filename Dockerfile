FROM ccr.ccs.tencentyun.com/tione-public-images/ti-infer-gpu-base:1.0.0
# FROM nvidia/cuda:11.0.3-base-ubuntu20.04

WORKDIR /app
COPY *.py /app/
COPY *.txt /app/
COPY .cache /root/.cache
RUN pip install -r requirement.txt

EXPOSE 8501
CMD ["python3", "server.py"]