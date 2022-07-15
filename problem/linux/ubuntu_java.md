# Ubuntu Java

**By default Ubuntu runs GCJ, the GNU Java, instead of Sun\'s Java.**

The \'easiest\' way to enable Sun\'s Java is to run it from your
launcher. For example:

    /usr/lib/jvm/java-1.5.0-sun/bin/java -Dplugins.dir=/home/&lt;YOURHOME&gt;/ImageJ 
        -Xmx128m -cp /opt/ImageJ/ij.jar:/usr/lib/jvm/java-1.5.0-sun/lib/tools.jar ij.ImageJ

this command line specifies the location of your plugins directory
(-Dplugins.dir), sets memory to 128 Mb (-Xmx128m) and allows plugins to
be compiled (/usr/lib/jvm/java-1.5.0-sun/lib/tools.jar). Note that this
is for Sun\'s Java 1.5 - it will need to be changed accordingly to the
version you are running.

Additionally, you can export the Java classpath in your .bashrc:

    export PATH=/usr/lib/jvm/java-1.5.0-sun/bin:$PATH

making sure that your \'JAVA_HOME\' is set to the proper folder in your
.bashrc:

    export JAVA_HOME=/usr/lib/jvm/java-1.5.0-sun

Or make an alias in your .bashrc for \'java\':

    alias java='/usr/lib/jvm/java-1.5.0-sun/bin/java'

(Based on Albert Cardona\'s email to the mailing list.)

A Debian-based repository can also be used, contributed and tested by
Paolo Ariano. It can be downloaded from:
<http://www.personalweb.unito.it/paolo.ariano/software.html>

## Java Installation on an Ubuntu based system

First install the Java version you want/need:

    sudo apt-get install sun-java6-jre sun-java6-plugin sun-java6-fonts

replace the 6 by 5, if you need a Java 5. You can also replace the jre
by jdk if you want a javac.

To change the default java command:

    sudo update-alternatives --config java

and select the Version you want.

You can check the result by:

    user@ubuntu:~$ java -version
    java version &quot;1.5.0_15&quot;
    Java(TM) 2 Runtime Environment, Standard Edition (build 1.5.0_15-b04)
    Java HotSpot(TM) Server VM (build 1.5.0_15-b04, mixed mode)
