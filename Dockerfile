FROM debian

#Get yourself into the /opt/ directory
WORKDIR /opt/

#Updates
RUN apt-get update
RUN apt-get upgrade -qq
RUN apt-get dist-upgrade -qq

#Install packages
RUN apt-get install -qqy git python3-venv ruby libffi-dev python3-dev graphviz gcc libssl-dev python3-pip

#In the /opt/ directory, clone the git
RUN git clone https://github.com/nadineOzz/polichombr.git 

#Dans /opt/polichombr
WORKDIR /opt/polichombr/

#Execute the install.sh file 
RUN chmod +x ./docker_install.sh \
&&  chmod +x ./run.sh

