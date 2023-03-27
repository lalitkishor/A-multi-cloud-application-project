. Briefly explain why AWS DynamoDB is chosen

For NOSQL database AWS provides the DYNAMO DB and Azure provides the Cosmos DB, both services are
available worldwide, higly reliable and sclable. Pricing depend on many factors.
Azure backup cost is $0.12 per GB-Month but AWS DynamoDB Table Backup cost is $0.15 per GB.
AWS offers 1.25$ per million write request [on demand](https://aws.amazon.com/dynamodb/pricing/on-demand/) mode.
Writes(On-Demand)
AWS DynamoDB	Write Request Unit	$1.25/1 million write request units
Azure Cosmos DB – Serverless	Request Units(RU)	$0.25/1 million RUs
Reads(On-Demand)
DynamoDB	Read Request Unit	$0.25/1 million read request units
Azure Cosmos DB – Serverless	Request Units(RU)	$0.25/1 million RUs

. Diagram that shows cloud-provider service selections for the proposed multi-cloud application.
![img](https://github.com/lalitkishor/A-multi-cloud-application-project/blob/master/multi-cloud-architecture.png)

. I added the appropriate modules thorugh provided link in README file. I edit all the **env variables** and **dns_name_label** .

. For AZURE I edit the resource group name (line 2) and apply all the components in ```main.tf``` files. For AWS I added the all required components in ```main.tf``` file.

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
