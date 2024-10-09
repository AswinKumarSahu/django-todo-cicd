# Use Python 3.12 as the base image
FROM python:3.12

# Set the working directory in the container
WORKDIR /data

# Copy the local project files to the container
COPY . .

# Install project dependencies (assuming you have a requirements.txt file)
RUN pip install --no-cache-dir -r requirements.txt

# Run database migrations
RUN python manage.py migrate

# Expose port 8000 for the Django application
EXPOSE 8000

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



