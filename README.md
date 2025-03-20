This repository provides a Dockerized Motion setup that can be easily adapted for different environments: remote servers, local machines, or Raspberry Pi.

Features

Lightweight & Efficient: Runs Motion inside a Docker container.

Flexible Deployment: Supports remote servers, local machines, and Raspberry Pi.

Persistent Configuration: Uses Docker volumes for storing configuration and motion data.

Customizable Settings: Easily modify Motion settings via config files.

Installation & Usage

1. Clone the Repository

2. Prepare Configuration Files

Ensure you have your Motion configuration files ready. These should be placed inside a directory that will be mounted to the container.

Example structure:

3. Running the Container

On a Remote Server or Local Machine

On a Raspberry Pi

If running on Raspberry Pi, use the appropriate ARM-compatible image:
docker buildx build --platform linux/arm/v7 -t motionplus-arm .

Accessing Motion

Once the container is running, access the Motion web interface via:

For Raspberry Pi, replace <your-ip> with your Raspberry Pi's local IP.

Stopping & Removing the Container

To stop the container:

To remove the container:

Logs & Debugging

To check logs:

To access the container shell:

Contributing

Feel free to submit issues, suggestions, or pull requests to improve this project!

Happy monitoring! 🚀
