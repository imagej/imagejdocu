# bUnwarpJ: Consistent and Elastic Registration in ImageJ. Methods and Applications.

## Abstract

Image registration is a wide extended problem in many biomedical fields
but also in many other image processing disciplines. Our plugin bUnwarpJ
provides with a free tool to elastically register pairs of 2D images. In
principle, non-rigid deformations are not invertible. For that reason,
our method simultaneously calculates the direct and inverse
transformations that minimize the similarity error between the target
and source images by imposing a consistency constraint. This approach
enables bidirectional registration: from image A to B or from B to A, in
a single computation. We take advantage of the B-spline properties to
represent both images and deformations in order to make the algorithm
efficient and use a powerful optimizer to converge fast to the best
image alignment. Our plugin allows guiding the registration process
based on the image similarity, the deformations' consistency,
vector-spline regularization and/or a set of optional landmarks, which
can be automatically detected and integrated from other ImageJ plugins
such as SIFT and MOPS features extractors. It is the user's decision how
to combine the relevance of each of these terms in the registration
process. This paper intends to be a detailed description of the
algorithm and its implementation in order to help developers and users
to exploit all the plugin potential.

### Keywords

2D Image Registration

## Author

Ignacio Arganda-Carreras

### Organization

Biocomputing Unit - National Centre for Biotechnology, Madrid, Spain

### Homepage

<http://arantxa.ii.uam.es/~iarganda/index_EN.html>

### Short Biography

PhD student in Computer Science and Telecommunications at the
Universidad Autonoma de Madrid. Former member of the Ortiz-de-Solorzano
lab, at the Bioimaging Group (Lawrence Berkeley National Laboratory,
California, USA) and current member of the Biocomputing Unit (National
Centre for Biotechnology, Madrid, Spain) and researcher at the IRB
Barcelona, in the Cell & Developmental Biology group. Research
interests: image processing, three-dimensional reconstructions,
biomedical image registration and segmentation in 2D and 3D.

## Media

Presentation: ![](/events/bunwarpj_imagej_conf_2008.pdf)
