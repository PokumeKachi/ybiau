---
id: "fkms0bwp"
date: 2026-03-23 08:13:33
tags: [hack,network,mac,iwd,iwctl]
---

# How To Fake Your MAC

```bash
# bring your wifi down first
sudo ip link set wlan0 down
# fake the address
# MAC address is 6 hex bits:   1  2  3  4  5  6
# for the first bit: 02 or 06 or 0A or 0E
# for the rest just fake them: 00-FF
sudo ip link set wlan0 address 02:11:23:43:23:53
# done, now bring it back up
sudo ip link set wlan0 up
# go on with your business as usual
```

