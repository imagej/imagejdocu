# Math

**What do the mathematical operations do?**

The commands in this submenu add (subtract, multiply, etc.) a constant
to each pixel in the active image or selection. When the result value
overflows/underflows the legal range of the image\'s data type, the
value is reset to the maximum/minimum value. With stacks, selections are
ignored and the specified operation is performed on all slices in the
stack.

## Add\...

Adds a constant to the image. With 8-bit images, results greater than
255 are set to 255. With 16-bit signed images, results greater than
65,535 are set to 65,535.

## Subtract\...

Subtracts a constant from the image. With 8-bit and 16-bit images,
results less than 0 are set to 0.

## Multiply\...

Multiplies the image by the specified real constant. With 8-bit images,
results greater than 255 are set to 255. With 16-bit signed images,
results greater than 65,535 are set to 65,535.

## Divide\...

Divides the image by the specified real constant. Attempts to divide by
zero will be ignored.

## AND\...

Does a bitwise AND of the image and the specified binary constant.

## OR\...

Does a bitwise OR of the image and the specified binary constant.

## XOR\...

Does a bitwise XOR of the image and the specified binary constant.

## Min\...

Pixels in the image with a value less than the specified constant are
replaced by the constant.

## Max\...

Pixels in the image with a value greater than the specified constant are
replaced by the constant.

## Gamma\...

Applies the function f(p) = (p/255)\^gamma\*255 to each pixel (p) in the
image or selection, where 0.1 \<= gamma \<= 5.0. For RGB images, this
function is applied to all three color channels. For 16-bit images, the
image min and max are used for scaling instead of 255.

## Log\...

For 8-bit images, applies the function f(p) = log(p) \* 255/log(255) to
each pixel (p) in the image or selection. For RGB images, this function
is applied to all three color channels. For 16-bit images, the image min
and max are used for scaling instead of 255. For float images, no
scaling is done. To calculate log10 of the image, multiply the result of
this operation by 0.4343 (1/log(10).

## Reciprocal

Generates the reciprocal of the active image or selection. Only works
with 32-bit float images.

## NaN Background

Sets non-thresholded pixels in 32-bit float images to the NaN (Not a
Number) value. For float images, the \"Apply\" option in Image/Adjust
Threshold runs this command. Pixels with a value of Float.NaN (0f/0f),
Float.POSITIVE_INFINITY (1f/0f) or Float.NEGATIVE_INFINITY (-1f/0f) are
ignored when making measurements on 32-bit float images.

## Abs

Generates the absolute value of the active image or selection. Only
works with 32-bit float images.
