# Server-Building
For those who are lazy like me when it comes to deploying a fresh server.

# About
This toolkit contains several simple scripts to get a server spun up quickly. Right now we only support CentOS/RedHat but I will be adding files for Ubuntu soon.

## To use

clone this repo into any fresh server, you should probably have git installed first to do that. cd into your new directroy. chmod +x anything that you want to run, and run it! See detials below about what each thign does

### minimal-to-useable.sh

Run with sudo. This does what it says, takes a minimal CentOS install and makes it more useable. here is a rundown of what it does.
1. updates CentOS
2. installs net-tools nano and wget
3. installs telegraf
4. copies the telegraf-base config provided in this repo to the correct location
5. installs ZSH and Oh My ZSH.

### lazy-docker.sh
run with sudo. It installs docker, yes its a script, yes thats why its called lazy docker

### guac_dip-xx-xxx.sh
