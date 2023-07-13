# 2023 TDI Global Hackathon Google Cloud Code Examples

## Example 003 - gcloud cli - Cloud Run Service - with Docker Build & Public Endpoint
This example creates a google cloud run service with the gcloud cli. The service will run the Dockerfile located in the example root directory and compile the application code in the ```app-code``` folder. It then deploys the compiled container image to a new Cloud Run Service. 

When the cloud run service is read the exposed endpoint url is returned it to the user for public consumption.

The cloud run service will be public to the internet with not authentication. 

## Application Code
In this example the application code is written in Go. Should you not wish to use Go that is also totally acceptable. You just simply need to empty the app-code project and replace the contents of this folder with the correct contents of your new application. You will also need to update the ```Dockerfile``` to match the requirements of your new application source code. 
If you do this successfully and test the build of your ```Dockerfile``` locally and it is successful then the script ```run.sh``` should also still be able to successfully deploy the application to Cloud Run via Cloud Build and Artifact Registry.

## Running the example
1. Configure the gcloud CLI to reference your Google Cloud Project issued to your team for the hackathon. 
    > gcloud config set project PROJECT_ID

2. Make any desired modifications to your application via the ```app-code``` directory (Change the existing program or replce entirely).

3. Modify, update and or completely re-write the ```Dockerfile``` in the ```app-code``` directory.

4. Open the ```"run.sh"``` script file and modify the export variables at the top of the file to match your requirements.

5. Run the ```"run.sh"``` script.

6. If prompted, accept the creation of an Artifact Registry Repository.

6. When executed, visit the returned URL to see the container running. 


## Further Information and Links
For information on how gcloud cli builds application into a container and deploys it to cloud run view the [gcloud cli command docs here](https://cloud.google.com/sdk/gcloud/reference/run/deploy)


---
**Code Example: @timbohiatt (Google)**