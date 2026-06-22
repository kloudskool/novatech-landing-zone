# Network design

Hub and spoke. The hub holds shared services, firewall and Bastion.

## Address plan

| Environment | Range |
| --- | --- |
| dev | 10.10.0.0/16 |
| prod | 10.40.0.0/16 |

The firewall subnet must be named AzureFirewallSubnet. Azure rejects any other name.

## Spokes

Each application team gets a spoke VNet peered to the hub.

The hub firewall inspects all spoke-to-spoke traffic.
