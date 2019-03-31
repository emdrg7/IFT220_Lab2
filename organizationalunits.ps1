# brutforce script to make some organizational units

# you need to change "DC=ad,DC=edagli,DC=lan" to match your domain and update the ED initials to match or remove them

Write-HoED -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name ED_Computers -Path "DC=ad,DC=edagli,DC=lan" -Description "ED Computers"
 New-ADOrganizationalUnit -Name WorkEDations -Path "OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkEDations,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=ED_Computers,DC=ad,DC=edagli,DC=lan"
New-ADOrganizationalUnit -Name ED_Groups -Path "DC=ad,DC=edagli,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name ED_Privileged_Accounts -Path "DC=ad,DC=edagli,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name ED_Users -Path "DC=ad,DC=edagli,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
# Create a Leadership group for the President and VPs to access reEDricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=ED_Groups,DC=ad,DC=edagli,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
