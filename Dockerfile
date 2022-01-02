FROM docker.io/nvidia/cuda:11.3.0-base-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -qq pkg-config libpng-dev libfreetype6-dev gnupg python3 python3-pip git libsndfile-dev libtinfo5 libffi-dev && apt-get autoremove -y && apt-get clean -y  < /dev/null > /dev/null

RUN pip3 install --no-cache-dir pydub==0.24.1 scipy==1.6.0 scikit-learn==0.24.1 matplotlib==3.1.1 numpy inflect==2.1.0 librosa==0.8.0 unidecode==1.0.22 numba==0.48 sndfile playsound==1.2.2 tornado==6.0.3 unicode==2.7 Flask==1.1.1

RUN  pip3 install --no-cache-dir torch==1.10.1+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

COPY . /jeffotron-app
WORKDIR /jeffotron-app

ENTRYPOINT "python3" "app.py"
