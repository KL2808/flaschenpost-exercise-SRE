# Question 2(Level 2):

Your application team has developed a shop backend API, which runs on port 80.
The application team has asked you to deploy the created container image, which
has to be deployed on a Kubernetes cluster.

Your task:

1. Write a Kubernetes Deployment definition according to the expectations listed
   below:

   - The Deployment is configured to deploy a minimum of three Pod replicas; Every Pod runs a single container, strm/helloworld-http:latest
   - The container exposes port 80;
   - The container must have configured a LivenessProbe, which makes TCP
     requests to the port 80;
   - Additional configurations on the LivenessProbe:
     - Set initial probe delay to 10 seconds;
   - The container must have configured a ReadinessProbe, which makes HTTP requests to the “/” endpoint on port 80;
   - Additional configurations on the ReadinessProbe:
   - Set initial probe delay to 10 seconds;
   - Set check period to 1 second;
   - Set max probe failures to 2;

2. Set up a CronJob that outputs "Hello World" every thirty minutes.

**For this test assume that:**
The Deployment && Cronjob will be created in the default namespace ( it is not expected to define its own namespace);
Your solution will be applied using HELM or kubectl cli
The file you are editing should be written as a valid Helm chart or YAML files
Use Deployment object from apiGroup apps/v1
The Deployment will run on Kubernetes v1.20.

> Note: You might need to debug any problems that occur while trying to have this serve traffic. Document any fixes required in either a separate text file or alongside your code.
