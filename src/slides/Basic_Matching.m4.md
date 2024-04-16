include(common.m4)dnl
## Basic Matching

IP packet fields can be matched directly, without modules.

| Option                  | Description                                         |
| ----------------------- | --------------------------------------------------- |
| `-p`, `--protocol`      | Protocol of the packet (TCP, UDP, ICMP, etc.)       |
| `-s`, `--source`        | Source address                                      |
| `-d`, `--destination`   | Destination address                                 |
| `-i`, `--in-interface`  | Interface the packet came from (Only for INPUT)     |
| `-o`, `--out-interface` | Interface the packet is going out (Only for OUTPUT) |
| `-f`, `--fragment`      | Matches fragments                                   |
