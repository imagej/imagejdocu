# How to convert data type X into type Y in Java

**The examples below show how to convert between different data types in
Java. This is useful if you write your own plugins.**

## integer to String :

    int i = 42; \\ String str = Integer.toString(i);

or

    String str = &quot;&quot; + i; 

## double to String :

     String str = Double.toString(d);

or (in ImageJ only):

     String str1 = IJ.d2s(d, n);  // n (0...9) digits to the right of the decimal point
     String str2 = IJ.d2s(d);     // 2 digits to the right of the decimal point

## long to String :

     String str = Long.toString(l);

## float to String :

     String str = Float.toString(f);

## String to integer :

     str = &quot;25&quot;;\\  int i = Integer.valueOf(str).intValue();

or

     int i = Integer.parseInt(str);

## String to double :

     double d = Double.valueOf(str).doubleValue();

or (in ImageJ only):\

     double d = Tools.parseDouble(str, defaultValue);\\     // results in defaultValue if the string str results in no valid number

## String to long :

     long l = Long.valueOf(str).longValue();

or

     long l = Long.parseLong(str);

## String to float :

     float f = Float.valueOf(str).floatValue();

## decimal to binary :

     int i = 42;\\  String binstr = Integer.toBinaryString(i);

## decimal to hexadecimal :

     int i = 42;\\  String hexstr = Integer.toString(i, 16);

or

      String hexstr = Integer.toHexString(i);

or (with leading zeroes and uppercase)

\<code java\>

     public class Hex {
        public static void main(String args[]){
            int i = 42;
            System.out.print
                (Integer.toHexString( 0x10000 | i).substring(1).toUpperCase());
        }
    }

\</code\>

## Color to hexadecimal

(ImageJ only)

     String str = Tools.c2hex(myColor);  // results in &quot;#rrggbb&quot;, e.g., &quot;#FF0000&quot; for red

## hexadecimal (String) to integer :

     int i = Integer.valueOf(&quot;B8DA3&quot;, 16).intValue();

or

     int i = Integer.parseInt(&quot;B8DA3&quot;, 16);

## ASCII code to String:

     int i = 64;\\  String aChar = new Character((char)i).toString();

## integer to ASCII code (byte):

     char c = 'A';\\  int i = (int) c; // i will have the value 65 decimal

## To extract ASCII codes from a String:

\<code java\>

    String test = &quot;ABCD&quot;;
    for ( int i = 0; i &lt; test.length(); ++i ) {
        char c = test.charAt( i );
        int i = (int) c;
        System.out.println(i);

} \</code\>

## integer to boolean:

     b = (i != 0);

## boolean to integer:

     i = (b)?1:0;

## float to double

     float f = (float)d;

For arrays (in ImageJ only):\

     float[] fArray = Tools.toFloat(dArray);

## double to float

     double d = f;  //no explicit typecast needed

For arrays (in ImageJ only):\

     double[] dArray = Tools.toDouble(fArray);

## To catch illegal number conversions:

Try using the try/catch mechanism:

\<code java\>

    try{
        i = Integer.parseInt(aString);
       }
    catch(NumberFormatException e) {
    }

\</code\>
