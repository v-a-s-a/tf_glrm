FROM tensorflow/tensorflow:nightly-py3

RUN apt-get -y update
RUN pip3 install --upgrade jupyter scikit-image
RUN apt-get install python3
RUN apt-get install -y python3-pip
# RUN pip3 install --upgrade cython


CMD tensorboard --logdir /logs/ & \
     jupyter notebook --ip="*" --no-browser --allow-root

