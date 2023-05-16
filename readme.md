## Commands

1. To Build Image
- docker build -t kishmat/appname-xyz .

2. To see images
- docker images

3. To run container
- docker run -d -p 80:80 kishmat/appname-xyz

4. To see contianers
- docker ps

5. To push, (Need to login first)
- docker login

- docker push kishmat/appname-xyz

6. To stop the container from running
- docker stop <contianer-id>