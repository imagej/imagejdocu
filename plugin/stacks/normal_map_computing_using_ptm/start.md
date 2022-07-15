## Computing a normal map from a 3D surface and several lightings (Polynomial Texture Mapping)

### Description

This plugin compute a normal map from an image stack (surface views) and
it\'s associate lighting positions.

The image stack contains images captured from a fixed camera position
under spatially variable source of illumination.

I write this plugin using this paper informations : \"Polynomial Texture
Mapping and 3D representations\" / Lindsay MacDonald and Stuart Robson
(ISPRS <http://www.isprs.org/>).

You can download the paper here :
<http://www.isprs.org/proceedings/XXXVIII/part5/papers/152.pdf>

To test my plugin, I was using a 3D virtual scene done with Blender
(www.blender.org).

### Example

#### Virtual PTM measures

Here is the scene configuration in Blender (if you haven\'t real PTM
hardware to capture pictures)

![Virtual scene for
testing](/plugin/stacks/normal_map_computing_using_ptm/Configuration_scene_test.png){width="500"}

With Blender, I produce 61 pictures of the 3D surface by moving the lamp
on each 61 positions.

Here is my Blender test file :
![](/plugin/stacks/normal_map_computing_using_ptm/blender_test_ptm_v02.zip).
Play animation to generate whole picture set.

#### Pictures

I use a flat RGB texture on the 3D surface, but the plugin use 8 bits
grayscale.

![Colored
view](/plugin/stacks/normal_map_computing_using_ptm/Vue_de_la_surface_texturee.png){width="250"}

61 pictures from the 3D surface :

![The 61 captured
pictures](/plugin/stacks/normal_map_computing_using_ptm/frame_ptm_61_x7.jpg){width="500"}

#### Positions

For each picture, I record the attached lamp position in world origine.
Here is the 61 lamp positions (a text file. Each row contains x y z
position).

![](/plugin/stacks/normal_map_computing_using_ptm/tab_lamp_positions.txt)

### User manual

#### Settings

1\) You can also run the plugin from menu \"Analyze / Tools / Normal map
computing using PTM\". The image stack containing PTM measure must be
already opened

![Plugin
calling](/plugin/stacks/normal_map_computing_using_ptm/appel_script.png){width="800"}

2\) Choose the lamp position file

![Lamp
positions](/plugin/stacks/normal_map_computing_using_ptm/choix_position_lampes.png){width="800"}

(The stack size must be the same than the lamp positions, not necessary
61)

3\) Choose the texture size and position in the real world (using same
origin than lamp position)

![Texture size
setting](/plugin/stacks/normal_map_computing_using_ptm/choix_dimension_de_la_texture.png){width="1000"}

#### Results

If you checked \"Invert normals\", it produce the second map.

![Normal
map](/plugin/stacks/normal_map_computing_using_ptm/normal_map.png){width="400"}
![Inverted normal
map](/plugin/stacks/normal_map_computing_using_ptm/normal_map_inverse.png){width="400"}

(For example, Blender use inverted normal map)

### Plugin download

![](/plugin/stacks/normal_map_computing_using_ptm/normal_map_computing_using_ptm_v1_00.jar)

It use this following libraries : \"Jama\", \"JLapack\".

### Plugin installation

Copy the .jar file to your plugins directory and restart \"ImageJ\".

You can use the script by menu \"ImageJ / Analyze / Tools / Normal map
computing using PTM\"

### Source files

![](/plugin/stacks/normal_map_computing_using_ptm/normal_map_computing_using_ptm_src_v1_00.zip)

### Author

Vincent Vansuyt.

Contact me for any questions or suggestions : vincent dot vansuyt at edf
dot fr (preferred language : french)

### License

GPL distribution (see [licence](http://www.gnu.org/licenses/) ). Sources
for plugins are available freely. Sources for core are available on
request.

### Changelog

First version

### Know bugs

None
