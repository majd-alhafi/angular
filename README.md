# Application README.md

This README.md file provides information about the Angular application and its specifications, as well as details about the webhook integration with a Jenkins server. 🚀

## AngularJS Application Specifications

- Angular CLI: 17.3.7
- Node: 20.13.1
- Package Manager: npm 10.7.0

## Webhook Integration with Jenkins Server 🎯

The Angular application is integrated with a Jenkins server using a webhook. This webhook is triggered on every push to the repository and executes the following steps: 🔄

```shell
IMAGE_NAME=majdalhafi/angular
CONTAINER_NAME=angular

docker build -t ${IMAGE_NAME}:${GIT_COMMIT} .
docker push ${IMAGE_NAME}:${GIT_COMMIT}
docker rm -f ${CONTAINER_NAME} >/dev/null 2>&1 || true
docker run -d -p 4200:4200 --name ${CONTAINER_NAME} ${IMAGE_NAME}:${GIT_COMMIT}
```

These steps involve building a Docker image, pushing it to a Docker registry, removing any existing container with the same name, and running a new container based on the newly built image. 🐳

Please ensure that the necessary dependencies (Docker, Jenkins, etc.) are properly installed and configured for this integration to work correctly. 🔧

## Additional Information ℹ️

For more details about AngularJS, please refer to the official Angular documentation and resources. 📚

For more information about Jenkins and webhook integrations, consult the Jenkins documentation or seek assistance from your system administrator or DevOps team. 📖

If you encounter any issues or have further questions, feel free to reach out to the project maintainers or the development team. 🙌

Happy coding! ✨👩‍💻👨‍💻
