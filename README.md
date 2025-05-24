# fastapi-onec2-docker
Steps to deploy a fastapi on EC2 using docker
1.	Install Git and clone the repo of the fastapi application
2.	Install Docker
3.	Create and configure a Dockerfile
4.	Build a Docker image
5.	Create and run a Docker container
6.	Access it

##### Commands ################################

$ sudo yum install git -y
$ git clone https://github.com/SaajidPasha10/fastapi-on-ec2-docker.git
$ sudo yum install docker -y
$ docker -v # Displays the installed Docker version, confirming that Docker is correctly installed and accessible.
$ sudo systemctl start docker # Starts the Docker service on your system, enabling Docker to run containers. This command requires superuser (sudo) privileges.
$ sudo systemctl status docker # Shows the current status of the Docker service, indicating whether it's active, inactive, or failed.
$ docker ps # Lists all currently running Docker containers, showing details like container
$ docker ps -a # Lists all containers on the system, including those that are stopped. The `-a` flag stands for `--all`.
$ docker build -t app  # Builds a Docker image from a Dockerfile located in the current directory (`.`). The `-t` flag tags the image with the name `app`.
$docker run -d  --name fastapi-on-ec2-app -p 8000:80 app
Now access the public IP : http://<publicip>:8000/

