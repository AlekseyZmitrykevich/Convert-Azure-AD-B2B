# To convert a user from UserType Guest to Member
Install-Module AzureAD

# Authenticate to your Azure AD tenant
Connect-AzureAD -TenantId <tenant Id>

# Search for your user by upn (just to be sure)
Get-AzureADUser -SearchString aliaksei_zmitrukevich@epam.com

# Pass the output to Set-AzureADUser, setting UserType to member
Get-AzureADUser -SearchString aliaksei_zmitrukevich@epam.com | Set-AzureADUser -UserType member
