# Week 0 — Billing and Architecture
The week went with an introduction of various aspects of AWS and Cloud Architecture in general where the following tasks were performed as part of the assignment:

1. Creating an admin user group with AdminAccess role.
2. Creating IAM user, assigning it under Admin user group and setting up a multi-factor authentication using the Microsoft authenticator for better security.
3. Set up budget and cost limit for the AWS account.
4. Set up billing alerts for the free tier account for resource utilization remains within the scope of the free tier.
5. Recreated the conceptual diagram on paper with a slight variation compared to the original diagram with extra components for caching the messages and database query results. The architecture can be found at : [Napkin Diagram](https://github.com/adarshjhaa100/aws-bootcamp-cruddur-2023/blob/main/journal/week-0-napkin.jpg)  
5.1 Application gateway has been added for extra layer of security.

6. Recreated Logical Architectural diagram on Lucid using AWS components to detail the conceptual diagram. The chart can be found on lucid: [Logical Architecture Lucid](https://lucid.app/lucidchart/b2d2b408-879e-440b-8027-d819adfc01e7/edit?viewport_loc=157%2C-131%2C2378%2C875%2C0_0&invitationId=inv_742829bb-ac65-4851-bf6f-d24504eed454) 
   
7. Went through the well architectured tool. Created a sample workload and expored questions under the 6 pillars. 
8. Installed Azure CLI and went through few commands to:
8.1 Pull in account details
8.2 Pull in AWS resources, organization details
8.3 Explore the usage, expiration of the resources.  