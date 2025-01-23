# Using packwiz-installer
Installing
```
curl -OJL https://maven.neoforged.net/releases/net/neoforged/neoforge/21.1.90/neoforge-21.1.90-installer.jar
java -jar neoforge-21.1.90-installer.jar --install-server
curl -OJL https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar
java -jar packwiz-installer-bootstrap.jar -g -s server https://git.lenqua.link/minecraft/wondertech/raw/tag/latest/pack.toml
```

Updating
```
java -jar packwiz-installer-bootstrap.jar -g -s server https://git.lenqua.link/minecraft/wondertech/raw/tag/latest/pack.toml
```
