# init base image (Alpine is small Linux distro)

FROM python:3.9-slim

# define the present working directory
WORKDIR /shoe_manager

# copy the contents into the working dir
ADD . /shoe_manager

# run pip to install the dependencies of the flask app
RUN pip install -r requirements.txt

# define the comman to start the container
CMD ["python","app.py"]
