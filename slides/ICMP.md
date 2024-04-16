## ICMP Module

The UDP module allows for matching some ICMP fields.
It is automatically loaded if `-p icmp` is used.

| Name          | Description                      |
| ------------- | -------------------------------- |
| `--icmp-type` | Matches the given ICMP type/code |

For valid types and codes, you can run `iptables -p icmp -h`.

| Name                    | Description                                 |
| ----------------------- | ------------------------------------------- |
| echo-request            | Outbound ping                               |
| echo-reply              | Inbound ping                                |
| destination-unreachable | The packet can't make it to the destination |


```bash
# This accepts pings and pongs
iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type echo-response -j ACCEPT
```