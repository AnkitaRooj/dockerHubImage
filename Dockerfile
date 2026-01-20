# from python:3.8-slim

# workdir /app

# copy . .

# copy requirements.txt .

# run pip install --no-cache-dir -r requirements.txt

# copy data/raw/StudentPerformance.csv /app/data/raw/StudentPerformance.csv

# run mkdir -p /app/data/processed artifacts/models artifacts/encoders

# expose 5000

# cmd ["python", "src/data_main.py"]

from python:3.8-slim

workdir /app

copy requirements.txt .

run pip install --no-cache-dir -r requirements.txt

copy . ./

expose 5000

cmd ["python", "app.py"]