# Packages

Add the following to your `/etc/pacman.conf` for adding the `rebornos-labs` repository:

```ini
[rebornos-labs]
SigLevel = Optional DatabaseNever
Server= https://github.com/rebornos-labs/packages/raw/main/repositories/$repo/os/$arch
```
