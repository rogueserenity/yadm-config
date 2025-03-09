# rogueserenity's yadm configuration

## Additional configuration

### Ignore this README

```shell
yadm sparse-checkout set --no-cone '/*' '!README.md' 
```

### Enable Touch ID for sudo

```shell
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
sudo sed -i '' '/pam_tid.so/s/^#//' /etc/pam.d/sudo_local 
```
