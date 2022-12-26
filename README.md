The code  defines a Helm chart that deploys two application containers (a frontend app and its backend) into a Kubernetes cluster and configures Ingress to access the applications using sample Docker images for the frontend, backend, and nginx.

The Helm chart consists of several files:

templates/deployment.yaml: This file defines two Deployment resources, one for the frontend application and one for the backend application. Each Deployment resource specifies the Docker image to use for the container, as well as the port that the container will listen on.

templates/service.yaml: This file defines two Service resources, one for the frontend application and one for the backend application. Each Service resource uses the ClusterIP type, which exposes the application to other resources within the cluster, but not to external traffic. The Services also define a port for each container, which allows other resources in the cluster to access the application using the specified port.

templates/ingress.yaml: This file defines an Ingress resource to expose the frontend application to external traffic. The Ingress resource specifies a hostname and a path that can be used to access the application.

templates/ingress-controller.yaml: This file defines an Ingress controller to manage the Ingress resource. The Ingress controller uses an NGINX Ingress controller to handle incoming traffic and route it to the appropriate backend application.


installation.sh: provides the code to install helm chart, kubernettes and other things needed for the installation on an aws ec2 instance


deploy.sh: This file contains the deployment script for the chart