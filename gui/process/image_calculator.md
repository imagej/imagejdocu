# Image Calculator

**What does the Image Calculator command do ?**

Performs arithmetic and logical operations between two images selected
from popup menus. *Image1* or both *Image1* and *Image2* can be stacks.
If both are stacks, they must have the same number of slices. *Image1*
and *Image2* must be the same data type but they do not have to be the
same size.

\[\[\|![\[Image
Calculator\]](http://rsb.info.nih.gov/ij/docs/images/calculator.jpg){.align-center
width="280" height="282"}\]\]

You can select one of 12 operators from the *Operation:* popup menu.
Check *Create New Window* and a new image or stack will be created to
hold the result. Otherwise, the result of the operation replaces some or
all of *Image1*. Check \"32-bit Result\" and the source images will be
converted to 32-bit floating point before the specified operation is
performed.

With 32-bit (float) images, pixels resulting from division by zero are
set to *Infinity*, or to *NaN* (Not a Number) if a zero pixel is divided
by zero. The divide-by-zero value can be redefined in
***Edit\>Options\>Miscellaneous\>Divide by Zero Value***.

  ----------------------- --------------------------------
  Add                     img1 = img1+img2
  Subtract                img1 = img1-img2
  Multiply                img1 = img1\*img2
  Divide                  img1 = img1/img2
  AND                     img1= img1 AND img2
  OR                      img1 = img1 OR img2
  XOR                     img1 = img1 XOR img2
  Min                     img1 = min(img1,img2)
  Max                     img1 = max(img1,img2)
  Average                 img1 = (img1+img2)/2
  Difference              img1 = ¦img1-img2¦
  Copy                    img1 = img2
  Transparent Zero zero   pixels of img2 are transparent
  ----------------------- --------------------------------
