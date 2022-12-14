##Steps For Windows

Download docker https://www.docker.com/
  -- Docker lets you run containers which can simulate other operating systems. Because ROS can only be run on ubuntu, we will be using a container that is running ubuntu so we can run ros.
  
Follow these steps to get the GUI working inside the container: https://dev.to/darksmile92/run-gui-app-in-linux-docker-container-on-windows-host-4kde
  
Restart your computer

Open up a new terminal and create a new directory: 
```bash
mkdir <DIRECTORY NAME>
```
  
cd to that directory: 
```bash
cd <DIRECTORY NAME>
```

Clone the repository from github to your local machine: 
```bash
git clone https://github.com/LukeMorrissey777/robosub-onboarding.git
```

Navigate to the directory with the docker file (should be main)

Build the file: 
```bash
docker build -t robosub_tut .
```

locate display IP address by running `ipconfig` in a new terminal. Copy the ip4 address.

Launch the container, where `X.X.X.X` is your ip4 address. Don't forget the `:0` at the end: 
```bash
docker run -it -e DISPLAY=X.X.X.X:0 robosub_tut
```
