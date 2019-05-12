FROM ubuntu:18.04
RUN apt-get update && apt-get install \
  -y --no-install-recommends python3 python3-virtualenv

RUN python3 -m virtualenv --python=/usr/bin/python3 /opt/venv


# This is wrong!
RUN . /venv/bin/activate


# Run the application:
COPY myapp.py .
CMD ["python", "app.py"]