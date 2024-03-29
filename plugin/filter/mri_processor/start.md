# MRI Processor

## Introduction

This pluign calculates parametric maps in MR images. One important use
of MRI is the possibility to use different mechanisms to distinguish
different tissues and disease processes. The primary contrast mechanisms
exploit relaxation of the magnetization. The two types of relaxations
are termed *spin-lattice relaxation*, characterized by the relaxation
time T1, and *spin-spin relaxation*, characterized by the relaxation
time T2. T1 relaxation refers to the return of excited protons to the
original energy state of the static magnetic field. Since this
represents energy exchange between spinning high energy protons and the
molecular lattice from which they were excited, it is also called
spin-lattice relaxation.

## Author

Dimiter Prodanov; (C) 2009

## Features

-   Calculation of T1 and T2 parametric maps.

The T2 maps functionality is being validated with the help of Mr Jesse
Trekker, FNS group, [IMEC](http://www.imec.be), Dr. Simon A. Roussel,
[CI-NAPS](http://www.ci-naps.fr/), Univ. Paris Descartes, CNRS ; Dr. Tom
Dresselaers and Prof. Uwe Himmelreich, [MoSAIC](http://www.saic.be/),
Katholieke Universiteit Leuven.

-   Arbitrary closed ROI support

```{=html}
<!-- -->
```
-   Support of 4D data sets (volume + time)

```{=html}
<!-- -->
```
-   Integration with the ResultsTable

## Description and Operation

The plugin is based in part on the old
[MRI_Analysis_Calculator](http://rsbweb.nih.gov/ij/plugins/mri-analysis.html)
by Karl Schmidt. I acknowledge the help of Ms Carole Ciliberti for the
plugin debugging and testing.

The Input screen looks like this:

![](/plugin/filter/mri_processor/mri1.png)

Currently the plugin supports 2 fitting algorithms:

-   The
    [Levenberg--Marquardt](http://en.wikipedia.org/wiki/Levenberg%E2%80%93Marquardt_al{{:plugin:filter:mri_processor:mri3.png)
    algorithm implemented by the LMA package

and the

-   The general purpose Simplex algorithm based on the ImageJ
    implementation.

The user can select any of the two techniques:

![](/plugin/filter/mri_processor/mri3.png)

The user can specify the number of iterations and can force the constant
bias parameter to 0.

Next, the user can be asked to input the Echo/Repetition Times. The
plugin recognizes the presence of such entries in the Results table. In
case no times are input the plugin assumes default values (debug
purposes).

![](/plugin/filter/mri_processor/mri2.png)

## Installation

Download and copy the **three** jar files into the plugins directory of
ImageJ.

## Download

You need to download **all three** jar files. By downloading and using
these jar files you agree with the explicit and implied terms of use and
redistribution stated in section Licenses or in the pages pointed by the
links therein:

-   ![I agree about JAMA](/plugin/filter/mri_processor/jama.jar)

```{=html}
<!-- -->
```
-   ![I agree about LMA](/plugin/filter/mri_processor/lma.jar)

```{=html}
<!-- -->
```
-   ![I agree about MRI
    Processor](/plugin/filter/mri_processor/mri_processor_.jar)

## Disclaimer

This library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser
General Public License for more details.

In particular, the author disclaims any particular fitness for medical
diagnostic purposes.

## Licenses

[MRI Processor]{.underline} is distributed under GNU General Public
License. This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation; either version 2.1 of the
License, or (at your option) any later version ([See full
text](http://www.gnu.org/licenses/gpl.txt)).

You should have received a copy of the GNU Lesser General Public License
along with this library; if not, write to the Free Software Foundation,
Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.

[JAMA]{.underline} is released in the public domain: [See
here](http://math.nist.gov/javanumerics/jama/#Authors).

[LMA]{.underline} was developed by Janne Holopainen: [See his
homepage](http://users.utu.fi/jaolho/).

## Version history

\*\* 1.1.6 22 Jan 2009\*\*

\- bug fix: integration with BrukerToolbox

\- added possibility to force bias to 0; user request by Simon Roussel

\*\* 1.1.5 19 Dec 2009\*\*

\- added support for variable number of iterations

\- bug fixes

\*\* 1.1 19 Nov 2009\*\*

\- added support of arbitrary closed Rois

\*\* 1.0.5 16 Nov 2009\*\*

\*\* 1.0 03 Nov 2009\*\*

## Known Bugs

Let me know and I will fix them ;)
