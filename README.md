A Docker container for ODLRC hackfest. Build it with:

```
docker build -t <yourname>/docker-odlrc .
```

Then go read https://github.com/HackODLRC/Vagrant-DebianBase - I've ganked the swift tools install script from there so a lot of what is written there will apply to the Docker image too. After the image builds, you can run a container thusly:

```
docker run -i -t --privileged <yourname>/docker-odlrc /bin/bash
```

(privileged mode is needed to use /dev/fuse within the container for cloudfuse)

Hey presto, you've got a ~~stew going~~ working swift client install! Probably! The swift client shell script has already been run, so once you're in the container, all you (should) have to do is:

```
cd /swiftclient
source bin/activate
```

Don't forget to add your Swift credentials in .profile! Easy-peasy!

