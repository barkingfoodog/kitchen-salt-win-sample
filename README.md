# kitchen-salt-win-sample
Sample test kitchen project to demonstrate using salt as a provisioner on Windows 

# Requirements
I built this example with these versions running under macOS 10.11.6, but other versions and host OSes may work.
* Vagrant 1.8.1
* VirtualBox 5.0.20
* Ruby 2.2.3

# Vagrant box
This project uses a pre-built Windows 2012r2 box hosted by my company. It's conceivable this sample would work with another box but we pre-bake chocolatey, chef-client, busser, and serverspec to avoid needing to install them each time.

# Running the example
1. Install the requirements
2. Clone this repo
3. `cd` into it
4. `bundle` to install the gems
5. `kitchen test`

The last step will take awhile the first time as the box is downloaded and added to your local cache.

# Taking a peek
If you want to login to Windows and take a look, install Microsoft Remote Desktop and run this from within the repo:

1. `kitchen verify`
2. `kitchen login`
3. Authenticate as "vagrant" with the password "vagrant"
4. Log out and run `kitchen destroy` when you're all done

![Windows provisioned by salt vi test kitchen](/win_screenshot.png?raw=true)