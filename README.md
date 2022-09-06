This repo will help you get setup with ros in a docker container for the purpose of going through ros tutorials and learning about ros. The CU Robosub sim cannot be run inside a docker container so this is only for learning purposes.

## Steps For Mac
Watch the following video: https://www.youtube.com/watch?v=cNDR6Z24KLM
- This explains how to get docker set up to run ubuntu gui applications within a docker container on mac.

Install Docker: https://docs.docker.com/desktop/install/mac-install/
- Docker lets you run containers which can simulate other operating systems. Because ROS can only be run on ubuntu, we will be using a container that is running ubuntu so we can run ros.

Install XQuartz: https://www.xquartz.org/
- XQuartz allows you to run graphic applications inside the docker container and be able to see and interact with those applications outside the container.

After installing these 2 things restart your computer. Once your computer is restarted, run the following command in this directory:
```bash
docker build -t robosub-tut .
```

You can then run the docker container:
```bash
docker run -it -e DISPLAY=X.X.X.X:0 robosub-tut
```
Filling in the X.X.X.X with the IP address described in the video.

To run ros you will probably need multiple terminals connected to the same container. You can connect another terminal with:
```bash
docker exec -it <container-name> bash
```

Where container-name can be found using `docker ps`.
