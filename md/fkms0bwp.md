---
id: "fkms0bwp"
date: 2026-03-23 08:13:33
tags: [hack,network,mac,iwd,iwctl]
---

# How To Fake Your MAC

```bash
# MAC address = 6 bytes (48 bits)
# For a locally administered unicast MAC, the first byte's
# two least-significant bits must be 10.
# Simple examples: 02, 06, 0A, 0E
# The remaining bytes can be chosen freely.

sudo ip link set wlan0 down
sudo ip link set wlan0 address 02:11:23:43:23:53
sudo ip link set wlan0 up
```

