Member. A user expects to have access to internal-only sites. This user is not considered an external collaborator. This will be important when trying to exercise rights that come with privileged roles like Global Administrator.

Guest. indicates a user who isn’t considered internal to the company. This type of user will have restricted access and lookup rights in the directory

# To convert a user from UserType Guest to Member
  Install-Module AzureAD
# Authenticate to your Azure AD tenant
  Connect-AzureAD -TenantId <tenant Id>
# Search for your user by upn (just to be sure)
  Get-AzureADUser -SearchString aliaksei_zmitrukevich@epam.com
# Pass the output to Set-AzureADUser, setting UserType to member
  Get-AzureADUser -SearchString aliaksei_zmitrukevich@epam.com | Set-AzureADUser -UserType member


