FROM ros:melodic


RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-rqt \
    ros-melodic-ros-tutorials \
    && rm -rf /var/lib/apt/lists/*