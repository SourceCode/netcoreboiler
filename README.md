#NET Core 1.0 Boilerplate
The NET Core 1.0 Boilerplate is a vagrant box that installs Ubuntu 14.04, NET Core 1.0, and Node JS.  It also has optional packages you can install in the provision.sh shell script.

##System Requirements
* Vagrant

##Installation
- Clone this repository
- Enter the directory
- Note: If you have additional packages you would like included please read installing extra packages before running vagrant up.
- In your console type: vagrant up
- If everything works in the final screen a new NET Core hello world application will be compiled, ran, and output "Hello World!"
- If you would like to install additional packages you can configure them in vagrant/bootstrap.sh

###Additional Packages
Additional packages can be easily enabled in the vagrant/bootstrap.sh file.  You can also modify this file and add additional scripts.

####Currenty Additional Packages
- CouchDB
- MongoDB (Coming Soon)
- Cassandra (Coming Soon)
- Redis (Coming Soon)
- Nginx (Coming Soon)
- Apache2 (Coming Soon)

##Found a Bug or Have a Suggestion?
Please report your bug or suggestion to the [issues](https://github.com/SourceCode/netcoreboiler/issues) section.

##License

#####License Information
- MIT - https://opensource.org/licenses/MIT