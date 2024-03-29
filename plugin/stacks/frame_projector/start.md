# Frame Projector

This plugin projects the images in the frame direction into a lower
dimension using different methods.

## Author

Fred Damen

## Features

![](/plugin/stacks/frame_projector/f_projectorscreenshot.jpg)

When run as a plugin from the gui the image used is identified on the
top line. A subset of the slices and frames can be used as the source
data; see syntax for `Make Substacks...`. When the identified frames is
\'label\', the frames are grouped by identical labels.

**Transpose?** Swap frames for slices.\

The following summary methods as provided:

**Sum** Arithmetic Sum\
**Mean** Arithmetic Mean (μ)\
**StdDev** Standard Deviation (σ) - computed using the slow method for
numerical accuracy\
**ZScore** Z Score (μ/σ) - akin to Signal to Noise (SNR)\
**CV** Coefficient of Variation (σ/μ)\
**Minimum** Minimum\
**Maximum** Maximum\
**Median** Median\
**Center** Weighted arithmetic mean around the median - resilient to
outliers\
**Product** Product (Π
s\<sub\>i\</sub\>\<sup\>-n\</sup\>)\<sup\>n\</sup\>\
**GeoMean** Geometric Mean - prescaled product (Π
s\<sub\>i\</sub\>\<sup\>-n\</sup\>)\
**LinReg** Linear least squares regression - frames returned m, b,
r\<sup\>2\</sup\>\
**TheilSen** Theil Sen Regression with Center estimator - frames m, b\
**Fit** CurveFitter fitting - frames are model parameters,
r\<sup\>2\</sup\>, Ψ\<sup\>2\</sup\>\
**Deviation** Appends a frame with the appropriate deviation from an
appropriate selected summary.\
\
If the first slice of every frame has a Short Label that can be split by
the regex \" = \|=\| \", e.g., var = fval, and the list has unique
elements, the float fval values will be used in the fittings instead of
the frame number.

There are also static methods provided, with the same names, albeit, all
lower case, with two syntaxis: *method*(ImagePlus,slices,frames),
*method*(ImagePlus); save fit(\..., int), fit(\..., String).

TreeMap\<Double,String\> sortFramesByLabel(ImagePlus imp) returns comma
separated list of frames for each unique label.

public interface Compute {\
public double\[\] compute(double\[\] x, double\[\] y);\
/ / return (x == null) ? new double\[NV\] : process(x,y);\
}\
ImagePlus compute(ImagePlus imp, Compute fp)\
ImagePlus compute(ImagePlus imp, String slices, String frames, Compute
fp)\
ImagePlus compute(ImagePlus imp, Compute fp, ImagePlus mask)\
ImagePlus compute(ImagePlus imp, String slices, String frames, Compute
fp, ImagePlus mask)\
ImagePlus\[\] split(ImagePlus imp)\
fit and compute have ImagePlus\[\] *method*(\..., ImagePlus\[\] imps);

*Nota bene*: Works even when there is only one slice in the Z direction.

## Uses

### ASL - MRI

`ImagePlus aslAcquired = . . . ImagePlus tag = F_Project.mean(aslAcquired,"all","1-100-2"); ImagePlus ctl = F_Project.mean(aslAcquired,"all","2-100-2"); ImagePlus asl = ctl.duplicate(); (new ImageCaculator()).run("Subtract 32-bit stack", asl, tag); (new ImageCaculator()).run("Divide 32-bit stack", asl, ctl); `

### ADC - MRI

`/* Assuming many b-values (slicelabels = "b=%f") */ ImagePlus dwiAcquired = . . . ImagePlus dwi = dwiAcquired.duplicate(); ImagePlus dwib0 = SubHyperstackMaker.makeSubhyperstack(dwi,"1-"+dwi.getNSlices(),"1",dwiAcquired); for(int f=0; f<dwiAcquired.getNFrames(); f++) (new ImageCalculator()).run("Divide 32-bit stack", dwi, dwib0); `

` ImagePlus adc_etal = F_Project.fit(dwi,"Exponential");`

OR with more resilience to outliers . . .

` IJ.run(dwi, "Log", ""); ImagePlus adc_etal = F_Project.theilsen(dwi); `

### Arbitrary proccessing

` IJ.run(mask,"Convert to Mask", "method=Huang background=Default calculate"); ImagePlus[] pimp = F_Project.compute(imp, new F_Project.Compute() { @Override public double[] compute(double[] x, double[] y) { if (x == null) return new double[10]; return nonlinearFit(x,y); } }, mask, new ImagePlus[0]); `

## Install

Place the file ![](/plugin/stacks/frame_projector/new/f_project.java) in
your plugins directory, then compile&run; or just place the
![](/plugin/stacks/frame_projector/new/f_project.class),
![](/plugin/stacks/frame_projector/f_project_1.class),
![](/plugin/stacks/frame_projector/f_project_compute.class) files in
your plugins directory and refresh the menus / restart ImageJ.

## License

GPL distribution licence.

## ChangeLog

-   1 April 2018 - Initial Version.
-   1 April 2019 - Updated.
