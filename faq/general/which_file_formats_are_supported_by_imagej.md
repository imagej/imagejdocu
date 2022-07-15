# FAQ: Which file formats are supported by ImageJ

One of ImageJ\'s strength lies in its ability to recognize many
different file formats, from exotic scientific data files to well-known
quicktime movies.

A known image file format is either:

-   natively supported by ImageJ. No additional plugin installation is
    required. To fully profit from ImageJ\'s ability to open many types
    of images, please install or [upgrade to the most recent version of
    ImageJ](http://rsb.info.nih.gov/ij/download.html).
-   or requires a format specific reader plugin. You will need to
    install a plugin that enables ImageJ to recognize your file type.
    Plugins are extensions to ImageJ that add functionality. Plugins are
    written by ImageJ aficionados all around the world and are available
    at the [ImageJ web site\'s Plugins
    page](http://rsb.info.nih.gov/ij/plugins/index.html).\

The aim of this FAQ is to compile a list of supported file types,
indicating the type of support (native or by plugin) as well as some
additional information.

Many of the plugins listed in the table are supported directly through
the HandleExtraFileTypes plugin (bundled with ImageJ). When opening a
file, ImageJ first checks whether it can natively handle the format. If
not, it looks to see if the proper standalone file reader plugin is
installed. If that fails, it lastly tries the [Bio-Formats
plugin](/imagej-documentation-wiki/plugins/bio-formats) if it is
present.

\

    List in progress. Last updated 20 Jun 2007
    most &quot;export only&quot; plugins have not been included yet
    R = read; W = write; RW = both read and write

\

  ------------------------------------------------------------------------------------------------- ---------------------------------------------------- ------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  \*\* Format (extension)\*\*                                                                       **Full format name\                                  **Native?\   **Plugins\
                                                                                                    **                                                   **           **

  TIFF (.tiff, .tif)\                                                                               Tagged Image File Format                             RW\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)\
                                                                                                                                                                      RW: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  JPEG (.jpeg, .jpg)\                                                                               Joint Photographic Experts Group\                    RW\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)\
                                                                                                                                                                      RW: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  BMP (.bmp)\                                                                                       BitMap                                               RW\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/bmp-writer.html)\
                                                                                                                                                                      W: [BMP Writer](http://rsb.info.nih.gov/ij/plugins/bmp-writer.html)\
                                                                                                                                                                      R: [Bio-Formats](..//../../plugins/bio-formats)\

  FITS (.fits)\                                                                                     Flexible Image Transport System\                     R\           \-\

  PGM (.pgm)\                                                                                       Portable Gray Map\                                   RW\          W: [PGM/PPM/PNM_Writer](http://rsb.info.nih.gov/ij/plugins/pnm-writer.html)\
  PPM (.ppm)\                                                                                       Portable Pixmap\                                                  R: [Bio-Formats](..//../../plugins/bio-formats)\
  PBM (.pbm)\                                                                                       Portable Bitmap\                                                  

  GIF (.gif)\                                                                                       Graphics Interchange Format\                         RW\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  Animated GIF (.gif)\                                                                              Animated GIF\                                        no           W: [Gif Stack Writer](http://rsb.info.nih.gov/ij/plugins/gif-stack-writer.html)\
                                                                                                                                                                      R: [Animated GIF Reader](http://rsb.info.nih.gov/ij/plugins/agr.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  PNG (.png)\                                                                                       Portable Networks Graphics\                          RW\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/png-writer.html)\
                                                                                                                                                                      W: [PNG Writer](http://rsb.info.nih.gov/ij/plugins/png-writer.html)\
                                                                                                                                                                      RW: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  DICOM (.dic, .dcm, .dicom)\                                                                       Digital Imaging and Communications in Medecine\      R\           RW: [Tudor DICOM Toolkit](..//plugins/the-tudor-dicom-toolkit)\
                                                                                                                                                                      R: [Import Dicom Sequence](http://rsb.info.nih.gov/ij/plugins/import-dicom.html)\
                                                                                                                                                                      RW: [Dicom Rewriter](http://rsb.info.nih.gov/ij/plugins/dicom-rewriter.html)\
                                                                                                                                                                      RW: [Dicom Sort](http://rsb.info.nih.gov/ij/plugins/dicom-sort.html)\
                                                                                                                                                                      R: [Query Dicom Header](http://rsb.info.nih.gov/ij/plugins/query-header.html)\
                                                                                                                                                                      R: [Dicom Directory Analyzer](http://rsb.info.nih.gov/ij/plugins/dicom-analyzer.html)\
                                                                                                                                                                      RW: [Dicom Import/Export](http://www.iftm.de/dicom/dcmimex.htm)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  PICT (.pict, .pic, .pct)\                                                                         Apple PICTure\                                       no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)\
                                                                                                                                                                      R: [Bio-Formats](..//../../plugins/bio-formats)\

  PSD (.psd)\                                                                                       Photoshop Document                                   no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)

  TGA (.tga)\                                                                                       TrueVision Targa File Format\                        no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)

  ICO (.ico)\                                                                                       Windows icon                                         no\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)

  CUR (.cur)\                                                                                       Windows cursor                                       no\          RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)

  Sunraster (.sun)\                                                                                 Sun Microsystems SunRaster\                          no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)

  XBM (.xbm)\                                                                                       X Bitmap Format\                                     no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)

  XPM (.xpm)\                                                                                       X PixMap\                                            no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)

  PCX (.pcx)                                                                                        ZSoft PC Paintbrush File Format\                     no           RW: [JIMI](http://rsb.info.nih.gov/ij/plugins/jimi.html)\
                                                                                                                                                                      W: [JIMI Writer](http://rsb.info.nih.gov/ij/plugins/stack-writer.html)\

  ANALYZE\                                                                                          Mayo Clinic Analyze File Format\                     no           RW: [ANALYZE](http://rsb.info.nih.gov/ij/plugins/analyze.html)\
                                                                                                                                                                      RW: [Nifti_io](http://rsb.info.nih.gov/ij/plugins/nifti.html)\

  NIfTi                                                                                             NIfTi - 1 File Format\                               no           RW: [Nifti_io](http://rsb.info.nih.gov/ij/plugins/nifti.html)

  AHF (.ahf)\                                                                                       ASCII Header Format                                  no           RW: [AHF](http://rsb.info.nih.gov/ij/plugins/ahf.html)

  SPE (.spe)\                                                                                       WinView SPE File Format\                             no\          RW: [SPE](http://rsb.info.nih.gov/ij/plugins/spe.html)

  PIC (.pic)\                                                                                       Bio-Rad PIC Format\                                  no           R: [Biorad Reader](http://rsb.info.nih.gov/ij/plugins/biorad.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  Leica TIFF (.tiff, .lei)\                                                                         Leica Multichannel SP\                               no           R: [Leica SP](http://rsb.info.nih.gov/ij/plugins/leica.html)\
                                                                                                                                                                      R: [Leica SP SPlitter](http://rsb.info.nih.gov/ij/plugins/leica-splitter.html)\
                                                                                                                                                                      R: [Leica_TIFF_Sequence](http://rsb.info.nih.gov/ij/plugins/leica-tiff.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Quicktime (.pic, .mov)\                                                                           Quicktime Movie                                      no           R: [Quicktime Opener](http://rsb.info.nih.gov/ij/plugins/movie-opener.html)\
                                                                                                                                                                      R: [JMF Movie Reader](http://rsb.info.nih.gov/ij/plugins/jmf.html)\
                                                                                                                                                                      W: [Quicktime Writer](http://rsb.info.nih.gov/ij/plugins/movie-writer.html)\
                                                                                                                                                                      RW: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  AVI (.avi)\                                                                                       uncompressed AVI movie files                         RW\          R: [AVI Reader](http://rsb.info.nih.gov/ij/plugins/avi-reader.html)\
                                                                                                                                                                      R: [JMF Movie Reader](http://rsb.info.nih.gov/ij/plugins/jmf.html)\
                                                                                                                                                                      R: [AVI Splitter](http://rsb.info.nih.gov/ij/plugins/avi-splitter.html)\
                                                                                                                                                                      W: [AVI Writer](http://rsb.info.nih.gov/ij/plugins/avi.html)\
                                                                                                                                                                      RW: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  PDS (.pds)\                                                                                       Planetary Data Systems Image Format                  no           [PDS Reader](/%20http///rsb.info.nih.gov/ij/plugins/pds.html)\

  LSM (.lsm)\                                                                                       Zeiss Laser Scanning Microscope Image Format         R            R: [LSM_Reader](http://rsb.info.nih.gov/ij/plugins/lsm-reader.html) (native)\
                                                                                                                                                                      R: [LSMToolbox](resolveuid/17d0d4fbc56c7a4cab6a10c9e283d41d) (LSM_Reader extension)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  RAW                                                                                               Guess Raw from Fuji Bas 1000 Phosphor imager         no           R: [Guess Raw Reader](http://rsb.info.nih.gov/ij/plugins/guess-raw.html)

  ISAC                                                                                              Fuji Bas Scanner\                                    no           R: [ISAC Manager](http://rsb.info.nih.gov/ij/plugins/isac.html)\

  FluoView TIFF (.tiff)\                                                                            Olympus Fluoview tiff                                no           R: [Image Viewer](/%20http///rsb.info.nih.gov/ij/plugins/image-viewer.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  Fluoview FV1000 OIB (.oib)                                                                        Olympus Fluoview FV1000 OIB\                         no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Fluoview FV1000 OIF (.oif, .tif, -ro.pty, .lut, .bmp)\                                            Olympus Fluoview FV1000 OIF\                         no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  IPLAB (.ipl)\                                                                                     IPLab/Windows Scanalytics BD Science\                no           R: [IPLab Reader](http://rsb.info.nih.gov/ij/plugins/iplab-reader.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  Bruker NMR (.fid, .ser, .2dseq, .2rr, .2ii, .3rrr, .3iii)\                                        Bruker NMR Sprectrometer File Format\                no\          R: [Bruker Opener](http://rsb.info.nih.gov/ij/plugins/bruker.html)\

  FDF (.fdf)\                                                                                       Varian MRI Imaging System\                           no\          R: [Multi FDF_Opener](http://rsb.info.nih.gov/ij/plugins/multi-opener.html)\

  VFF (.vff)                                                                                        EVS 900 micro-CT system                              no           R: [Multi_VFF_Opener](http://rsb.info.nih.gov/ij/plugins/multi-opener.html)

  SIF (.sif)\                                                                                       Andor SIF File Format\                               no           R: [OpenSIF](http://rsb.info.nih.gov/ij/plugins/open-sif.html)\

  AxioVision ZVI (.zvi)\                                                                            Zeiss ZVI File Format                                no           R: [Zeiss ZVI Reader](http://rsb.info.nih.gov/ij/plugins/zvi-reader.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  DM3 (.dm3)\                                                                                       Gatan Digital Micrograph File Format\                no           R: [DM3_Reader](http://rsb.info.nih.gov/ij/plugins/DM3_Reader.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  Deltavision (.dv, .r3d)\                                                                          Applied Precision Deltavision Systems File Format\   no           R: [DeltaVision_Opener](http://rsb.info.nih.gov/ij/plugins/track/delta.html)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  MI, NII, NIII\                                                                                    Molecular Imaging and Nanoscope AFM File Format\     no           R: [Open_MI](http://rsb.info.nih.gov/ij/plugins/afm.html)

  IMG (.img)\                                                                                       Packard InstantImager\                               no           R: [InstantImager_Reader](http://rsb.info.nih.gov/ij/plugins/iireader.html)

  UNC                                                                                               UNC File Format\                                     no           RW: [UNC](http://rsb.info.nih.gov/ij/plugins/unc.html)

  PerkinElmer (.tif, .tim, .zpo, .csv, .htm, .ano, .rec, .cfg, .2, .3, .4, .5, .6, .7, .8, \...)\   PerkinElmer UltraView\                               no           R: [PE_Plugins](http://www.embl-heidelberg.de/ExternalInfo/almf/htdocs/almf_website/html/PE_Plugins.htm)\
                                                                                                                                                                      R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)\

  EPS (.eps, .epsi)                                                                                 Encapsulated PostScript                              no           W: [EPS_Writer](http://rsb.info.nih.gov/ij/plugins/eps-writer.html)\
                                                                                                                                                                      RW: [Bio-Formats](..//../plugins/bio-formats)

  SEQ (.seq)                                                                                        Image-Pro Sequence\                                  no\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  IPW (.ipw)                                                                                        Image-Pro Workspace\                                 no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  OpenLab LIFF (.liff)\                                                                             Improvision Openlab LIFF\                            no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  OpenLab RAW (.raw)\                                                                               Improvision Openlab RAW\                             no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Metamorph (.stk)\                                                                                 Universal Imaging (Molecular Devices)\               no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  ICS (.ics, .ids)\                                                                                 Image Cytometry Standard                             no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Leica Lif (.lif)\                                                                                 Leica Image File Format\                             no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Imaris (.ims)\                                                                                    BitPlane Imaris\                                     no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  OME-XML (.ome)\                                                                                   Open Microscopy Environment XML\                     no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  OME-TIFF (.tiff)\                                                                                 Open Microscopy Environment TIFF\                    no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  ABD-TIFF (.tiff)\                                                                                 Andor Biotechnology Division TIFF\                   no\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  GEL (.gel)\                                                                                       Amersham Biosciences GEL Image Format\               no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Nikon (.nef, .tiff)\                                                                              Nikon Electronic Format\                             no           R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  Slidebook (.sld)\                                                                                 Olympus SlideBook\                                   no\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  SPCImage (.sdt)\                                                                                  Becker & Hickl SPCImage\                             no\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  AL3D (.al3d)\                                                                                     Alicona 3D\                                          no\          R: [Bio-Formats](/imagej-documentation-wiki/plugins/bio-formats)

  ND2 (.nd2)\                                                                                       Nikon NIS-Elements ND2                               no           R: [Bio-Formats](..//../plugins/bio-formats)

  μManager (.tif, .txt)\                                                                            μManager\                                            no\          R: [Bio-Formats](..//../../plugins/bio-formats)

  MRC (.mrc)                                                                                        Medical Research Council\                            no\          R: [Bio-Formats](..//../../plugins/bio-formats)

  JPEG2000 (.jp2)\                                                                                  JPEG2000 Format\                                     no\          R: [Bio-Formats](..//../../plugins/bio-formats)

  MNG (.mng)\                                                                                       Multiple-image Network Graphics                      no\          R: [Bio-Formats](..//../../plugins/bio-formats)

  Flex (.flex)\                                                                                     Evotec Flex                                          no\          R: [Bio-Formats](..//../../plugins/bio-formats)\
                                                                                                                                                                      (LuraWave license code required)\

  NRRD (.nrrd, .nhdr)\                                                                              Nearly Raw Raster Data                               no           R: [Bio-Formats](..//../../plugins/bio-formats)

  VIFF bitmap image (.xv)\                                                                          Khoros Visualization Image File                      no           R: [Bio-Formats](..//../../plugins/bio-formats)

  ROI (.roi)\                                                                                       Region of Interest\                                  yes          \-

  ERS (.ers), RS (.rs)\                                                                             PerkinElmer UltraView(E)RS                           no           R: [PE_Plugins](http://www.embl-heidelberg.de/ExternalInfo/almf/htdocs/almf_website/html/PE_Plugins.htm), requires [Image5D](http://rsb.info.nih.gov/ij/plugins/image5d.html)\

  HPGL\                                                                                             Hewlett Packs Graphics Language                      no           R: [HPGL_Reader](http://www.ulfdittmer.com/imagej/hpgl_reader.html)\
  ------------------------------------------------------------------------------------------------- ---------------------------------------------------- ------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**About this table:**

-   Extensions are purely informative; on several operating systems,
    file extensions are rare (e.g., MacOS).
-   Several very different file formats have the same extensions (see
    Biorad pic versus Apple quicktime pic, Leica tiff versus standard
    tiff).

Bugs, comments? [mail me](/mailto/patrick@image-archive.org)
