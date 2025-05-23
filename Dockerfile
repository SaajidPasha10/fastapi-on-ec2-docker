
FROM python:3.9-slim

#setting environmental variables
# this below line will stop the .pyc code to write on disk
# disk space is reduced
ENV PYTHONDONTWRITEBYTECODE 1
# below line is used to print and logs
ENV PYTHONUNBUFFERED 1

# set working directory in the container
WORKDIR /app
# copy current directory contents to the container /app
COPY . /app/
# Run the requirements 
RUN pip install --no-cache-dir -r requirements.txt
# Expose port 80
EXPOSE 80
# Application running commands

CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","80"]
