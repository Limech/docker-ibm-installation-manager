### Description

Installs IBM Installation Manager.
Meant to be used as base image for other apps.

Requires the following files to be in the same folder as the Dockerfile.

* agent.installer.linux.gtk.x86_64_1.8.4000.20151125_0201.zip

#### To Build
`docker build -t ibm-installation-manager .`

#### To Run
`docker run -d --name myiim ibm-installation-manager`


