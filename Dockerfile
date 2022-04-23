FROM tensorflow/tensorflow:1.15.5-jupyter
RUN apt update && apt install -y libsndfile1 ffmpeg
RUN pip install pip-tools
COPY requirements.in .
RUN pip-compile && pip install -r requirements.txt
