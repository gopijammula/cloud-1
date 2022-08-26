$resource_group_name = 'powershell'
$resource_group_location = 'westus'

# creating resource groups
$rsg = New-AzResourceGroup -Name $resource_group_name -Location $resource_group_location

$virtualnetworkprimaryname = 'vnetpowershell_primary'
$virtualnetworkadress = '10.100.0.0/16'

$app1 = 'app'
$web1 = 'web'
$db1 = 'db'
$cache1 = 'cache'

$web1_address = '10.100.0.0/24'
$app1_address = '10.100.1.0/24'
$cache1_address = '10.100.2.0/24'
$db1_address = '10.100.3.0/24'

$appsubnet1 = New-AzVirtualNetworkSubnetConfig -Name $app1 -AddressPrefix $app1_address

$websubnet1 = New-AzVirtualNetworkSubnetConfig -Name $web1 -AddressPrefix $web1_address

$cachesubnet1 = New-AzVirtualNetworkSubnetConfig -Name $cache1 -AddressPrefix $cache1_address

$dbsubnet1 = New-AzVirtualNetworkSubnetConfig -Name $db1 -AddressPrefix $db1_address

# adding subnets to the vnet
$primaryVnet = New-AzVirtualNetwork -Name $virtualnetworkprimaryname -ResourceGroupName $rsg.ResourceGroupName -Location $resource_group_location -AddressPrefix $virtualnetworkadress -Subnet $appsubnet1,$websubnet1,$cachesubnet1,$dbsubnet1

#creating secondary network

$virtualnetworksecondaryname = 'vnetpowershell_secondary'
$virtualnetworkadresssecondary = '10.101.0.0/16'

$app2 = 'app'
$web2 = 'web'
$db2 = 'db'
$cache2 = 'cache'

$web2_address = '10.101.0.0/24'
$app2_address = '10.101.1.0/24'
$cache2_address = '10.101.2.0/24'
$db2_address = '10.101.3.0/24'

$appsubnet2 = New-AzVirtualNetworkSubnetConfig -Name $app2 -AddressPrefix $app2_address

$websubnet2 = New-AzVirtualNetworkSubnetConfig -Name $web2 -AddressPrefix $web2_address

$cachesubnet2 = New-AzVirtualNetworkSubnetConfig -Name $cache2 -AddressPrefix $cache2_address

$dbsubnet2 = New-AzVirtualNetworkSubnetConfig -Name $db2 -AddressPrefix $db2_address

# adding subnets to the vnet
$secondaryVnet = New-AzVirtualNetwork -Name $virtualnetworksecondaryname -ResourceGroupName $rsg.ResourceGroupName -Location $resource_group_location -AddressPrefix $virtualnetworkadresssecondary -Subnet $appsubnet2,$websubnet2,$cachesubnet2,$dbsubnet2

# Creating NSG to primary network

$primary_Nsg = 'primaryNSG'

$primaryNsg = New-AzNetworkSecurityGroup -Name $primary_Nsg -ResourceGroupName $rsg.ResourceGroupName -Location $resource_group_location

#Setting NSG to primary group

Set-AzVirtualNetworkSubnetConfig -Name $app1 -VirtualNetwork $primaryVnet -NetworkSecurityGroupId $primaryNsg.Id -AddressPrefix $app1_address

Set-AzVirtualNetworkSubnetConfig -Name $cache1 -VirtualNetwork $primaryVnet -NetworkSecurityGroupId $primaryNsg.Id -AddressPrefix $cache1_address

Set-AzVirtualNetworkSubnetConfig -Name $db1 -VirtualNetwork $primaryVnet -NetworkSecurityGroupId $primaryNsg.Id -AddressPrefix $db1_address

$primaryVnet | Set-AzVirtualNetwork

# Creating NSG to secondary network

$secondary_Nsg = 'secondaryNSG'

$secondaryNsg = New-AzNetworkSecurityGroup -Name $secondary_Nsg -ResourceGroupName $rsg.ResourceGroupName -Location $resource_group_location

Set-AzVirtualNetworkSubnetConfig -Name $app2 -VirtualNetwork $secondaryVnet -NetworkSecurityGroupId $secondaryNsg.Id -AddressPrefix $app1_address

Set-AzVirtualNetworkSubnetConfig -Name $cache2 -VirtualNetwork $secondaryVnet -NetworkSecurityGroupId $secondaryNsg.Id -AddressPrefix $cache1_address

Set-AzVirtualNetworkSubnetConfig -Name $db2 -VirtualNetwork $secondaryVnet -NetworkSecurityGroupId $secondaryNsg.Id -AddressPrefix $db1_address

$secondaryVnet | Set-AzVirtualNetwork

#creating peers for primary to secondary network

$primarytosecondarypeer = 'primary_to_secondary'
Add-AzVirtualNetworkPeering -Name $primarytosecondarypeer -VirtualNetwork $primaryVnet -RemoteVirtualNetworkId $secondaryVnet.Id


#creating peers for primary to secondary network

$secondary_to_primarypeer = 'secondary-to-secondary'
Add-AzVirtualNetworkPeering -Name $secondary_to_primarypeer -VirtualNetwork $secondaryVnet -RemoteVirtualNetworkId $primaryVnet.Id


#Trying to create Ubuntu Image Using Poweshell Command

$Vm_Name = 'SonarCube'
$Vm_Location = 'East Us'
New-AzVM -ResourceGroupName $resource_group_name -Name $Vm_Name -Location $Vm_L

#deleting resource group

Remove-AzResourceGroup -Name 'ansible'