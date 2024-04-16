include(common.m4)dnl
## Conntrack Module

The conntrack module allows matching against connection tracking states. Effectively, it allows turing the normally stateless iptables into a stateful firewall.

| Name        | Description                                |
| ----------- | ------------------------------------------ |
| `--ctstate` | Matches the connection state of the packet |

Some of the more common states are listed below:

| State       | Description                                                                                         |
| ----------- | --------------------------------------------------------------------------------------------------- |
| INVALID     | The packet is not associated with a connection                                                      |
| ESTABLISHED | The packet is associated with a connection that has packets in both directions                      |
| NEW         | The packet is associated with a new connection                                                      |
| RELATED     | The packet is starting a new connection but is associated with an existing connection (Such as FTP) |


```bash
# This accepts any packets that are a part of or related to an already established connection 
iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
```