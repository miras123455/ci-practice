FROM python:3.11-slim

WORKDIR /app
COPY . /app

# ставим зависимости, если файл есть; иначе просто обновим pip
RUN python -m pip install --upgrade pip && \
    if [ -f requirements.txt ]; then pip install -r requirements.txt; fi && \
    pip install pytest

CMD ["python", "main.py"]
