# Alpine based docker base image with gosu

## What is gosu

https://github.com/tianon/gosu

Run it with passing in our UID:

	svx@beaker:~$ docker run -it -e LOCAL_USER_ID=`id -u $USER` $NAME_OF_IMAGE
	Starting with UID : 1000
	user@fc07b6c32b4f:/$ id
	uid=1000(user) gid=1000(user) groups=1000(user)
