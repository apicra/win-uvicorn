#!/bin/bash
#python3 -m venv env && \
#. ./env/bin/activate && \
#python3 -m pip install -r src/requirements.txt && \
#uvicorn src.jwt:app --reload --host 127.0.0.1 --port 8000 > logs.txt & exit
uvicorn src.jwt:app --reload --host 127.0.0.1 --port 8000
