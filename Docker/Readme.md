DOCKER
   
Monolithic Architecture:-
  
 --A single, unified codebase where all components of an application are tightly coupled and operate as a single unit.

Microservices Architecture:-

 --An application is divided into smaller, independent services, each responsible for a specific business functionality and communicating over APIs.
------------------------------------------------------------------------------------------------------
Adv
Monolithic:-
1. Faster to develop initially due to simpler architecture.
2. Easier to test end-to-end as everything is in one place.
3. Limited flexibility in adopting new technologies. 
 
DisAdv
1.Difficult to scale parts of the application independently.
2.A failure in one module can bring down the entire application.
 
 3.Simpler architecture but harder to manage as it grows.
 
Adv
Microservices:-
1. Flexible and allows for faster updates to specific services.
2. Easier to test individual services in isolation.
3. High flexibility to experiment with new tools or frameworks.
 
DisAdv
1.More complex to manage due to distributed nature.
2.Complex to design, deploy, and monitor.
 
 
    
Use Cases:-
Monolithic:-
     
1. For Small to medium-sized applications with fewer .
2.requirements for scaling or modularity.
   
Microservices:-
1.Large, complex applications needing scalability, durability, and flexibility. 
     
NOTE
Monolithic: Best suited for simpler, smaller applications or startups with limited resources.

Microservices: Ideal for large-scale, dynamic, and rapidly evolving systems where scalability, fault tolerance, and modularity are crucial.    
     
  
     
1. Traditional Deployment
     
Overview:- >>>> Applications run directly on physical servers. If multiple applications are needed, they are installed directly on the server, potentially causing conflicts.

Example: Running a database server and a web server on the same physical machine.
   
Challenges:
  
1.High resource wastage.
2.Hard to isolate applications.
3.Scalability is hardware-dependent.
     
     
2. Virtualization Deployment:-
  
A) Overview: Virtual machines (VMs) run on a hypervisor (e.g., zen ,VMware, Hyper-V) that abstracts physical hardware.

Example: A single physical server runs multiple VMs, each hosting a different OS (e.g., Windows, Linux).
B) Advantages:
1.Better resource utilization.
2.Application isolation via separate VMs.
3.Supports multiple operating systems on one machine.

C) Challenges:
1.Overhead due to the hypervisor.
2.Slower performance compared to containers.
              

3.Containerization Deployment:-

A)Overview: Containers virtualize at the OS level, packaging the application and its dependencies. They share the host OS kernel, making them lightweight.
Example: Docker containers hosting a Node.js application, a Python service, and an Nginx web server.

B) Advantages:
 
1. Lightweight and faster than VMs.
2. Easy to scale and deploy using orchestration tools (e.g., Kubernetes).
3. Platform-independent.
 


Key Differences Point-Wise

* Traditional Deployment: Direct installation on hardware. Resource-intensive and lacks scalability.

* Virtualization: Full OS abstraction using VMs. Improved resource utilization, but with some overhead.

* Containerization: Lightweight OS-level virtualization. Optimized for speed, scalability, and modern DevOps workflows.


Introduction to Containerization, Containers, and Images
  

1.Containerization:- It is a lightweight virtualization technology that enables packaging applications with their dependencies into a portable unit called a container.

** Containers run on a shared OS kernel but are isolated from one another, ensuring consistent application behavior across environments.

Purpose: To solve issues like "It works on my machine" by providing consistent runtime environments.


Key Features:

1. Lightweight and faster than traditional VMs.
2. Portable across different platforms (e.g., development, staging, production).
3. Efficient resource utilization by sharing the host OS kernel.


2. Container :-
A container is a standard unit of software that packages up the application code and its dependencies (libraries, runtime,      configuration files) so the application can run reliably in any computing environment.

Characteristics:

1. Isolated: Containers run independently of other applications.
2. Lightweight: Shares the host OS kernel, reducing overhead.
3. Portable: Can run consistently across different environments (e.g., development, testing, production).

** Use Case: Deploying a Python application in a container ensures that the same Python version and libraries are available regardless of the host environment.

Image:-
 
** A container image is a lightweight, standalone, executable package that includes everything needed to run a piece of software: the code, a runtime, libraries, and dependencies.

Key Points:

1. It is the blueprint or template for creating containers.
2. Immutable: Once built, images do not change.
3. Built using Dockerfiles (scripts specifying the environment and dependencies).
4. Stored in image repositories like Docker Hub, Amazon ECR, etc.

Example:

A Docker image for an Nginx web server includes the Nginx binaries, configuration files, and any necessary libraries.


* Relationship Between Containerization, Containers, and Images :-

* Containerization is the process and technology that enables creating and managing containers.

* Images act as templates to create containers.

*Containers are the running instances of these images, providing isolated environments for applications.




Introduction to Docker :--

Docker is a popular platform for developing, shipping, and running applications using containerization. It simplifies the deployment of applications by packaging them with their dependencies into containers.



Docker is an open-source platform that enables the use of containers for building, shipping, and running applications consistently across different environments.

Core Components of Docker:

1. Docker Engine: The runtime that runs and manages containers.

2. Docker Image: A template used to create containers.

3. Docker Container: A running instance of a Docker image.

4. Dockerfile: A script that defines the environment and configuration to build a Docker image.

5. Docker Hub: A public repository for sharing container images.

Key Features:

1. Lightweight and fast compared to Virtual Machines.
2. Provides isolation between applications.
3. Portable across development, testing, and production environments.

Advantages:


1. Consistency: Eliminates environment-specific issues.
2. Efficiency: Requires fewer resources by sharing the host OS kernel.
3. Portability: Containers run the same way on any system with Docker installed.
4. Scalability: Supports scaling applications easily with tools like Kubernetes.

How Docker Works:-

Step 1: A developer writes a Dockerfile to define an environment 
(e.g., install a specific Python version and libraries).
Step 2: The Dockerfile is used to build a Docker image.
Step 3: The Docker image is used to create and run Docker containers.
Step 4: The containers can be deployed in any environment, ensuring consistency.




----------------------------------------------------------------------------------------------
### 6. Install Docker Engine

- **Installation Steps:**
```
  - Update your system: `sudo apt-get update`
  - Install prerequisites: `sudo apt-get install apt-transport-https ca-certificates curl software-properties-common`
  - Add Docker's GPG key: `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
  - Set up the Docker repository: `echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
  - Install Docker: `sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io`
  - Verify installation: `docker --version`
 ```
### 7. Run First Container
- **Command to Run:**
  ```bash
  docker run hello-world
  ```
KEY COMMAND FOR DOCKER:-

Essential Docker Container Commands :-

Below are the essential Docker commands for container management:

Command	,Description, Example


docker run ----------Create and start a container.
ex-docker run nginx

docker start------Start an existing container.	                         
ex-  docker start 'container-id'

docker stop---------  Stop a running container.	                                   
ex- docker stop 'container-id'

docker ps -------List running containers.	                                 
ex-   docker ps

docker ps -a -----List all containers, including stopped ones.
```bash	             
docker ps -a
```

docker rm	-------  Remove a container.	                                      
ex-docker rm 'container-id'
ex> docker rm -f f9ba 4816 6fd1

docker logs	-----  Fetch the logs of a container.	                         
ex-docker logs 'container-id'

docker stats  ----- Show resource usage of running containers.	                     
ex-docker stats

docker exec	------  Execute a command in a running container.	                    
ex- docker exec -it 'container-id' bash

docker inspect ---Display detailed information about a container.	           
ex-  docker inspect 'container-id'

docker cp ------Copy files between a container and the host m/c.	            
ex- docker cp container-id:file-path host

docker prune --Remove unused containers and resources.	           
ex- docker container prune ---remove stop containe and its all data.

# docker system  prune
>>o/p --WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all dangling images
  - unused build cache

https://www.geeksforgeeks.org/docker-prune/

 Practical Examples
 
3.1. Creating and Running Containers:-

docker run -d -p 8080:80 --name web-server nginx

-d: Run container in detached mode.

-p: Map port 8080 on the host to port 80 in the container.

--name: Assign a name to the container.

3.2. Stopping and Starting Containers:-

docker stop web-server
docker start web-server

3.3. Listing Containers:-

docker ps
docker ps -a

3.4. Removing Containers:-

docker rm web-server
docker rm $(docker ps -aq) # Remove all containers

4. Interacting with Containers :-

4.1. Execute Commands Inside a Container

docker exec -it web-server bash
Access the shell of the running container.

4.2. Inspect a Container:-

docker inspect web-server

View configuration details and metadata of the container.

4.3. Viewing Logs

docker logs web-server

5. Expose Applications to the World:-

Use -p or -P with the docker run command to expose container ports to the host.
Example:
docker run -d -p 8080:80 nginx
This exposes the container's port 80 to port 8080 on the host.

docker exec -it c'ontainer-id' bash 
ls--cd /usr/share/nginx/html---cat > index.html

----<h1>hi </h1>---exit----hit nginx page

do same in http server-
---/usr/local/apache2/htdocs/index.html -----home dir of httpd inside docker .


6. Troubleshooting Containers:-

6.1. Monitoring Resource Usage

docker stats

6.2. Viewing Logs
docker logs web-server

6.3. Copying Files
docker cp web-server:/path of home dir/in/container 

docker cp index.html 481661a59780:/usr/share/nginx/html/

7. Activities for Students

Create a Container:

Run an NGINX container and access it via the browser.

Interact with a Container:
Execute a command inside a running container using exec.

Inspect a Container:
Use docker inspect to analyze metadata.

Experiment with Ports:
Expose different ports and test access.

Monitor Resource Usage:
Use docker stats to observe real-time resource utilization.




/usr/local/apache2/htdocs/index.html -----home dir of httpd inside docker .
/usr/share/nginx/index.html --------hme dir of nginx in docker

docker run -d -p 8080:80 nginx
This exposes the container's port 80 to port 8080 on the host.

docker exec -it 'container-id'bash 

ls--cd /usr/share/nginx/html---cat > index.html

<h1>hi </h1>---exit----hit nginx page



Docker Image:-

--A Docker Image is a lightweight, standalone, and executable package that includes everything needed to run an application: code, runtime, libraries, environment variables, and configurations.

--It serves as a template to create Docker containers.


manage Naming and Tagging:-

Naming Convention: repository:tag (e.g., nginx:latest).

Default Tag: If not specified, Docker assumes latest.

3. Docker Repositories:-

Docker Hub:-
Public registry for sharing and managing images.

Visit Docker Hub.

Amazon Elastic Container Registry (ECR) :-
AWS-managed private registry for storing container images.

ACR,GCR,ECR ----Docker images store registory.



Common Docker Image Commands

Command	                     Description	                   Exampl

----------------------------------------------------------------------------------------------------------
docker pull	------Download an image from a registry.	                
ex- docker pull nginx:latest

docker images -----	List all local images.	                                
ex-docker images

docker rmi	---------Remove an image.	                                
ex- docker rmi nginx:latest


docker tag  ----	Add a tag to an image.	                                
ex- docker tag nginx:latest myrepo/nginx:v1

docker commit	-----Create a new image from a modified container.	         
ex- docker commit 'container-id' myimage:v1

docker save	------Save an image to a tar file.	                         
ex- docker save -o nginx.tar nginx:latest

docker load	-------Load an image from a tar file.	                 
ex-docker load -i nginx.tar

docker prune	------Remove unused images.	
ex-docker image prune

5. Managing Docker Images

Pulling an Image
docker pull ubuntu:20.04

Tagging an Image

docker tag ubuntu:20.04 myrepo_name/ubuntu:v1
ex- docker tag nginx:latest anilbamnote/my-nginx-image

Pushing an Image
1 Login to Docker Hub
docker login -u anilbamnote

 
2 Tag to Image
docker tag nginx:latest anilbamnote/web- server:latest
   
3 Push the image

docker push anilbamnote/web-server:latest 

Removing an Image

docker rmi image name
ex- ~# docker rmi anilbamnote/webserver-image:latest nginx:latest ubuntu:20.04 my-repo/ubuntu:v1 httpd:latest 

Saving and Loading Images
docker save -o nginx_backup.tar nginx:latest

Load an Image
docker load -i nginx_backup.tar

Pruning Unused Images:-

Remove Dangling Images
docker image prune

Remove All Unused Images
docker image prune -a

Introduction to Docker Network:-

Docker networking allows containers to communicate with each other, the host system, and external networks. 

It plays a vital role in enabling microservices and distributed applications to function seamlessly.

Different Network Drivers:-

Docker provides several network drivers for various use cases. 
Each driver is optimized for different network configurations and scenarios:

Bridge Network:-

a> Default network driver for containers.

b> Containers connected to the same bridge network can communicate with each other.

c> Suitable for standalone containers.


Host Network:-

a> Removes network isolation between the container and the host.

b> The container shares the host's network stack.

c> Useful for performance-critical applications but reduces isolation.

None Network:-

a> No networking for the container.

b> Completely isolated from the host and other containers.

Overlay Network:-

a> Enables communication between containers across multiple hosts.

b> Used in Docker Swarm or Kubernetes environments.

c> Ideal for distributed applications.

Macvlan Network:-

a> Assigns a MAC address to the container, making it appear as a physical device on the network.


b> Provides direct layer 2 access for containers.

Custom Network Plugins:-

> Allows integration of third-party or custom networking solutions.

> Docker Network Commands

Create a Network:-
 
# Create a custom bridge network:-

sudo docker network create my_bridge_network
 

# Create an overlay network

sudo docker network create --driver overlay my_overlay_network


List Networks

# View all available networks

sudo docker network ls


Inspect a Network:-

# Inspect details of a specific network

sudo docker network inspect my_bridge_network


Remove a Network:-

# Remove a specific network

sudo docker network rm my_bridge_network


Run Containers with Specific Network

# Run a container attached to a specific network

sudo docker run --network my_bridge_network --name my_container -d nginx

Practical Steps:-

Example: Create and Use a Custom Bridge Network

Create a custom bridge network:-

sudo docker network create my_custom_network


Run containers in the custom network:

sudo docker run --network my_custom_network --name container1 -d nginx


sudo docker run --network my_custom_network --name container2 -d nginx

docker network create --subnet "192.168.0.0/16" --driver bridge newnetwork

docker run -d -P --network host nginx:latest

Verify network communication:

sudo docker exec -it container1 ping container2

Delete the network:

sudo docker network rm my_custom_network

Stop All Conatiner:-


docker stop $(docker ps -aq)

How to delete all conatiner:

docker rm $(docker ps -aq)

By understanding and leveraging Docker networking, you can build robust, scalable, and secure containerized applications.

Introduction to Docker Volume:-

Docker volumes are a persistent storage mechanism used to store data generated by and used by Docker containers. Volumes are stored outside the container filesystem and are managed by Docker itself, making them a preferred method for sharing data between containers or persisting data beyond the lifecycle of a container.

Key Benefits of Docker Volumes:-

Data Persistence: Data remains even if the container is deleted.

Sharing Data: Easily share data between multiple containers.

Backup and Restore: Simplifies the backup and restoration of container data.

Performance: Offers better performance for certain use cases compared to bind mounts.


Docker Volume Commands

Command Summary:

List Volumes:

#docker volume ls

Lists all volumes available on the host.

Create Volume:
---

docker volume create <volume_name>
---

Creates a new volume with the specified name.

Inspect Volume:-*****

...
docker volume inspect <volume_name>
...
Displays detailed information about the specified volume.


Remove Volume:
...
docker volume rm <volume_name>
...

Removes a specified volume.

Prune Unused Volumes:
...
docker volume prune
...

Removes all unused volumes to free up space.

Practical Examples:--

1. Create and Attach a Volume to a Container
Create a volume:

...
docker volume create my_volume
...

Run a container with the volume attached:
...

docker run -it --name my_container -v my_volume:/data busybox 
...

 
This command mounts the my_volume to the /data directory inside the container.


Write data to the volume: Inside the container:
...
echo "Hello, Docker Volumes!" > /data/hello.txt
...

Exit the container:


2. Inspect the Volume:-

Inspect the my_volume to verify its configuration:

...
docker volume inspect my_volume
...

3. Verify Data Persistence

Start a new container with the same volume:

...
docker run -it -d -P --name new_container1 -v my_volume:/data nginx 
...


Check the data: Inside the container:
...
docker exec -it container-id /bin/bash 
...
-----ls cd data---ls 
...
cat /data/hello.txt
...
The text Hello, Docker Volumes! should be visible, demonstrating data persistence.


4. Delete a Volume
Stop any containers using the volume:
...
docker stop my_container
...

...
docker rm my_container
...

Remove the volume:-
...
docker volume rm my_volume
...

5.Prune Unused Volumes:-

Remove all volumes not currently in use:
...
docker volume prune -f
...

Using Volumes with the -v Option

Bind Mount Example:
...
docker run -it --name bind_mount_example -v /host/path:/container/path nginux
...

...
docker exec -it id bash
...
-------ls cd data---ls---exit
# cd /----ls----host--ls-- ----host machine path
# cd container---container path---

This binds a directory on the host machine (/host/path) to a directory in the container (/container/path).


Anonymous Volume Example:

...
docker run -it --name anonymous_volume -v /data busybox
...

Docker creates an unnamed volume and mounts it to the /data directory in the container.

Named Volume Example:

...
docker run -it --name named_volume_example -v my_volume:/data busybox
...

Uses a named volume (my_volume) and mounts it to /data in the container.



Best Practices
Use named volumes for better manageability.
Avoid storing critical application data in anonymous volumes.
Regularly prune unused volumes to free disk space.
Use volume inspection to troubleshoot volume-related issues.

