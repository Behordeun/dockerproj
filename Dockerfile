FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
Copy . app.py /app/

# Install packages from requirements.txt
#hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt