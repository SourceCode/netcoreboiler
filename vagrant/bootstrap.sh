# NET Core 1.0 Boilerplate
# Repo: http://github.com/SourceCode/netcoreboiler
# License: MIT

###################################################################################
# This file bootstraps the required repositories for NET Core 1.0 on Ubuntu 14.04 #
###################################################################################

###################################################################################
# Bootstrap Configurations
#
# Note: Mark items as true to install them
###################################################################################
couchDB=false

###################################################################################
# Install essential build tools
###################################################################################
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y build-essential

###################################################################################
# Allows management of source repositories
###################################################################################
sudo apt-get install software-properties-common -y

###################################################################################
# Install unzip and curl
###################################################################################
sudo apt-get install -y unzip curl mlocate 

###################################################################################
# Install Node JS
###################################################################################
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

###################################################################################
# Install NET Core 1.0
###################################################################################
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
sudo apt-get update
sudo apt-get install -y dotnet-dev-1.0.0-preview2-003121

if [ ! -d "hwapp" ]; then
	# First time provision so lets build and test an app in .NET
	mkdir hwapp
	cd hwapp
	dotnet new
	dotnet restore
	dotnet run
else
	echo 'It looks like you have already provisioned this box'
	echo 'If your hwapp dotnet app still exists we will test it now'
	dotnet restore
	dotnet run
fi

###################################################################################
# Optional Package Installation Scripts
#
# Note: Packages are configured in the configuration area above
###################################################################################

#+++++++++++++++++++++++++++++
# CouchDB
#+++++++++++++++++++++++++++++
if [ "$couchDB" = true ] ; then
    sudo add-apt-repository ppa:couchdb/stable -y
	sudo apt-get update
	sudo apt-get remove couchdb couchdb-bin couchdb-common -yf
	sudo apt-get install couchdb -y
	curl localhost:5984
fi

#+++++++++++++++++++++++++++++
# Nginx
#+++++++++++++++++++++++++++++

#+++++++++++++++++++++++++++++
# Apache2
#+++++++++++++++++++++++++++++

#+++++++++++++++++++++++++++++
# MongoDB
#+++++++++++++++++++++++++++++

#+++++++++++++++++++++++++++++
# Redis
#+++++++++++++++++++++++++++++

#+++++++++++++++++++++++++++++
# MySQL
#+++++++++++++++++++++++++++++

#+++++++++++++++++++++++++++++
# Cassandra
#+++++++++++++++++++++++++++++

###################################################################################
# Update Locate Command
###################################################################################
echo 'Updating locate command cache'
sudo updatedb

###################################################################################
# Everything is finished
###################################################################################
echo "Everything is built and running. Where would you like to go today?"