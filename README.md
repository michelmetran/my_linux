# My Linux

<br>

*Script* for installing different applications, adjusting settings, copying and pasting files and settings on an Ubuntu 20.04.

Intended to be used after Ubuntu 20.04 formatting.

```bash
# Clone Repo
cd ~/Downloads \
&& rm -r -f my_linux \
&& git clone git@github.com:michelmetran/my_linux.git \
&& cd my_linux
```

<br>

----

### Applications

To install my applications

```bash
bash ./setup/apps_cloud.sh
bash ./setup/apps_codes.sh
bash ./setup/apps_comunicate.sh
bash ./setup/apps_geo.sh
bash ./setup/apps_internet.sh
bash ./setup/apps_manutencao.sh
bash ./setup/apps_media.sh
bash ./setup/apps_office.sh
bash ./setup/apps_remote_desktop.sh
```

<br>

----

### Token

To install SafeSing Client, drivers, etc.

```bash
bash ./setup/token.sh
```

<br>

----

### Customization

To customize Nautilis and others

```bash
bash ./setup/customization.sh
```

<br>

----

### Databases

To install databases

```bash
bash ./setup/databases.sh
```
