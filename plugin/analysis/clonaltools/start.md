# ClonalTools

## Introduction

ClonalTools are a set of macros designed for the analysis of mosaic
patterns. The macros correct for the effects of random clumping using
the formula 1/(1-*p*) devised by Roach (1968) in the way outlined by
West (1975, 1976) and West et al (1997).

## Author

Dr Richard L. Mort MRC Human Genetics Unit MRC IGMM University of
Edinburgh Western General Hospital Crewe Road Edinburgh. EH4 2XU, UK

Email: Richard.Mort@igmm.ed.ac.uk

All comments, criticisms, suggestions, feedback or bug reports would be
gratefully received and appreciated.

## Features

**Action Buttons:** Selecting ClonalTools from the toolsets dropdown
menu installs 8 action buttons in the following order: circular
selection, polygon selection, linear selection, batch mode, rotate
right, rotate left, define neurite ROI and neurite distribution.

![](/plugin/analysis/clonaltools/imagej1.png)

**Circular Selection:** The circular selection tool is optimised for the
analysis of radial striping patterns of X-Gal stained X-inactivation
mosaic eyes. Draw a square selection that touches the edge of the
epithelium click the \'O\' action button and select the scale to
determine how far from the edge of the selection to sample. The default
scale is 0.8 which samples the image using a circle 80% of the diameter
of the corneal epithelium to avoid sampling too close to the limbal
epithelium (Collinson et al 2002,. Mort et al 2009).

![](/plugin/analysis/clonaltools/circular-selection2.png)

**Polygon Selection:** The polygonal selection tool is optimised for the
analysis of radial striping patterns of X-Gal stained mosaic adrenal
sections from the *21OH-lacZ* mouse (Morley, S. D. et al 1996). This
animal expresses β-Gal under the control of the 21-hydroxylase (21-OH)
gene promoter directing expression in a tissue-specific manner to the
adrenal cortex. The reason for the mosaic β-Gal expression in this mouse
is unknown. Select the edge of the tissue using the polygon tool and
then click the \'S\' action button. The polygon selection is shrunk by
an arbitrary 30 pixels to avoid sampling too close to the edge of the
tissue.

![](/plugin/analysis/clonaltools/adrenal.png)

**Linear Selection:** The linear selection tool is optimised for the
analysis of mosaic patterns in X-Gal stained X-inactivation mosaic skin.
When the \'I\' action tool is clicked a line is drawn in the centre of a
rectangular ROI parallel to its longest axis.

![](/plugin/analysis/clonaltools/linear-selection2.png)

**Summary Table:** The \'Summary Table\' logs all the information needed
for a particular analysis. Everytime an analysis is run the results are
added along with the image ID to the next empty row in this window. It
should be noted that because in a linear selection the number of
positive and negative stripes can differ separate values for 1/(1-p) and
the corrected stripe number are calculated for the positive and negative
cell type. For example, the corrected mean patch size could be
calculated for patch sizes of only one cell population (e.g. only the
positively-stained one or only the minority cell population) using the
appropriate 1/(1-p) correction factor. This can provide a comparative
index of the relative extent of cell mixing (West et al 1997).

![](/plugin/analysis/clonaltools/summary-table2.png)

**Batch Mode:** Using batch mode it is possible to analyse many
pre-crpopped images (using the circular selection tool) and output the
results. Just navigate to the folder of images you would like to
analyse.

**Explant Border:** This tool displays the blue channel of the explant
image allowing the researcher to trace the edge of the explant with the
polygon tool.

![](/plugin/analysis/clonaltools/neurites.png)

**Neurite Distribution:** Having defined the explant border using the
\'Explant Border\' tool clicking the \'Neurite Distribution\' button
performs the analysis. The \'Neurite Summary Table\' displays the
percentage coverage of neurites in four regions of the image.

![](/plugin/analysis/clonaltools/neurite_summary.png)

## Description

**Clonal Analysis of Mosaic Tissues** The enzyme β-Galactosidase (β-Gal
encoded by the *LacZ* gene) has been used widely for lineage marking in
transgenic mice. When tissues expressing β-Gal are stained with the
substrate X-Gal they appear blue whilst non-expressing tissues appear
white. For example H253 X-inactivation *LacZ* mice express β-Gal in a
mosaic pattern in all tissues due to random X-inactivation during
development (Tan, S et al 1993).

Clonal Analysis Tools are designed to count and measure the number of
β-Gal-positive and negative patches in digital images of tissue sections
and whole samples from tissues exhibiting mosaic β-Gal expression
patterns. Samples are analyzed by measuring along a circular, polygon or
linear selection. The total number and total width of β-Gal positive and
negative patches is determined and the number of corrected patches is
calculated using the formula 1/(1-*p*) described by Roach in \'The
Theory of Random Clumping\' (Methuen 1968) where *p* is the proportion
of the positive or negative cell type. For circular selections the
corrected patch number is the same for both cell types, for linear
selections the values may differ. This analysis corrects for the effects
of variation in the proportions of the two cell types between samples.
The corrected patch number assumes that the patch sizes are equal or
normally distributed and that the positive and negative clones are
randomly distributed throughout the tissue. The method has been used
successfully for the analysis of stem cell function in the mouse corneal
epithelium (Collinson et al, 2002, Mort et al 2009).

**Analysis of neurite outgrowth in explant culture:** Explant cultures
of mouse retina develop radial outgrowths of neurites in patterns
analogous to the radial stripes seen in X-Gal stained X-inactivation
mosaic eyes. These patterns can be influenced by the genotype of the
explant or the cells on which the explant is cultured (Pratt 2006, Tian
et al 2008). ClonalTools includes a subset of tools developed to
quantify such patterns.

## References

Tan S-S, Williams EA, Tam PPL: X-chromosome inactivation occurs at
different times in different tissues of the post-implantation mouse
embryo. Nat Genet 1993, 3:170-174.

Roach SA. (1968). The theory of random clumping. London: Methuen.

Collinson, J. M., Morris, L., Reid, A. I., Ramaesh, T., Keighren, M. A.,
Flockhart, J. H., Hill, R. E., Tan, S.-S., Ramaesh, K., Dhillon, B. and
West, J. D. (2002). Clonal analysis of patterns of growth, stem cell
activity and cell movement during the development and maintenance of the
murine corneal epithelium. *Dev. Dyn.* 224: 432-440.

Mort, R. L., Ramaesh, T. Kleinjan, D, A., Morley, S. D., and West. J. D.
(2009). Mosaic analysis of stem cell function and wound healing in the
mouse corneal epithelium. *BMC Dev Bio* 9:4.

West, J. D. (1975). A theoretical approach to the relation between patch
size and clone size in chimaeric tissue. *J. Theor. Biol.* 50, 153-160.

West JD. (1976). Clonal development of the retinal epithelium in mouse
chimaeras and X-inactivation mosaics. *J Embryol Exp Morphol*
35:445-461.

Morley SD, Viard I, Chung BC, Ikeda Y, Parker KL, Mullins JJ. (1996)
Variegated expression of a mouse steroid 21-hydroxylase/beta-
galactosidase transgene suggests centripetal migration of adrenocortical
cells. *Mol Endocrinol* 10585:98.

West, J. D., Hodson, B. A., and Keighren, M. A. (1997). Quantitative and
spatial information on the composition of chimaeric fetal mouse eyes
from single histological sections. *Develop Growth Differ* 39, 305-317.

Morley SD, Chang SP, Tan SS, West JD. (2004). Validity of the
*21-OH/LacZ* transgenic mouse as a model for studying adrenocortical
cell lineage. *Endocr Res*.(4):513-9.

Pratt, T. et al. (2006). Heparan sulphation patterns generated by
specific heparan sulfotransferase enzymes direct distinct aspects of
retinal axon guidance at the optic chiasm. The Journal of Neuroscience:
*The Official Journal of the Society for Neuroscience*, 26(26),
6911-6923.

Tian, N.M., Pratt, T. & Price, D.J. (2008). Foxg1 regulates retinal axon
pathfinding by repressing an ipsilateral program in nasal retina and by
causing optic chiasm cells to exert a net axonal growth-promoting
activity. *Development*, 135(24), 4081-4089.

## Installation

Clonal Analysis Tools relies on BinaryFilterReconstruct\_.class written
by Gabriel Landini. Install Gabriel Landini\'s Morphology Collection
from <http://www.dentistry.bham.ac.uk/landinig/software/software.html>,
download ![](/plugin/analysis/clonaltools/clonaltools_0.2a.txt.zip) and
extract to ImageJ/Macros/Toolsets folder.

## Changelog

Version 0: 2009/03/19

Version 0.1: 2009/03/27

Added \'rotate left\', \'rotate right\', \'define neurite ROI\' and
\'neurite distribution\' to toolset.

Version 0.2: 2009/04/21

Fixed bug that caused the circular analysis to stall.

Version 0.2a: 2009/05/13

Changed the neurite tools to be compatible with images stained with
TOPRO3.

Version 0.2b: 2009/09/30

Fixed a bug that caused batch mode to stall after the first image.

## Known Bugs
