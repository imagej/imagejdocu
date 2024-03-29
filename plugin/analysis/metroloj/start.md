# MetroloJ

**This plugin helps keeping track of microscopes\' performances by
extracting 4 relevant estimators out of standardized images, acquired
from test samples.**

## Author

Fabrice P. Cordelières, Bordeaux Imaging Center (France).
Fabrice.Cordelieres at gmail dot com

Cédric Matthews, CNRS - IBDML - UMR 6216,Marseille (France).
cedric.matthews at ibdml.univmed.fr

This plugin has been created as part of the metrology workgroup work,
within the framework of the [\"French technological network for
multidimensional fluorescence microscopies\" (RT-
MFM)](http://rtmfm.cnrs.fr/), supported by the [Mission ressources et
compétences technologiques du CNRS\"
(MRCT)](http://www.mrct.cnrs.fr/)\".

## Features

This plugin allows measuring relevant parameters which helps testing,
following and comparing microscopes performances. This is achieved by
extracting four indicators out of standardized images, acquired from
standardized samples: the estimation of the detector sensitivity , the
evaluation of the field illumination homogeneity, the system resolution,
and finally the characterization of its spectral registration.

## Description

This plugin is composed of five parts:

-   Generate CV report
-   Generate field illumination report
-   Generate PSF report
-   Generate axial resolution report
-   Generate co-alignement report

Please refer to the ![plugin\'s
manual](/plugin/analysis/metroloj/metroloj.pdf) for more details.

## References/Citation

When using the "MetroloJ" plugin for publication, please refer to
![Cédric Matthews and Fabrice P. Cordelieres, MetroloJ : an ImageJ
plugin to help monitor microscopes\' health, in ImageJ User & Developer
Conference 2010
proceedings](/plugin/analysis/metroloj/matthews_cordelieres_-_imagej_user_developer_conference_-_2010.pdf),
to this webpage and of course to ImageJ, as explained in the [FAQ
section, on ImageJ's website](http://rsbweb.nih.gov/ij/docs/faqs.html).
A copy of your paper being sent to both our e-mail address would also be
greatly appreciated !

## Installation

Simply download ![](/plugin/analysis/metroloj/metroloj_.jar) to the
Plugins folder of ImageJ, use the \"Help/Update Menus\" function to
refresh the plugins\' menu.

**Reports are generated as pdf files, using currently the ![iText
library v2.1.4](/plugin/analysis/metroloj/itext-2.1.4.jar) ([Newer
versions are available from iText website, but are not yet compatible
with MetroloJ](http://itextpdf.com/download.php)) which should be
downloaded to the Plugins folder of ImageJ.**

\<html\>\<font color=\"red\"\>\<b\>If you get an error message stating
\"java.lang.NoClassDefFoundError:
com/lowagie/textDocumentationException\...\", it means you are missing
the \</b\>\</font\>\</html\>![iText library
v2.1.4](/plugin/analysis/metroloj/itext-2.1.4.jar). \<html\>\<font
color=\"red\"\>\<b\>Download it and save it to your plugins\'
folder.\</b\>\</font\>\</html\>

## Downloads

![The plugin is available from
here](/plugin/analysis/metroloj/metroloj_.jar)

![The plugin\'s manual is available from
here](/plugin/analysis/metroloj/metroloj.pdf)

## License

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3 of the License, or (at your
option) any later version. This program is distributed in the hope that
it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details. You should have received a
copy of the GNU General Public License along with this program. If not,
see <http://www.gnu.org/licenses/>.

Copyright (C) 2011 Fabrice P. Cordelières/Cédric Matthews

## Changelog

22/04/11: First public release

06/07/17: Correction of a bug in the field illumination report where
wrong intensity was reported for the bottom-right corner
