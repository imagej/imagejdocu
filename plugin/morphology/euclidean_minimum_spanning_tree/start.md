# Euclidean minimum spanning tree

This plugin calculates and draws an [euclidean minimum spanning
tree](http://en.wikipedia.org/wiki/Euclidean_minimum_spanning_tree) from
a set of selection points. Coordinates of the EMST are available in
\"Results\" table. The algorithm is based on:

1\) 2D Delaunay Triangulation (DT) with incremental site insertion
written by [Paul
Chew](http://www.cs.cornell.edu/home/chew/Delaunay.html)\
2) [JgraphT 0.9.0](http://jgrapht.org/) under LPGL and EPL\
3) [Delaunay/Voronopi plugin](http://fiji.sc/Delaunay_Voronoi) written
by Johannes Schindelin: the current plugin was inspired by Johannes\'
plugin but with some changes. The EMST is a sub-tree of Delaunay
triangulation. Therefore the original points selection are used to
create Delaunay triangulation. Corresponding edges are injected in the
JGraphT code and MST is requested.

# Input

![](/plugin/morphology/euclidean_minimum_spanning_tree/input1.jpg)
![](/plugin/morphology/euclidean_minimum_spanning_tree/input2.jpg)

From a picture containing selection points, you are requested to
choose:\
1) The color of the edges\
2) Approximate number of points (requested to optimized internal HashMap
Java algorithm)\
3) If you want corresponding edges coordinates\
4) If you want a skeletonized EMST ([Thomas
Boudier\'s](http://www.snv.jussieu.fr/~wboudier/softs.html) suggestion).
It is possible to call the plugin from a macro as follows:\
run(\"EMST\", \"color=Yellow approximate=500 export create\");

# Output

![](/plugin/morphology/euclidean_minimum_spanning_tree/output1.jpg)
![](/plugin/morphology/euclidean_minimum_spanning_tree/output2.jpg)
![](/plugin/morphology/euclidean_minimum_spanning_tree/output3.jpg)

Two different outputs can be obtained from the same EMST: 1) one is an
overlay added to the original picture which contains the selection
points. 2) The second one is a binary picture representing one
**skeleton** without loop which can be analyzed immediately with the
plugin [Analyze Skeleton](http://fiji.sc/wiki/index.php/AnalyzeSkeleton)

# Installation

Simply download
![](/plugin/morphology/euclidean_minimum_spanning_tree/e_mst2.jar) to
the Plugins folder of ImageJ, restart ImageJ and use the "EMST" command
in the Plugins menu.

# Disclaimer

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details. You should have received a copy of the
GNU General Public License along with the programs; if not, write to the
Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
02111-1307, USA

# License

Free software: but please refer to [Paul
Chew](http://www.cs.cornell.edu/home/chew/Delaunay.html) and [JgraphT
0.9.0 website](http://jgrapht.org/) which are the bases of the current
plugin.

# Author

Gilbert Bigras, Cross Cancer Institute, University of Alberta, Edmonton
Canada (gilbert_bigras@yahoo.com)

# Changelog

First release: October 19, 2014

Second release: November 16, 2014 (Addition of Skeletonized EMST) after
Thomas Boudier feedback
