A Docker container for ODLRC hackfest. Build it with:

```
docker build -t <yourname>/docker-odlrc .
```

Then go read https://github.com/HackODLRC/Vagrant-DebianBase - I've ganked the swift tools install script from there so a lot of what is written there will apply to the Docker image too. After the image builds, you can run a container thusly:

```
docker run -i -t <yourname>/docker-odlrc /bin/bash
```

And then run the swift script from inside the container. Hey presto, you've got a ~~stew going~~working swift install! Probably!

