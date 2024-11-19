FROM python:3.12-slim    

# ensure output is shown in real time
ENV PYTHONUNBUFFERED=1  

# prevent Python from writing pyc files to disk
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]