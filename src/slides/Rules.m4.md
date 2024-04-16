## Rules

- Match criteria
    - Determine what packets the rule operates on with various criteria.

- Target(s) (optional)
    - If a target isn't specified, the rule does nothing except increment its counters.

- Counters
    - Each rule has two counters
        - Bytes: Records the total number of bytes in the packets that match this rule
        - Packets: Records the total number of packets that match this rule.
    - The counters are increased as long as a packet matches the rule, regardless of whether or not the rule has a target.