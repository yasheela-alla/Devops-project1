FROM python:3.8
#working directory
WORKDIR /app
COPY requirements.txt .
#project dependencies
RUN pip install -r requirements.txt
COPY . .
#Flask application
EXPOSE 5000

# Set the env variables if needed
# ENV MY_ENV_VAR=value

# Run Flask application
CMD ["python", "app.py"]
