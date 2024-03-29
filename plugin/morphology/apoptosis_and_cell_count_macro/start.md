## Apoptosis and Cell Density Macro

### Installation and Use

Author: Ruben K. Dagda, Ph.D. University of Nevada School of Medicine,
Department of Pharmacology. Introduction: This is a macro for the
quantification of both cell density and apoptosis by analyzing nuclear
morphology in DAPI-stained fixed cells at 10X magnification. It is well
known that nuclear fragmentation, condensation and pyknosis are
hallmarks of apoptosis. Although many cytotoxic stimuli can reduce cell
numbers by causing cell detachment and/or necrosis, not all toxic
insults promote apoptosis. To this end, the purpose of this macro is to
quantify both cell numbers and apoptosis within the same image. This
method may preclude the need to perform sequential MTT assays and
propidium iodide staining as this macro provides cell number and
percentage of nuclei exhibiting apoptosis.

This macro works with Image J versions 1.46 and higher.

You can go ahead and download the macro by clicking on the following
link:
![](/plugin/acquisition/dual_cell_density_apoptosis_macro/apoptosis_cell_count_macro_f2.txt)

Save the text file in the \"Macro\" folder of the ImageJ directory,
install the imacro in Image J and press function 9 to start it.

## Recommendations Before Starting

\- Only use 10X magnifiction DAPI-stained images - Images have to be
taken at very good intensity and contrast - Images can be analyzed by
macro in color (Color Threshold function)

Limitations: - The color threshold functions can sometimes not separate
some clumped nuclei efficiently.

## Commands and Steps

The macro is simple. It will open up RGB images of DAPI-stained nuclei
pressing function 9. Pressing Function 8 will then "Color Threshold" the
images using an optimized function for DAPI stain. Pressing Function 7
will then count the number of nuclei and fragmented nuclei based on a
certain area size. The macro will open up both the "Summary" window to
give a total "Count" and a "Distribution Area" window which bins and
counts the number of nuclei that exhibit a 3-fold reduction in average
nuclear size. The "Count" field in the "Distribution Area" window is the
number of apoptotic nuclei counted within the epifluorescence DAPI
image.

The user can manually calculate the: Percentage of apoptotic nuclei as
follows: Apotosis= ( the "count" given form the Distribution Area
window)/ (by the total count from the summary window) X 100

The count within the Summary window is the total number of cells per
epifluorecence field.

Make sure to close all the windows by pressing function 4 after
finishing analyzing images. Make sure to close the "Color Threshold"
window prior to analyzing another image.

## ChangeLog and validation

Version: This is the first version of the macro. Any known fixes and
updates will be published.

The macro was validated by the MTT assay in rat aortic smooth muscle
A7R5 cells treated with the apoptosis inducer staurosporine (50%
apoptosis) in the presence or absence of broad spectrum caspase
inhibitors ZVAD (25% apoptosis).

In addition, it reduction in nuclear and increased circularity (nuclear
area form factor) area is very well correlated with apoptosis induction
as shown in the following study:

Iman M Helmy and Adel M Abdel Azim1 Efficacy of ImageJ in the assessment
of apoptosis Diagn Pathol. 2012; 7: 15. Published online 2012 Feb 6.
doi: 10.1186/1746-1596-7-15 PMCID: PMC3307432

## Contact

Please direct any questions to Ruben K. Dagda, Ph.D. at:
rdagda@medicine.nevada.edu

## Funding

The maintenance and validation of the macro was supported by a Sanford
Center for Aging Faculty Fellowship, a State of Nevada UNR Women Health
Initiative grant and NIH grant NIGMS 103554.

## License

The authors of the macro reserve the copyrights of the original macro.
However, you are welcome to distribute, modify and use the program under
the terms of the GNU General Public License as stated here:
(<http://www.gnu.org/licenses/gpl.txt>) as long as you attribute proper
acknowledgement to the authors as mentioned above.
