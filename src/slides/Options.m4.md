include(common.m4)dnl
## Options and Commands

| Name                    | Description                                                               |
| ----------------------- | ------------------------------------------------------------------------- |
| `iptables -A`           | Appends a rule based on a specification                                   |
| `iptables -D`           | Deletes a rule based on a specification                                   |
| `iptables -F`           | Flushes a chain (Removes all its rules)                                   |
| `iptables -P`           | Sets the policy for a chain (The action to take if no rules match)        |
| `iptables -L`           | Lists the rule set as in a human-friendly format                          |
| `iptables --list-rules` | Lists the rule set (as valid iptables commands)                           |
| `iptables-save`         | Saves the current rule set to a file (Usually `/etc/iptables/rules.v4`)   |
| `iptables-restore`      | Loads the current rule set from a file (Usually `/etc/iptables/rules.v4`) |

- `iptables` also takes the `-v` option to make it output some more information, such as rule counters.