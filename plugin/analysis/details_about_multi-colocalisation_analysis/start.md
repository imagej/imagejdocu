# Details about multi-colocalisation analysis

With the plugin [3DMultiColoc](/plugin/analysis/3d_analysis/start) and
[3DMereoTopology](/plugin/analysis/3d_mereotopology/start) you can
quantify the relationships between objects.

**MultiColoc** will compute all the colocalisation between all possible
pairs of objects, each *type* of object will be defined in a separate
labelled image. The colocalisation is defined here as the volume of the
intersection between two objects.

![Example of multiColoc
analysis](/plugin/stacks/3d_ij_suite/multicoloc.png)

In this example left image(A) has 6 objects and right image(B) has 4
objects. The *ColocAll* results table display all the possible
colocalisation between objects in A and objects in B. Objects are
labelled with their pixel value in the image. Object A1 correspond to
object having value 1 in image A. Same for objects in B, they are
labelled with their pixel values.

The *ColocOnly* results table display for each object A the list of
objects in B colocalised with the object in A, **O** is the object value
in B, **V** is the colocalised volume between object A and object B, and
**P** is the percentage of object in A colocalised with object in B.
