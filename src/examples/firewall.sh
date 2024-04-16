#!/bin/bash

# Flush the input and output chains
iptables -F INPUT
iptables -F OUTPUT

# Conntrack
iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

# SSH in
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# HTTP in
iptables -A INPUT -p tcp --dport http -j ACCEPT

# DNS out
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT

# Update policies
iptables -P INPUT DROP
iptables -P OUTPUT DROP

# Save it
iptables-save