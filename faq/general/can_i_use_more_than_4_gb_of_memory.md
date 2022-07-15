# FAQ: Can I use more than 4 GB of memory?

**There have been many discussions on the internet about the maximum
available memory Java programs can use. I\'d like to use more than 4
gigabyte of memory in ImageJ, is that possible?**

Yes, you can if you use a linux AMD64 and sun java runtime environment.
I used ubuntu (<http://www.ubuntu.com>) version 7.04 AMD64 and tested on
an AMD athlon and an AMD dual opteron system. Although the sun website
says that the only system able to use more memory is solaris I found no
problems increasing the memory size up to 8 GB using the following
statement:

    java -jar -XmxNg -XX:+AggressiveHeap ij.jar

Where N is replaced for the number of gigabytes you like to use.

Note: Using more memory than the amount of ram you have makes the system
very slow, and make sure that you use the right java binary, or point
directly to the sun java binary, for ubuntu that is:

    /usr/lib/jvm/java-6-sun/jre/bin/java

#### See also:

-   [How do I increase the memory in
    ImageJ?](/faq/technical/how_do_i_increase_the_memory_in_imagej)

```{=html}
<!-- -->
```
      Can I increase the memory available to ImageJ? If so, how?
    * [[faq:technical:my_image_stack_is_too_large|My image stack is too large!]]
      The image stack I am trying to load is too large for the memory I can allocate. Is there any way I can load it?
    * ImageJ performance tuning
      How to optimize both memory and speed, for users and plugin developers. 
