# DevOpps and Develop Environments

## DevOps

DevOps can mean different things to different people, its becomming a better understood concept.

# Development and Operations - breaking Silos -
- working together
- shared responsibilities
- deploy infrastructure as code
- automation

# Google data centres
- The engine of the internet, there are rows uopn rows of machines
- they managed zero lost time incedents
- they offer a level of secuity unmatched
- their IS team second to none - members have written the books 
- protecting user information is their priority
- custom server racks to optimise the computers
- pre authorise accessed list for different levels of security at different points of entry
- laser beam intruder detection
- at the time of the video they had changed cooling technologies at least 5 times, cooling system running 24/7 using water in coils 
- the face on innovation and challenging the ways they do things
- we used to use on prem services but now the cloud has enabled us to use data centres like google, with that we can do things that we may not have been able to do on premise

# Four areas we can look at as DevOps engineers


### Ease of use
- Other teams are going to use the tools we create. They wont use them if they are not user friendly
- we need to make sure that everything we make and as user friendly as possible
- if devs do not use our tools their will be headaches/ delays in development down the line


### Flexibility
- It can be easy to get locked in to using a particular product, tool or software. And it then becomes hard for the company to keep up with industry changes.
- Everything the company uses should be easily changed or updated as the business needs change.

### Robustness
- We need as close to 100% uptime as possible for our company's services.
- We are responsible for achieving this as DevOps Engineers


### Cost
- Cost is often overlooked. Wneed to make sure the company is being as efficent as possible in its tech dealings.
- For example how powerful a machine do we need to conduct a task? Do we need certain servers running? etc.


# Infrastructure and Architecture
- We will learn to build monoliths first
- Monolith - all on the same physical machine - considered bad practice
- 2 tier                            - 2 tier

- We will learn to make the monolith into microservices
- Mocroservices - 
- Containers allow us to create microservice architectures


### Tooling

# Risk register
- this shows the description eg. production server fails, the chance of occurance eg. medium, potential damage eg. loss of revenue, and the risk for your business if these things were to happen eg. high


# Dev Environments

- An area where developers can write their code, run the code, test the code
- Its a space on some machine somewhere which has all programs installed which enables them to write, test and run the code. 
- Our job is to create these environments for the dev team
- DevOps engineere create the Dev environment 
- We can standardise things, ensuring everyone can collaborate well, making sure that everyone is on the exact same system which makes everyones job easier.


# What makes a good Dev Environment?

- User friendly, fast and robust.
- It should be easy to update. - GIT can really help us with this - version control
- It should match the production environment as closely as possible
- It should be the same for everyone, everywhere. * A small difference is the programs and environments can break the applications.
- It should only support one application. * App1 requires version 1.1 - App2 needs version 1.4, this wont work, its best practice to use the same version, * App1 needs a proram and that program conflicts with another program that App2 needs.

