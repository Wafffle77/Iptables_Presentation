## Targets

- Once a rule matches a packet, it usually does something with it.
- If a rule doesn't match a packet or doesn't have a target, the packet will continue to the next rule in the chain.
- Some targets:

| Name   | Description                                                                                                       |
| ------ | ----------------------------------------------------------------------------------------------------------------- |
| ACCEPT | Let the packet through                                                                                            |
| DROP   | Drop the packet on the floor                                                                                      |
| QUEUE  | Pass the packet to userspace for external processing                                                              |
| RETURN | Stop processing in this chain and go back to the previous one. If there is no previous chain, the policy is used. |
