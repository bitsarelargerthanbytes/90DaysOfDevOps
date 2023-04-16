day07```# Day 7 Task: Understanding package manager and systemctl

### What is a package manager in Linux?
 
 In simpler words, a package manager is a tool that allows users to install, remove, upgrade, configure and manage software packages on an operating system. The package manager can be a graphical application like a software center or a command line tool like apt-get or pacman.

 You’ll often find me using the term ‘package’ in tutorials and articles, To understand package manager, you must understand what a package is.

### What is a package?
 
 A package is usually referred to an application but it could be a GUI application, command line tool or a software library (required by other software programs). A package is essentially an archive file containing the binary executable, configuration file and sometimes information about the dependencies.

### Different kinds of package managers
 Package Managers differ based on packaging system but same packaging system may have more than one package manager.

 For example, RPM has Yum and DNF package managers. For DEB, you have apt-get, aptitude command line based package managers.


## Tasks

 1) You have to install docker and jenkins in your system from your terminal using package managers

 2) Write a small blog or article to install these tools using package managers on Ubuntu and CentOS
    To install docker or jenkins you must first spin up a virtual machine of your choice. I personally suggest using an aws free tier account or the traditional way of a local virtual application such as VirtualBox. Once installed, choose a linux flavor of your choice (Ubuntu 18.04+) and run the commands "sudo apt install docker -y && sudo apt install jenkins -y --classic. It's as simple as that.

### systemctl and systemd

 systemctl is used to examine and control the state of “systemd” system and service manager. systemd is system and service manager for Unix like operating systems(most of the distributions, not all).


## Tasks

 1) check the status of docker service in your system (make sure you completed above tasks, else docker won't be installed)
    After install docker with snap, you must run "sudo snap start docker". Docker has been installed propery and is currently active and loaded.
 2) stop the service jenkins and post before and after screenshots
    sudo snap install docker
    sudo systemctl list-units --type=service | grep snap*
    sudo systemctl start snap.docker.dockerd.service
    sudo systemctl stop snap.docker.dockerd.service
 3) read about the commands systemctl vs service
    The systemctl command interacts with the SystemD service manager to manage the services. Contrary to service command, it manages the services by interacting with the SystemD process instead of running the init script -- source https://www.baeldung.com/linux/differences-systemctl-service#:~:text=The%20systemctl%20command%20interacts%20with,of%20running%20the%20init%20script. 
 eg. `systemctl status docker` vs `service docker status`

For Reference, read [this](https://www.howtogeek.com/devops/how-to-check-if-the-docker-daemon-or-a-container-is-running/#:~:text=Checking%20With%20Systemctl&text=Check%20what%27s%20displayed%20under%20%E2%80%9CActive,running%20sudo%20systemctl%20start%20docker%20.)


#### Post about this and bring your friends to this #90DaysOfDevOps challenge.```

