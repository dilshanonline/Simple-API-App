# Simple API App

 1. Build the docker image by running the following command in the root directory of your application:

	`docker build -t api-app:latest .`

2. Run the docker container by running the following command:

	`docker run -p 8080:8080 api-app`

3. Test the API endpoints by opening a 
web browser and navigating to 
`http://localhost:8080/planning-tech` and 
`http://localhost:8080/world`.

	or use the curl command in a terminal,
`curl http://localhost:8080/planning-tech` and 
`curl http://localhost:8080/world`

