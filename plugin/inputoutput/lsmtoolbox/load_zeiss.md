\<code java\> /\* \* A simple example that shows how to use the JAVA
reflection API to load \* a ZEISS LSM image using LSM_Toolbox at ImageJ
runtime. Questions and \* comments to patrick@image-archive.org \*/

import ij.ImagePlus; import ij.plugin.PlugIn;

import java.lang.reflect.InvocationTargetException; import
java.lang.reflect.Method;

public class test_OpenLSM implements PlugIn{

      void test_openLSM(){
      }
      public void testRun() {
          Class readerClass;
          try {
              // we want to execute public ImagePlus[] open(String directory,
              // String filename,boolean showInfoFrames, boolean verbose, boolean
              // thumb)
              readerClass = Class.forName(&quot;org.imagearchive.lsm.toolbox.Reader&quot;);
              Object readerObject = readerClass.newInstance();
              Class[] parameters = { String.class, String.class, Boolean.TYPE,
                      Boolean.TYPE, Boolean.TYPE };
              Method openMethod = readerClass.getMethod(&quot;open&quot;, parameters);
              Object[] arguments = {&quot;directory_of_lsm_file&quot;, &quot;my_lsmfile.lsm&quot;,
                      false, false, false };
              ImagePlus[] imps = (ImagePlus[]) openMethod.invoke(readerObject,
                      arguments);

              // the following lines are just to show that it opened the files
              // correctly. Remove this in your plugin and do whatever you wish
              // with the ImagePlus[]
              if (imps != null) {
                  for (int i = 0; i &lt; imps.length; i++) {
                      imps[i].show();
                      imps[i].updateAndDraw();
                  }
              }
              
          } catch (ClassNotFoundException e) {
              e.printStackTrace();
          } catch (InstantiationException e) {
              e.printStackTrace();
          } catch (IllegalAccessException e) {
              e.printStackTrace();
          } catch (SecurityException e) {
              e.printStackTrace();
          } catch (NoSuchMethodException e) {
              e.printStackTrace();
          } catch (IllegalArgumentException e) {
              e.printStackTrace();
          } catch (InvocationTargetException e) {
              e.printStackTrace();
          }
      }

      @Override
      public void run(String arg) {
          testRun();
      }

} \</code\>
