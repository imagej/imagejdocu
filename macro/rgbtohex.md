# RGBtoHEX

**This simple macro exemplifies how to use ImageJ macro functions to
convert RGB color values into Hex notation.**

------------------------------------------------------------------------

##### Code:

\<code java\> // This simple macro exemplifies how to use ImageJ macro
functions to convert RGB color // values into Hex notation. * * After
obtaining the RGB tripplet of the current foregound color, the macro
prompts // the user to choose an alpha blending value. Choice is then
converted into a four-byte // hex number (#AARRGGBB) that is copied to
the clipboard and can be pasted directly into // the
\'Image\>Overlay\>Add Selection\... \[b\]\' dialog box. * * As for RGB
values, alpha values range from 0 (fully transparent) to 255 (solid
color). // This wikipedia article on \'web colors\' has more information
on hex color notation: // <http://en.wikipedia.org/wiki/Web_colors> * *
T.Ferreira, 20010.01

      fColor = getValue(&quot;color.foreground&quot;);
      r = (fColor&gt;&gt;16)&amp;0xff; g = (fColor&gt;&gt;8)&amp;0xff; b = fColor&amp;0xff;
      fColor = &quot;&quot;+r+&quot;, &quot;+g+&quot;, &quot;+b;

      Dialog.create(&quot;RGB to Hex&quot;);
      Dialog.addString(&quot;RGB values (0-255) separated by \&quot;,\&quot;:&quot;, fColor);
      Dialog.addNumber(&quot;Opacity value (0-100%):&quot;,100);
      Dialog.addMessage(&quot;(These values refer to current foreground color)&quot;);
      Dialog.show;
      cColor = Dialog.getString;
      cAlpha = Dialog.getNumber;

      fColor = split(cColor,&quot;,&quot;);
      if(fColor.length!=3)
          exit(&quot;Invalid input&quot;); 
      r = toHex(fColor[0]); g = toHex(fColor[1]); b = toHex(fColor[2]);
      fAlpha = toHex(255*cAlpha/100);
      hex= &quot;#&quot; + pad(fAlpha) + &quot;&quot;+pad(r) + &quot;&quot;+pad(g) + &quot;&quot;+pad(b);

      String.resetBuffer; String.copy(hex);
      showMessage(&quot;RGB to Hex&quot;, &quot;RGB value:  &quot;+ cColor+&quot; (&quot;+cAlpha+&quot;% Opacity)\n&quot;+
                                &quot;HEX value:  &quot;+ hex +&quot;\n \n&quot;+
                                &quot;(Result has been copied to clipboard)&quot;);

function pad(n) {

      n = toString(n);
      if(lengthOf(n)==1) n = &quot;0&quot;+n;
      return n;

}

\</code\>
