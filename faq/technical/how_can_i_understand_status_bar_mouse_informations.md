## FAQ: How do I get the information from the cursor in the status bar?

When dragging the mouse over an image, ImageJ shows some information
about the pixel under the mouse cursor. This can however vary across
different plugins.

The information comes from the \"mouseMoved\" method, from a ImagePlus
inherited class.

    public void mouseMoved(int x, int y) {
      if (ij!=null)
        ij.showStatus(getLocationAsString(x,y) + getValueAsString(x,y));
        savex=x; savey=y;
    }

\"Directionality\" plugin example (Fiji) :

    public void mouseMoved(MouseEvent e) {
      Point coord = canvas.getCursorLoc();
      int x = coord.x;
      int y = coord.y;
      try {
        final ColorProcessor cp = (ColorProcessor) canvas.getImage().getProcessor();
        final int c = cp.getPixel(x, y);
        final int r = (c&amp;0xff0000) &gt;&gt;16;
        final int g = (c&amp;0xff00)&gt;&gt;8;
        final int b = c&amp;0xff;
        final float[] hsb = Color.RGBtoHSB(r, g, b, null);
        final float angle = hsb[0] * 180 - 90;
        final float amount = hsb[1];
        IJ.showStatus( String.format(&quot;Orientation: %5.1f Âº - Amont: %5.1f %%&quot;, angle, 100*amount));
      } 
      catch (ClassCastException cce) {
        return;
      }
    }

To understand the status bar information, please see manual, and/or the
source code\...
