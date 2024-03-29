# Details about 3D ellipsoid fitting

The [3D ellipsoid fitting plugin](/plugin/analysis/3d_analysis/start)
will fit a 3D ellipsoid to objects in a labelled image.

The ellipsoid axes and radii are computed using 3D moments :

-   sx\<sup\>2\</sup\> = ∑(x-Cx)\<sup\>2\</sup\>/Vobj
-   sy\<sup\>2\</sup\> = ∑(y-Cy)\<sup\>2\</sup\>/Vobj
-   sz\<sup\>2\</sup\> = ∑(z-Cz)\<sup\>2\</sup\>/Vobj
-   sxy = ∑(x-Cx)(y-Cy)/Vobj
-   sxz = ∑(x-Cx)(z-Cz)/Vobj
-   syz= ∑(y-Cy)(z-Cz)/Vobj

The three eigen values and vectors are then computed from this matrix :

  -------------------- -------------------- --------------------
  sx\<sup\>2\</sup\>   sxy                  sxz
  sxy                  sy\<sup\>2\</sup\>   syz
  sxz                  syz                  sz\<sup\>2\</sup\>
  -------------------- -------------------- --------------------

The three radii are then : √(5\*eigen value)

The different results are :

-   Cx,Cy,Cz : **centre** of the object (in pixel coordinate)
-   Vx, Vy, Vz : coordinate of the **main elongation** axis
-   R1, R2, R3 : the tree radii of the fitted ellipsoid
-   XY, XZ, YZ : **angle** between the main axis of the ellipsoid and
    the 3 planes
-   Vobj : **volume** of the object
-   Vell : volume of the fitted ellipsoid
-   Vbb : volume of the bounding box around the object
-   Vbbo (experimental) : volume of the bounding box oriented in the
    direction of the main axis
-   The two **poles** of the object as the two voxels used to compute
    Feret diameter, and the two poles of the fitting ellipsoid.

![Object and fitted ellipsoid with main elongation
axis](/tutorial/plugins/ellipsoid.png)

Object and fitted ellipsoid with main elongation axis

![Bounding box and oriented bounding
box](/tutorial/plugins/ellipsoid1.png)

Bounding box and oriented bounding box
