# deploy-juiceshop
This is part of Applied Network Security Lab 1 to deploy a vulnerable server using Terraform.

Prior to running the code, Terraform and Docker need to be installed on Windows.

On Windows:
1. Download docker for Windows from https://docs.docker.com/desktop/windows/install/
2. Under Settings>General enable "Expose daemon on tcp://localhost:2375 without TLS"
![image](https://user-images.githubusercontent.com/48758700/137032192-1af7352a-bfb2-4f70-937b-e01e8e06b1be.png)
3. Install Terraform for Windows from https://www.terraform.io/downloads.html
4. Unzip terraform.exe and add its directory to the system's PATH environmental variable
5. Copy/Clone the code and run it with terraform (terraform apply)
6. Juiceshop should be running and accessible via port 8000 on the local host
![image](https://user-images.githubusercontent.com/48758700/137033024-b52ef507-3814-46c3-aef9-6e550c1945be.png)
