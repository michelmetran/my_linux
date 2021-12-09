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

To install may applications

```bash
bash ./setup/applications.sh
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

To customize Nautilis and others

```bash
bash ./setup/databases.sh
```
