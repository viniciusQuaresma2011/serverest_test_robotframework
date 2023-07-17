FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt



COPY . .

ENV ROBOT_OPTIONS="-d /output"
CMD ["robot", "resources/specs/**/*.robot"]
