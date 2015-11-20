# Blacklisting a module

masukkan list module yang akan di blacklist pada blacklist.conf dengan 
format:

```
...
blacklist [module-name]
...
```
Untuk command yang diatas semisal ada yang depend ke module tadi bisa jadi 
bakal di load. Selain cara tadi bisa juga pakai cara:

```
...
install module-name /bin/false
...
```

Untuk mengetahui moddul apa aja yang di black-list gunakan modinfo 
[module-name]. Setelah selesai gunakan command berikut as root:

```
# update-initramfs -u
# reboot
```

Untuk sementara pakai:

```
chmod +x blacklist-module.sh
./blacklist-module.sh
```

Baca [dokumentasi](https://wiki.debian.org/KernelModuleBlacklisting) untuk 
lebih jelasnya :))
