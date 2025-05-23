# journal-vsock-sink

A simple systemd service which receives journal messages from a VM over VSOCK.

The received journal messages are stored in `/var/log/journal/vsock` and
can be viewed via:
```bash
journalctl --directory /var/log/journal/vsock
```

See https://github.com/adombeck/journal-vsock-export for the counterpart
on the VM which sends the messages.

## Installation

1. Clone the repository
2. Run `sudo ./install.sh`
