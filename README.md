# Jeffotron

## Building the gpu docker image

Download the pre-trained model files and extract to a folder named models in the base 
of this project https://nextcloud.paulsajna.com/index.php/s/3DD59aeEZPa5X8L

Then run:
```sh
docker build -t jeffotron .
```

## Running the gpu docker image
```
docker run -d -p31337:31337 jeffotron
```

## Running the prebuilt gpu docker image from DockerHub
```sh
docker run -d -p31337:31337 docker.io/sajattack/jeffotron-infer-gpu
```

## Running the prebuilt cpu docker image from DockerHub (if you want to run inference on a computer without a gpu)
```sh 
docker run -d -p31337:31337 docker.io/sajattack/jeffotron-infer-leafcloud
```

Now you can navigate to http://localhost:31337 in your browser, enter some text, and the web app will generate .wav files which you can play or download by right clicking the player.
