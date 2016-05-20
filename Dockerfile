FROM websphere-liberty
MAINTAINER Michel Vallee

ENV ibmInstaller=agent.installer.linux.gtk.x86_64_1.8.4000.20151125_0201.zip

#RUN groupadd -r wasadmin && useradd -r -g wasadmin wasadmin 

# copy I.M to image 
COPY $ibmInstaller /tmp/imm/ 
WORKDIR /tmp/imm/
# unzip I.M install it and delete all files. The installation log is written to /opt/im_install.log 
RUN unzip /tmp/imm/$ibmInstaller && ./installc -log /opt/im_install.log -acceptLicense && rm -rf /tmp/imm/ 

# change the user owner for IBM folder and subfolders to be wasadmin:wasadmin . 
# I use this for WebSphere based products. 
#RUN cd /opt && chown -R wasadmin:wasadmin IBM 
