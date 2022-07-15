# FAQ: Are there performance statistics to compare against my system?

**What is ImageJ\'s typical performance on various system
configurations, and how does my machine compare to them?**

ImageJ has a Benchmark utility you can run to evaluate your system\'s
performance.

1.  Start up a fresh ImageJ.
2.  Choose `Plugins` \> `New` \> `Macro` from the menu.
3.  Paste in the benchmark test macro *(from the box below, thanks to
    Gabriel Landini for providing it)*.
4.  Choose `Macros` \> `Run Macro` from the menu to execute the
    benchmark.
5.  Compare your results against the table below.

\<code java\> // 512x512 RGB Benchmark Test Macro // print(\"- - - \");
run(\"Lena (68K)\"); // a 512x512 RGB image id = getImageID;
print(\"ImageJ: \" + getVersion()); print(\"OS : \" +
getInfo(\"os.name\") + \" \" + getInfo(\"os.version\") +

        &quot; on &quot; + getInfo(&quot;os.arch&quot;));

print(\"Java: \"+ getInfo(\"java.version\") + \", vm: \" +

        getInfo(&quot;java.vm.version&quot;) + &quot; &quot; + getInfo(&quot;java.vm.vendor&quot;));

print(\"JRE: \"+ getInfo(\"sun.boot.library.path\"));

best = 100000; worst = -1; mean = 0;

for(i=0; i\<10; i++){

     t = getTime();
     run(&quot;Benchmark&quot;);
     thisrun = getTime()-t;
     mean += thisrun/10;
     if (thisrun&lt;best) best = thisrun;
     if (thisrun&gt;worst) worst = thisrun;
     print(&quot;Result &quot;+i+1+&quot;: &quot; + d2s(thisrun/1000, 3) + &quot; sec&quot;);

} print(\"Benchmark best : \" + d2s(best/1000, 3) + \" seconds\");
print(\"Benchmark mean : \" + d2s(mean/1000, 3) + \" seconds\");
print(\"Benchmark worst: \" + d2s(worst/1000, 3) + \" seconds\");

selectImage(id); close(); \</code\>

### 512x512 RGB Benchmark Results

  ------------- --------------------------------------------------- ---------------------------- ----------------------------------------------------------------------- ------------------------------------- ---------------
  **Results**   **Processor**                                       **Memory**                   **Operating System\                                                     **Java\                               **ImageJ\
                                                                                                 **                                                                      **                                    **

  0.104 s       Apple M1 ARM (2020 MacBook Air)                     16 GB                        macOS 11.2.3                                                            1.8.0_282 aarch64 (Azul ARM JRE 8)    1.53i

  0.111 s       Apple M1 ARM (2020 MacBook Air)                     16 GB                        macOS 11.2.3                                                            11.0.10 aarch64 (Azul ARM JRE 11)     1.53i

  0.190 s       Apple M1 ARM (2020 MacBook Air)                     16 GB                        macOS 11.2.3 (w/Rosetta2 x86_64 JRE emulation)                          1.8.0_172 x86_64 (Oracle x86 JRE 8)   1.53i

  0.197 s       Core i7-4790 3.6 GHz                                32 GB DDR3                   Opensuse Leap 15.1 (KDE 5.55) Kernel 4.12.14                            1.8.0_161                             1.52q43

  0.219 s       Core i7-6700 3.4 GHz                                16 GB DDR3                   Ubuntu 16.04 LTS Kernel 4.4.0                                           1.8.0_112                             1.53i

  0.253 s       Core i7-5820K 3.3 GHz                               32 GB DDR3                   Opensuse 13.2 64bit (KDE 4.14.9) Kernel 3.16.7-21-desktop                                                     

  0.302 s       Core i7-2760QM 2.4 GHz                              16 GB DDR3                   Opensuse 12.2 64bit (KDE 4.10) Kernel 3.4.28-2.20-desktop               1.7.0_15                              1.47m

  0.315 s       Core i7-3630QM 2.4 GHz                              16 GB DDR3                   Archlinux 64 Kernel 3.7.9                                               1.6.0_22                              1.47k

  0.32 s        Core i7 3.47 GHz                                    12 GB DDR3                   Ubuntu 11.04                                                            1.6.0_22                              ImageJ 1.45g

  0.42 s        Dual Intel Core 2 Quad 3.0 GHz                      16 GB DDR2                   Ubuntu 7.10                                                             1.6.0_04                              ImageJA 1.39r

  0.425 s       Quad Core 2 2.83 GHz                                8 GB DDR2                    Ubuntu 10.10                                                            1.6.0_24                              ImageJ 1.45e

  0.51 s\       Xeon 5160 (Dell PowerEdge 1950)                     8 GB (FBDDR667)              Red Hat Enterprise Linux 4 x86_64                                       jrockit-R27.4.0-jdk1.6.0_02 x86_64\   1.39n

  0.51 s\       Xeon 5160 (Dell Precision 690)\                     16 GB (FBDDR667)\            Windows\                                                                jrockit-R27.4.0-jdk1.6.0_02 x86_64\   1.39n
                                                                                                 2003 Server x64\                                                                                              

  0.54 s\       Xeon 5160 3 GHz (MacPro)                            4 GB (FBDDR667)              Mac OS X 10.5.1                                                         1.6dp8 x86_64\                        1.39n

  0.55 s\       Xeon 5160 (Dell PowerEdge 1950)\                    8 GB (FBDDR667)\             Red Hat Enterprise Linux 4 x86_64\                                      1.6.0_2 64-bit\                       1.39n

  0.588 s\      Intel Core 2 Quad 2.4 GHz                           8 GB (DDR2 667MHz)           openSUSE linux 11.3 64bit (KDE4.4.4) kernel:2.6.34.7-0.7-desktop        1.6.0_23 \[64bit\]                    1.44n6

  0.61 s        Xeon 5160 3 GHz (MacPro)                            4 GB (FBDDR667)              WinXP Pro SP2 32-bit\                                                   JRockit 6 R27.4 32-bit                1.39n

  0.612 s\      Intel Core 2 Quad 2.4 GHz                           4 GB (DDR2 667MHz)           openSUSE linux 11.2 64bit (KDE4) kernel:2.6.31.5-0.1-desktop            1.6.0_15                              1.43l6

  0.687 s\      Intel Core 2 Quad 2.4 GHz                           2 GB (DDR2 533MHz)\          openSUSE linux 10.3 32bit (KDE) kernel:2.6.22.13-0.3-default\           1.5.0_13                              1.39q

  0.693 s\      Intel Core 2 Duo 2.4 GHz                            2 GB DDR2 667MHZ             Mac OS X 10.5.6                                                         1.6.0_07                              1.42e

  0.695 s\      Intel Core 2 Duo 2.2 GHz (Macbook 3.1)              4 GB DDR2                    Mac OS X 10.6.2                                                         1.6.0_17 64-bit                       1.43l\

  0.735 s\      Intel Core 2 Quad Q6600 2.4 GHz (1066FSB, 8MB L2)   3 GB DDR2 800MHZ             Windows XP Home SP2 32-bit                                              1.6.0_02                              1.39q

  0.741 s\      Intel Core 2 Quad 2.4 GHz                           4 GB DDR3                    Ubuntu 7.10                                                             1.6.0 64-bit                          ?\

  0.802 s\      Intel Core 2 Duo 2.2 GHz                            2 GB DDR2\                   Ubuntu 7.04\                                                            1.6.0 32-bit                          ?\

  0.812 s\      Dual Xeon (single cores) 3.6 GHz\                   5.0 of 8.0 GB DDR2\          Windows XP 64-bit\                                                      ?\                                    1.38\

  0.85 s        Core 2 Duo 2.16 GHz (iMac)\                         2 GB DDR2 667\               Mac OS X 10.5.1                                                         1.6dp8 x86_64                         1.39n

  0.90 s\       AMD Opteron 856 2.8 GHz\                            16 GB DDR\                   CentOS 4 x86_64\                                                        jrockit-R27.4.0-jdk1.6.0_02 x86_64\   1.39n\

  0.93 s\       Xeon 5160 (Dell Precision 690)                      16 GB (FBDDR667)             Windows\                                                                1.6.0_3 32-bit\                       1.39n
                                                                                                 2003 Server x64\                                                                                              

  0.96 s\       2 x 2.66 GHz Dual-Core Intel Xeon (MacPro)\         5 GB 667 MHz DDR2 FB-DIMM\   Mac OS X 10.4.11\                                                       1.5.0_13\                             1.39f\

  1.014 s\      2 x 2.66 GHz Dual-Core Intel Xeon (MacPro)          5 GB 667 MHz DDR2 FB-DIMM\   Ubuntu 7.10 32-bit (via Mac OS X 10.4.11 using Parallels build 3214)\   1.6.0_03\                             1.39l\

  1.02 s\       Dual Xeon (single cores) 3.6 GHz\                   1.4 of 4.0 GB DDR2\          Windows XP 32-bit\                                                      ?\                                    1.38\

  1.025 s\      Intel Core 2 Duo 2.16 GHz (iMac)\                   2GB 667 MHz DDR2\            Mac OS X 10.4.11\                                                       1.6.0 beta\                           ?\

  1.11 s        Core 2 Duo 2.16 GHz (iMac)                          2 GB DDR2 667                Mac OS X 10.5.1                                                         1.5.0_13\                             1.39n

  1.13 s\       AMD Opteron 2212 2 GHz\                             4 GB DDR2\                   CentOS 4 x86_64\                                                        jrockit-R27.4.0-jdk1.6.0_02 x86_64\   1.39n\

  1.352 s\      2 x 2.66 GHz Dual-Core Intel Xeon (MacPro)          5 GB 667 MHz DDR2 FB-DIMM\   Windows XP 32-bit (via Mac OS X 10.4.11 using Parallels build 3214)\    1.6.0_02\                             1.39f\

  1.4 s\        Core Duo 1.83 GHz\                                  1.3 of 2.0 GB DDR2\          Mac OS X 10.5\                                                          ?\                                    1.37\

  1.5 s\        Intel Core Duo 2 GHz (MacBook Pro)\                 2 GB 667 MHz DDR2\           Mac OS X 10.4.11 (8S2167)\                                              1.5.0_13\                             1.38x\

  1.625 s       Intel Core Duo 2.0 GHz (Toshiba Satellite A100)     1 GB\                        Ubuntu Studio 7.10 32-bit\                                              1.6.0_04                              1.39p\
                                                                                                 kernel 2.6.22-14-rt\                                                                                          

  1.705 s\      AMD Athlon 64 X2 Dual Core 3600+                    2 GB\                        Windows Vista 32-bit                                                    1.6.0_01\                             1.38s

  2.163 s\      Intel Pentium 2.00 GHz (Dell Inspiron 700m)\        1 GB\                        Windows XP\                                                             1.6.0_02-b06\                         1.39q\

  2.635 s       Intel Core 2 Duo 2.2 GHz (Sony Vaio SZ650)\         2 GB DDR2                    Ubuntu 7.10 64-bit                                                      1.6.0_03                              1.39p

  2.733 s\      2 x 2.66 GHz Dual-Core Intel Xeon (MacPro)          5 GB 667 MHz DDR2 FB-DIMM\   Ubuntu 7.10 32-bit (via Mac OS X 10.4.11 using Parallels build 3214)\   1.5.0_09\                             1.39l\

  3.2 s\        AMD XP 3000+ 2.16 GHz\                              768 MB DDR\                  Windows XP\                                                             ?\                                    ?\

  3.5 s\        G5 2 GHz\                                           1.2 of 2.0 GB DDR2\          Mac OS X 10.4\                                                          ?\                                    1.38\

  3.5 s\        2.1 GHz PowerPC G5\                                 256 MB of 1 GB DDR2\         Mac OS X 10.4.10\                                                       1.5.0_07\                             ?\

  4.2 s\        Dual G4 1.25 GHz\                                   1.3 GB of 2 GB DDR\          Mac OS X 10.4\                                                          ?\                                    1.37\

  5.0 s\        Centrino 1.6 GHz (single core) (subnotebook)\       512 MB DDR\                  Windows XP\                                                             ?\                                    ?\

  6.37 s        G4 1.25 GHz (Mac Mini)\                             512 MB PC3200U               Mac OS X 10.4.11                                                        1.5.0_13                              1.38x

  6.55 s        Asus eee 704 (Celeron 900MHz)                       2 GB DDR2 667                Kubuntu 8.10, kernel 2.6.27-8-eee-lean (array.org)                      jdk 1.6.0_10                          1.42c

  100 s         Raspberry Pi mod.B                                  512 MB                       Raspbian "wheezy" 2013-02-09, Linux 3.6.11+                             OpenJDK 1.7.0_07, vm 22.0-b10         1.47r
  ------------- --------------------------------------------------- ---------------------------- ----------------------------------------------------------------------- ------------------------------------- ---------------

\
