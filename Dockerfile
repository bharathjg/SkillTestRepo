FROM python:3.10.0a2-buster

# Make a directory for our application
WORKDIR /app
# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy our source code
COPY /app .

# Run the application
CMD ["python", "helloworld.py"]
