# Week-12---DevOps-Team-Task
A repository for the Week 12 QA Academy DevOps team task

## Contents

* [Project Brief](#Project-Brief)
* [Scope](#Scope)
* [Technical Design](#Technical-Design)
* [Risk Assessment](#Risk-Assessment)
* [CI Pipeline](#CI-Pipeline)
* [Project Management](#Project-Management)
* [Costs of the Project](#Costs-Of-The-Project)
* [Current State](#Current-State)
* [Known Issues](#Known-Issues)
* [How to run the Project](How-to-run-the-Project)
* [Retrospective](#Retrospective)
* [Future Development](#Future-Development)

## Project Brief

For this project, this team of 5 was taked with planning, designing and implementing a solution for automating the development workflow for a third-party application. Upon completion, this team is expected to provide a presentation on the project and how it was delivered. 

The Following individuals are a part of this team:

* Angus - Infrastructure, Networking and AWS Manager

* Bradley: Kubernetes Engineer

* Chester: Daddy

* Jack: Scrum Master/Project Lead

* Mohammed: Docker/Debugger

## Scope

The scope of this project is to create a CI/CD pipeline for the following application:

- [Pet Clinic Angular](https://github.com/spring-petclinic/spring-petclinic-angular)
- [Pet Clinic Rest](https://github.com/spring-petclinic/spring-petclinic-rest)

The Angular portion of the application is the front end, which the user interracts with, while the rest is the back end which contains functionality such as the databases.

The team is required to plan, design and implement an automed deployment solution with the development workflow and for further drolpoyments of the applicaion. We have no restrictions on what technologies we're permitted to use, however we must use at least one form of Infrastructure as Code (IaC) such as Terraform, Kubernetes, Ansible or others. 

## Technical Design

This project requires the use of a variety of technologies, the following section is dedicated to discussing these technologies as well as the rationale for their use within this project.

* **Hardware and Peripherals:** Despite the talk about the use of virtual machines and cloud computing, all work within computers must, at some point, be conducted through physical hardware. As such, this piece of technology has been chosen due to how central it is to having a completed product.

* **Visual Studio Code (VSCode):** A source-code editor, VSCode has been chosen not only for it's support for debugging and syntax highlighting, but also due to it's ability to connect to a variety of other technologies used within this project including Git, various types of cloud platforms and others. 

* **Git:** A version control system, Git is being used not only for it's ability to store the project as a whole but also due to the whole team having closer familiarity to it through the previous projects and time with QA as a whole. 

* **Amazon Web Services(AWS):** AWS is the industry standard for cloud computing providing a vast amount of resources for anything and everything a user would require for a project requiring cloud computing. We chose this specific technology due to the fact that it is industry standard, in order to provide the team more hands on experience, but also due to the number of resources available to it, which will be detailed in the following points.

 * **Amazon Elastic Compute Cloud(EC2):** EC2 instances provide a compute engine within the cloud that can create a variety of virtual machines to be used. This has been chosen as it is an essential technology in order to create environments for development, testing and deployment.

 * **Cloud Formation:** A services that provides developers an easy way to create collections of AWS and Third-Party resources. This team will be using this in order to host the Kubenetes clusters. 

 * **Amazon Simple Storage Service(S3):** S3 is a service that allows objects to be stored within AWS. We'll be using this to store any and all files that we need for the project but do not get frequently edited. 

 * **Amazon Virtual Private Cloud(VPC):** An AWS service that provides a private virtual network that is defined by the user. It closely resembles a traditional network from a data centre, but is scalable within AWS. We have chosen to use this technology as it is another essential portion of our project, allowing the project to be running within a private, secure network with internet access.

 * **Identity and Access Management(IAM) Roles:** IAM roles are able to specify which services, resources and other condition that certain users can use within AWS. We are using this as a security measure in order to ensure that users are only using appropriate resources, to be as cost effective as possible.

* **Jira:** The Industry Standard issue tracking software for agile methodology projects. Jira is being used within this project in order to manage and log tasks that have been completed within the project, with assigned story points to indicate the overall difficulty we believe that the task requires.

* **Jenkins:** A Continouous Integreation/Continuous Delivery and development tool, Jenkins is an all in one tool for DevOps. We will be using this due to familiarity with Jenkins, as well as providing all we needed within a single service, as opposed to AWS's CodeBuild, CodeDeploy and CodePipeline which is three seperate services to do a single action.

* **Docker:** A service that takes software and packages it into containers, Docker is an invaluable tool in making a project easily transportable. This is primarily why we are using it within our project and our docker files can be found [here](https://hub.docker.com/u/myounis789)

* **Kubernetes:** An orchestration tool for containers, Kubernetes allows containers to be deployed within Pods, within Clusters to allow for easy and simple deployment of images. We will be using this technology due to being more extensive than other alternatives.

* **Terraform:** An Infrastructre as Code software tool, terraform allows infrastructure to be created with a single command on the Cloud provider. We will be using this in order to create the infrastructure that is needed for the testing and deployment of the application.

* **NGINX:** A webserver that is also able to be used as a reverse proxy, load balancer and HTTP Cache. NGINX has been chosen for this project due to the teams familiarity with it, but additionally, the lead competeror, Apache, recently had a massive security breach which would be an issue with the project which contains databases of consumer information.

* **Maven:** A build automation tool for Java Project. The team is using this due to it already being implemented within the project before we began applying DevOps principals to it, using it as an opportunity to learn this new technology.

## Risk Assessment

The following image is the Risk Assessment of the project:

![Risk-assessment](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Risk%20Assessment.png?raw=true)

## CI Pipeline

The CI pipeline for this project follows the following design. Beginning in the development environment, this will then push and pull to a git repository while work is being conducted. Once the project is in a presentable state the project will be built. 
From here, it will trigger the Terraform file in a preestablished AWS server. This will then create appropriate environements within AWS. Kubernetes will then pull down all docker images needed and run them appropriately within the cluster. This will then be what is shown to the user. 

The following image displays this visually:

![CI-pipeline](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/CI%20Pipeline.png?raw=true)

## Project Management

This project is being managed through Jira, the industry standard technology for individuals, groups and businesses using agile methodologies. While this would normally be paird with Github in order to allow automated moving of user stories and tasks to in progress and done respectively, however due to issues involving the Jira and the Github being registered under seperate emails, we forwent this particular use.

You can find the link to the Jira can be found [here](https://ordecaos.atlassian.net/jira/software/projects/DTT/boards/6)

The following images displays the application through various days of working. 

#### Day 1

![Day 1](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Day1.png?raw=true)

#### Day 2

![Day 2](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Day2.png?raw=true)

#### Day 3

![Day 3](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Day3.png?raw=true)

#### Day 4

![Day 4](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Day4.png?raw=true)

#### Day 5

![Day 5](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Day5.png?raw=true)

The Following Image displays the feature branch model within Git:

![Branch]()

## Costs of the Project

Cost is always a known factor within a project. After some calculations, we have estimated that this project would cost $208.72 per month and $2,504.64 per year to run constantly for 24 hours a day. Converting this to british pounds, this is £152.88 per month and £1834.51 per year. 
This cost is estimated by our percieved needs with the project which is three micro t2 EC2 instances to run with NGINX load balancer as well as the containerised images of the application. There would also need to be a large t2 EC2 instance in order to contain Jenkins, Maven as well as the project files that are necessary for the project as a whole to work. Additionally, one EKS cluster is required in order to use Kubernetes within AWS to it's full extend. Two AWS Elastic IP's are also required, one for the Jenkins and Maven EC2 instance, and one for the primary project's VM's. Finally a NAT gateway to allow connections to and from the internet.

* EC2 t2.micro x3 = $30.37/£22.24

* EC2 t2.large = $56.55/£41.42

* AWS EKS = $73.00/$53.47

* AWS Elastic IP = $7.30/£5.35

* AWS VPC (NAT Gateway) = $41.50/£30.40

![Estimates_Cost](https://github.com/Ordecaos/Week-12---DevOps-Team-Task/blob/Jack/Images/Estimated%20Costs.png?raw=true)

## Current State

The current state of the project is that it will deploy sucessfully from Jenkins, using a load balancer as well as two VM's to run containers. The application does not test when deploying.

## Known Issues

The Project has the following known issues:

* The application does not test.

## How to run the Project

In order to run this application, you simply need to use 'terraform init', followed by 'terraform plan' and finally 'terraform apply --auto -approve'. This will initialise terraform, have it plan out the resources needed and finally apply it, automatically approving it.

## Retrospective

In retrospect, when looking back and the project we as a team believe that we did the best that we could do with the resources, time and knowledge available to us, with the application as it stands. If we were to attempt this project again, knowing what we know now, then we would most likely begin by making the appropriate changes to the application that we eventually conducted, including the changing and rebuilding of the images within the application itself.

## Future Developments

If we were to take this project into the future, we could focus on making the ci/cd pipeline more robust, allowing it to test the application with unit tests and end to end.
