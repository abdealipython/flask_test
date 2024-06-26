# Use the base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define the command to run the application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
