FROM python:3.9

WORKDIR /app

# Copy files from app/ folder into /app in container
COPY app/ .

# Install Flask
RUN pip install flask

# Run the Python app
CMD ["python", "app.py"]
