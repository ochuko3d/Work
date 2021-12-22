<!--Headings -->
# Process
<!-- body -->
##

The need to maintain a serverless infrastructure with minimal maintainance needed, that would automatically scale and have CI/CD Implemented

* **codecommit**: AWS properiary git repository to manage the companies sourse codes.
* **lambda**: AWS serverlesss
* **APi-Gateawy**: Forintgreating with lambda 
* **code pipeline**: To manage the source to deploy process code build.
* **artifact bucket**: An S#3 artifact and log bucket will be created and used
* **code build**: to build the terrraform code
* **IAM**: strict IAM roles and policies were used to ensure the principle of *least priveledges* was adhered to.

To build the infrastructure as code **Terraform** was used and to automate the various process a **bash script** should be used

<!--Headings -->
# Prerequisites
<!-- body -->
##
<!--OL -->
1. An Amazon Account, a set of credentials with Administrator permissions. ***Note***: In a production environment I would recommend locking permissions down to the bare minimum needed to operate the pipeline.

1. AWS-CLI, you can check the version installed, then install it if not already installed
    ```
        aws --version
        pip install awscli --upgrade --user
    ```
    Run aws configure to configure your credntials
    ```
        $ aws configure
        AWS Access Key ID [None]: 
        AWS Secret Access Key [None]: 
        Default region name [None]: us-east-1
        Default output format [None]: 
1. Download and install Terraform:
    ```
        wget https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
        unzip terraform_0.13.4_linux_amd64.zip
        sudo mv terraform /usr/local/bin/
        export PATH=$PATH:/usr/local/bin/terraform
    ```
1. Git needs to be installed on the workstation
