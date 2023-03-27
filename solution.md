1. Briefly explain why AWS DynamoDB is chosen


2. Diagram that shows cloud-provider service selections for the proposed multi-cloud application.
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/multi-cloud-architecture.png)

3. I added the appropriate modules thorugh provided link in README file. I edit the **env variables** and **dns_name_label** ,for azure I edit the resources group.

4. For AZURE I edit the resource group name (line 2) and apply all the components in ```main.tf``` files. For AWS I added the all required components in ```main.tf``` file.

Terraform Apply changes on AWS
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/aws_added.png)

AWS web browser running
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/aws_web_browser.png)

AWS Terraform destory
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/aws_destroyed.png)

Terraform Apply changes on Azure
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/azure-apply.png)

Azure web browser running
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/azure_web_browser.png)

Azure Terraform destory
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/screenshots/azure_destory.png)

More screenshot present in screenshots folder.
