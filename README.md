# init-headphone-ubuntu
Manage the headphone amplifier found in some Clevo laptops.
Can initialize the device if headphones are not working after suspend.

**Ubuntu package for [init-headphone](https://github.com/Unrud/init-headphone)**

## Installation
Go to [releases](https://github.com/Unrud/init-headphone-ubuntu/releases),
download the package for your distribution and install it.

## Build package

    # Download the source
    wget https://github.com/Unrud/init-headphone/archive/v0.14.tar.gz -O ../init-headphone_0.14.orig.tar.gz
    # Extract the source
    tar xf ../init-headphone_0.14.orig.tar.gz --strip-components=1
    # Build the package
    debuild -us -uc
