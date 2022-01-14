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
* [Retrospective](#Retrospective)
* [Future Development](#Future-Development)

## Project Brief

For this project, this team of 5 was taked with planning, designing and implementing a solution for automating the development workflow for a third-party application. Upon completion, this team is expected to provide a presentation on the project and how it was delivered. 

The Following individuals are a part of this team:

* Angus - Infrastructure, Networking and AWS Manager

* Bradley: Kubernetes Engineer

* Chester: Core Coder

* Jack: Scrum Master/Project Lead

* Mohammed: Debugger

## Scope

The scope of this project is to create a CI/CD pipeline for the following application:

- [Pet Clinic Angular](https://github.com/spring-petclinic/spring-petclinic-angular)
- [Pet Clinic Rest](https://github.com/spring-petclinic/spring-petclinic-rest)

The Angular portion of the application is the front end, which the user interracts with, while the rest is the back end which contains functionality such as the databases.

The team is required to plan, design and implement an automed deployment solution with the development workflow and for further drolpoyments of the applicaion. We have no restrictions on what technologies we're permitted to use, however we must use at least one form of Infrastructure as Code (IaC) such as Terraform, Kubernetes, Ansible or others. 

## Technical Design

This project requires the use of a variety of technologies, the following section is dedicated to discussing these technologies as well as the rationale for their use within this project.

* **Hardware and Peripherals:** 

* **Visual Studio Code (VSCode):**

* **Git:**

* **Amazon Web Services(AWS):**
 * **Amazon Elastic Compute Cloud(EC2):**
 * **Cloud Formation:**
 * **Amazon Simple Storage Service(S3):**
 * **Amazon Virtual Private Cloud(VPC):**
 * **IAM Roles:**

* **Jira:**

* **Github:** 

* **Jenkins:**

* **Docker:**

* **Kubernetes:**

* **Terraform:**

* **NGINX:**

* **Maven:**

## Risk Assessment

The following image is the Risk Assessment of the project

## CI Pipeline

The CI pipeline for this project follows the following design. Beginning in the development environment, this will then push and pull to a git repository while work is being conducted. Once the project is in a presentable state the project will be built. 
From here, it will trigger the Terraform file in a preestablished AWS server. This will then create appropriate environements within AWS. Kubernetes will then pull down all docker images needed and run them appropriately within the cluster. This will then be what is shown to the user. 

The following image displays this visually:

![CI-pipeline]()

## Project Management

This project is being managed through Jira, the industry standard technology for individuals, groups and businesses using agile methodologies. While this would normally be paird with Github in order to allow automated moving of user stories and tasks to in progress and done respectively, however due to issues involving the Jira and the Github being registered under seperate emails, we forwent this particular use.

You can find the link to the Jira can be found [here](https://ordecaos.atlassian.net/jira/software/projects/DTT/boards/6)

The following images displays the application through various days of working. 

#### Day 1

![Day 1]()

#### Day 2

![Day 2]()

#### Day 3

![Day 3]()

#### Day 4

![Day 4]()

#### Day 5

![Day 5]()

The Following Image displays the feature branch model within Git:



## Costs of the Project

Cost is always a known factor within a project. 

## Current State

The current state of the project is

## Known Issues

The Project has the following known issues

## Retrospective

In retrospect, when looking back and the project we as a team believe that

## Future Developments

If we were to take this project into the future