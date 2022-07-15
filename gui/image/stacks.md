# Stacks

**This submenu contains commands that work with stacks.**

### Add Slice

Inserts a blank slice after the currently displayed slice. Hold down the
**Alt** key to add the slice before the current slice.

### Delete Slice

Deletes the currently displayed slice.

### Next Slice

Displays the slice that follows the currently displayed slice. As a
shortcut, press the \"\>\" key.

### Previous Slice

Displays the slice that precedes the currently displayed slice. As a
shortcut, press the \"\<\" key.

### Set Slice\...

Displays a specified slice. The user must enter a slice number greater
than or equal to one and less than or equal to the number of slices in
the stack. (Slices start at \"1\").

### Images to Stack

Creates a new stack consisting of all images currently displayed in
separate windows. The images must all be the same type and size.

### Stack to Images

Converts the slices in the current stack to separate image windows.

### Stack to Hypervolume\...

Converts a stack to a Hypervolume with third and fourth dimensions.

### Hypervolume to Stack\...

Converts a Hypervolume back into a stack of slices.

### Make Montage

Produces a single image which contains the images from a stack displayed
in a grid format. This can be useful for visual comparisons of a series
of images stored in a stack. A dialog box allows you to specify the
magnification level (**Scale Factor**) at which the images are copied,
and to select the layout of the resulting grid **(Colums,** **Rows**,
**First Slice**, **Last Slice**, **Increment**).

With ImageJ 1.35m or later, check **Use Foreground Color** to draw
borders and labels in the foreground color and to fill blank areas with
the background color. Use the *Montage Shuffler tool macro* to reorder
the images in the montage.

### Reslice\...

Reconstructs one or more orthogonal slices through the image volume
represented by the current stack. Before using this command, create a
straight line or rectangular selection to specify were the
reconstructions will be done. A dialog box allows you the specify the
Z-Spacing (displacement between slices) of the source volume. Multiple
slices are reconstructed and saved as a stack if you create a
rectangular selection or set Slice Width greater than one.

Images are created by sampling each slice in the stack along the line.
Thus, the first pixel in each row of the output image is taken from the
start of the line and the last from the end. In the case where Slice
Width is greater than one, a stack is created by shifting the line down
and to the left to generate additional slices for the output stack.

This plugin, and the *ZProject plugin*, were contributed by Patrick
Kelly and Harvey Karten of the University of California, San Diego.

### ZProject\...

Projects an image stack along the axis perpendicular to image plane (the
so-called \"z\" axis). Six different projection types are supported. The
ZProject command creates image names in the form \"XXX_stack\", where
XXX is \"AVG\", \"MAX\", \"MIN\", \"SUM\", \"STD\" and \"MED\" and
\"stack\" is the name of the stack.\
**Average Intensity** projection outputs an image wherein each pixel
stores average intensity over all images in stack at corresponding pixel
location.

Maximum Intensity projection (**Max**) creates an output image each of
whose pixels contains the maximum value over all images in the stack at
the particular pixel location.

Minimum Intensity projection (**Min**) creates an output image each of
whose pixels contains the minimum value over all images in the stack at
the particular pixel location.

**Sum Slices** creates a real image that is is sum of the slices in the
stack.

**Standard Deviation** creates a real image containing the standard
deviation of the slices.

**Median** creates an image containing the median value of the slices.

### 3D Project\...

Generates an animation sequence by projecting through a rotating 3D data
set onto a plane. Each frame in the animation sequence is the result of
projecting from a different viewing angle. To visualize this, imagine a
field of parallel rays passing through a volume containing one or more
solid objects and striking a screen oriented normal to the directions of
the rays. Each ray projects a value onto the screen, or projection
plane, based on the values of points along its path. Three methods are
available for calculating the projections onto this plane: **Nearest
Point**,\*\* Brightest Point\*\*, and **Mean Value**. The choice of
projection method and the settings of various visualization parameters
determine how both surface and interior structures will appear. This
routine was written by Michael Castle and Janice Keller of the
University of Michigan Mental Health Research Institute (MHRI).

\[insert image Dialog\]

Select **Nearest Point** projection to produce an image of the surfaces
visible from the current viewing angle. At each point in the projection
plane, a ray passes normal to the plane through the volume. The value of
the nearest non transparent point which the ray encounters is stored in
the projection image.

**Brightest Point** projection examines points along the rays,
projecting the brightest point encountered along each ray. This will
display the brightest objects, such as bone in a CT (computed
tomographic) study.

**Mean Value** projection, a modification of brightest-point projection,
sums the values of all transparent points along each ray and projects
their mean value. It produces images with softer edges and lower
contrast, but can be useful when attempting to visualize objects
contained within a structure of greater brightness (e.g. a skull).

**Slice Spacing** is the interval, in pixels, between the slices that
make up the volume.

ImageJ projects the volume onto the viewing plane at each **Rotation
Angle Increment**, beginning with the volume rotated by **Initial
Angle** and ending once the volume has been rotated by **Total
Rotation**.

The **Lower** and **Upper Transparency Bound** parameters determine the
transparency of structures in the volume. Projection calculations
disregard points having values less than the lower threshold or greater
than the upper threshold. Setting these thresholds permits making
background points (those not belonging to any structure) invisible. By
setting appropriate thresholds, you can strip away layers having
reasonably uniform and unique intensity values and highlight (or make
invisible) inner structures. Note that you can also use
Image/Adjust/Thresold to set the transparency bounds.\
Sometimes, the location of structures with respect to other structures
in a volume is not clear. The **Opacity** parameter permits the display
of weighted combinations of nearest-point projection with either of the
other two methods, often giving the observer the ability to view inner
structures through translucent outer surfaces. To enable this feature,
set **Opacity** to a value greater than zero and select either **Mean
Value** or **Brightest Point** projection.

Depth cues can contribute to the three-dimensional quality of projection
images by giving perspective to projected structures. The depth-cueing
parameters determine whether projected points originating near the
viewer appear brighter, while points further away are dimmed linearly
with distance. The trade-off for this increased realism is that data
points shown in a depth-cued image no longer possess accurate
densitometric values. Two kinds of depth-cueing are available: **Surface
Depth-Cueing** and **Interior Depth-Cueing**.

**Surface Depth-Cueing** works only on nearest-point projections and the
nearest-point component of other projections with opacity turned on.
**Interior Depth-Cueing** works only on brightest-point projections. For
both kinds, depth-cueing is turned off when set to zero (i.e. 100% of
intensity in back to 100% of intensity in front) and is on when set at
0\<n 100 (i.e. (100-n)% of intensity in back to 100% intensity in
front). Having independent depth-cueing for surface (nearest-point) and
interior (brightest-point) allows for more visualization possibilities.

Check **Interpolate** to generate a temporary z-scaled stack that is
used to generate the projections. Z-scaling eliminates the gaps seen in
projections of volumes with slice spacing greater than 1.0 pixels. This
option is equivalent to using the *Scale plugin* from the *TransformJ
package* to scale the stack in the z-dimension by the slice spacing (in
pixels). This checkbox is ignored if the slice spacing is less than or
equal to 1.0 pixels.

### Plot Z-axis Profile

Plots the ROI selection mean gray value versus slice number. Requires a
selection.

### Start Animation

Animates the active stack by repeatedly displaying its slices (frames)
in sequence. Use **Stop Animation**, or click with the mouse, to stop.
Open the Animation Options dialog box to specify the animation speed.
More than one stack can be animated at a time. As a shortcut, press the
backslash key (\"\\\") to start or stop animation. In ImageJ 1.38 and
later, press alt plus backslash to open the Animation Options dialog.

### Stop Animation

Terminates animation of the active stack. As a shortcut, press the
backslash key.

### Animation Options\...

Use this dialog to set the animation **Speed** in frames per second, set
the **First Frame** and **Last Frame** (1.38 or later), or to enable
\"oscillating\" animation (**Loop Back and Forth**). In ImageJ 1.38 or
later, you can press **alt plus backslash** (alt+\\) to display this
dialog.
