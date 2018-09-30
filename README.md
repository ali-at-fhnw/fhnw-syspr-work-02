# System-Programmierung
## Hands-on zu Lektion 2
Für Slides und Code Beispiele, siehe [Lektion 2](../../../fhnw-syspr/blob/master/02/README.md)

> *Achtung: Arbeiten Sie nicht direkt auf diesem Repository.*<br/>
> *[Erstellen Sie eine persönliche Kopie, mit diesem GitHub Classroom Link](https://classroom.github.com/a/49WFpHaD).*

### a) Heap Struct, 20'
* In [struct.c](https://github.com/tamberg/fhnw-syspr/blob/master/02/struct.c) wird ein Struct auf dem Stack alloziert, mit return zurückgegeben und dabei "by value" kopiert.
* Schreiben Sie ein Programm *my_struct_v2.c*, das für *create_struct* Pointer und [malloc](http://man7.org/linux/man-pages/man3/malloc.3.html) verwendet:<pre>
    Point *create_point(int x, int y);</pre>
* Passen Sie den restlichen Code entsprechend an, der Compiler gibt Ihnen dabei nützliche Hinweise.

### b) Makros (auf Papier), 5'
* Gegeben ein Makro:<pre>
    #define max(A, B) ((A) > (B) ? (A) : (B))</pre>
* Und (separat) die Funktion:<pre>
    int max(int a, int b) { return a > b ? a : b; }</pre>
* Was passiert beim folgenden Aufruf?<pre>
    int i = 1, j = 0;
    int m = max(i++, j);
* m<sub>Makro</sub> = ?, m<sub>Funktion</sub> = ?</pre>

### c) Kompilationsprozess, 20'
* Kompilieren Sie schrittweise mit *cpp*, *gcc*, *as* und *ld*:<pre>
    $ echo "int main() {}" > my.c
    $ cpp my.c > my.i
    $ gcc -S my.i
    $ as -o my.o my.s
    $ ld -o my my.o …</pre>
* Sehen Sie sich den Inhalt des jeweiligen Outputs an.
* Versuchen Sie, den *ld* Schritt zum Laufen zu bringen.
* Objekt- bzw. Binärdateien können Sie anzeigen mit:<pre>
    $ objdump -x my.o
    $ hexdump -C my</pre>

### d) Kilo.c, 30'
* Analysieren Sie den Source Code dieses Programms:<pre>
    https://github.com/antirez/kilo/blob/master/kilo.c</pre>
* Kompilieren Sie das Programm und benutzen Sie es.
* Was macht das Programm? Gibt es extra Features?
* Was fällt Ihnen im Source Code besonders auf?

### Abgabe (optional)
* Lokale Änderungen [committen und pushen](#git).
* GitHub [Issue erstellen](../../issues/new) mit "Bitte um Review, @tamberg".
* Offene Fragen ausformulieren, was geht nicht, was haben Sie versucht.
* GitHub mailt mir (@tamberg) automatisch, ich versuche in weniger als 24h zu antworten :)

## Tools
### Git
Auf Ihrem Computer
* Zu Beginn jeder Lektion wird der Hands-on Repository Link freigeschaltet
* Nachdem Sie das "Assessment" annehmen, bekommen Sie per Email ein Repository
* Die REPO_URL enthält Ihren GitHub Account USER_NAME und Ihre Klasse 3ia oder 3ib, z.B.<br/>
            https://github.com/fhnw-syspr-3ia/fhnw-syspr-work-02-tamberg

Auf dem Raspberry Pi
* Repository klonen<pre>
    $ cd ~
    $ git clone REPO_URL</pre>
* Neue Datei kreieren<pre>
    $ git add FILE</pre>
* Änderungen committen<pre>
    $ git commit FILE -m "Fixed all bugs"</pre>
* Änderungen hochladen<pre>
    $ git push</pre>

### Nano
Auf dem Raspberry Pi
* Neue oder bestehende Datei öffnen mit $ nano FILE
* Editieren (Achtung, nano hat kein Undo)
* Speichern mit `CRTL-X` `Y` `RETURN`

### SSH
Auf Ihrem Computer
* Terminal öffnen (Mac) oder `WINDOWS` `R` cmd `RETURN` (Windows)
* SSH Session starten mit<pre>
    $ ssh pi@raspberrypi.local</pre>

## Support
- [FHNW Syspr Slack](https://fhnw-syspr.slack.com/)
