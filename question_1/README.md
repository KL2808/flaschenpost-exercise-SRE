# Question 1 (Level 1):

Please write automation for infrastructure creation in Azure Cloud for:

1. Azure Resource Group
   - name – sre-challenge-flashenpost
   - tag – department: SRE
2. Azure Storage account
   - name – srechallengeforflaschenpost
   - resource-group - sre-challenge-flashenpost
   - SKU – Standard_LRS
   - Access tier HOT
   - tag – department: SRE
3. Storage Account Container
   - name – sre
   - type - private
   - storage account name – srechallengeforflaschenpost
4. Please add outputs to expose
   - Storage account ID
   - Storage account Primary access key
   - Storage account Primary connection string
   - Container ID

Assume:
• It is enough to save the output of the terraform plan,without actual creation of the infrastructure
• You use Terrafrom v1+
• You commit state file locally
• You use Azure West Europe Region

> Note: You might need to fix any problems that occur while trying to plan your terraform code
