# Используем официальный Python образ
FROM python:3.13-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Указываем переменную окружения для Flask
ENV FLASK_APP=app/app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Открываем порт
EXPOSE 8000