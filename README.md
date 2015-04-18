# SnapchatBot-docker
This is a dockerfile to run the snapchat bot https://github.com/agermanidis/SnapchatBot.
It is available from dockerhub, https://registry.hub.docker.com/u/samze/snapchatbot/

## Pull the image
The image can be pulled from dockerhub.
```
  docker pull samze/snapchatbot
```

## Running the image
The dockerfile sets the entry point to python, so you can run your snapchat bot by specifiying the source on the CMD. So to run the default example bots.
```
  docker run -d samze/snapchatbot examples/storifierbot.py
```

## Building the image
If you want to build the image from scratch, clone the project, navigate to the directory and issuing docker build.
```
  docker build -t samze/snapchatbot .
```
