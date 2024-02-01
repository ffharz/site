# site-ffharz

Hier findet sich die aktuelle Gluon-Site-Konfiguration vom Freifunk Harz.
Eine genaue Anleitung zum Firmware backen und aktuelle Releaseinformationen findet man unter <https://gluon.readthedocs.io/en/latest/>

## eigenes Image bauen

```bash
git clone https://github.com/freifunk-gluon/gluon.git gluon -b RELEASE
cd gluon
git clone https://github.com/ffharz/site-ffharz.git site
cd ..
git clone https://github.com/ffharz/gluon-package.git
cp -r gluon-package/*-* gluon/package
cd gluon
make update
make GLUON_TARGET=$TARGET GLUON_AUTOUPDATER_BRANCHE=$BRANCH
```

Die Variabeln müssen entsprechend ersetzt werden! Ein `make all` sollte nicht verwendet werden!
Alle $TARGET können mithilfe einer Schleife gebaut werden (dauert lange!).

```bash
for TARGET in $(make list-targets); do
  make GLUON_TARGET=$TARGET
done
```

Damit das Konsolenfenster (SSH) während des build-Vorganges geschlossen werden kann, kann der Befehl `nohup` (Ausgabeumleitung in Datei nohup.log) oder `screen` genutzt werden

Die verfügbaren `$TARGET` für die jeweilige Gluon-Version findet man unter <https://gluon.readthedocs.io/en/latest/user/supported_devices.html>

Wir nutzen aktuell folgende `$BRANCH`:

- experimental
- stable

In CHANGELOG.md liegen die Info's zu den Änderungen an der Site!

## Image signieren

- ecdsautil muss installiert und eingerichtet werden, damit die Firmware signiert werden kann
- das Manifest wird erstellt mit:

    `make manifest GLUON_BRANCH=experimental`

- anschließend kann es mit folgendem Befehl signiert werden:

    `contrib/sign.sh $SECRET output/$RELEASE/$BRANCH/images/sysupgrade/$BRANCH.manifest`
