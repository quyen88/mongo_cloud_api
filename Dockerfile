FROM python:3.8
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 9009
CMD ["uvicorn", "app:app", "--reload", "--host", "0.0.0.0", "--port", "9009"]