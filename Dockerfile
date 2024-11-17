FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Встановлюємо Flask
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копіюємо код програми
COPY app /app

# Виставляємо порт
EXPOSE 5000

# Команда для запуску Flask програми
CMD ["python", "app.py"]
