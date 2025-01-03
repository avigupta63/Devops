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
---
  - Update your system: `sudo apt-get update`
  - Install prerequisites: `sudo apt-get install apt-transport-https ca-certificates curl software-properties-common`
  - Add Docker's GPG key: `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
  - Set up the Docker repository: `echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
  - Install Docker: `sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io`
  - Verify installation: `docker --version`
---
### 7. Run First Container
- **Command to Run:**
  ```bash
  docker run hello-world
  ```
