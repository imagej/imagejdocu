# PDF Macro extension

## Description

This plugin provides PDF creation functions to the ImageJ macro language
using the [iText](http://www.lowagie.com/iText/) library .

## Author

Jerome Mutterer ([email](/mailto/mutterer@ibmp.fr))

## Provided functions

\<code\> Ext.newPDF(path); \</code\> -\> creates a new pdf document.
\<code\> Ext.addMetadata(title, author, subject, keywords); \</code\>
-\> sets pdf\'s metadata. \<code\> Ext.setFont(font, size, style);
\</code\> -\> sets the active font face.

-   *font* should be \"times\", \"courier\" or \"helvetica\"
-   *size* is the font size
-   *stlye* is a string that can contain \"bold\", \"italic\", or
    \"underline\"
-   example: Ext.setFont(\"times\",20,\"bold italic\");

\<code\> Ext.addParagraph(string);\</code\> -\> adds a new paragrah to
the pdf document. \<code\> Ext.addImage(align, scale); \</code\> -\>
adds the active image to the pdf.

-   *align* should be \"center\", \"left\" or \"right\"
-   *scale* in the \[0..1\] range scales the image to a width of
    scale\*pageWidth

\<code\> Ext.fitImage(x,y,w,h); \</code\> -\> draws an w\*h fitted copy
of the active image at x,y.

-   coordinates are in a 72dpi pdf document space

\<code\> Ext.addPage();\</code\> -\> adds a new page to the document.
\<code\> Ext.closePDF();\</code\> -\> finishes and closes the pdf being
built.

## Installation

1.  Download [iText library](http://www.lowagie.com/iText/) to the
    plugins folder.
2.  Download ![this
    file](/plugin/utilities/pdf_macro_extension/pdf_macroext-20130327.jar)
    to the plugins folder.
3.  Update menus or restart ImageJ.
4.  Try the test macro in the following section.

## Example macro

The following macro should create a 2 pages test.pdf document in
ImageJ/output/

![example](/plugin/utilities/pme/pmex01.jpg)

\<code java\> // test macro for the pdf macro extensions

// a sample text lorem =\"Lorem ipsum dolor sit amet, consectetuer
adipiscing elit.\" +\" Sed non risus. Suspendisse lectus tortor,
dignissim sit amet,\" +\" adipiscing nec, ultricies sed, dolor. Cras
elementum ultrices diam.\" +\" Maecenas ligula massa, varius a, semper
congue, euismod non, mi.\" +\" Proin porttitor, orci nec nonummy
molestie, enim est eleifend mi,\" +\" non fermentum diam nisl sit amet
erat. Duis semper.\";

setBatchMode(true); // create an \'output\' folder in the ImageJ folder
startup = getDirectory(\"startup\"); output =
startup+\"output\"+File.separator; if (!File.exists(output))
File.makeDirectory(output); // make the new functions available run
(\"pdf macro ext\"); // open a test image run(\"AuPbSn 40 (56K)\"); //
start a new PDF document Ext.newPDF(output+\"test.pdf\"); // add
information about this document Ext.addMetadata(\"my
title\",\"jerome\",\"pdf test\",\"pdf,report,imagej\"); // add a first
paragraph Ext.addParagraph(\"PDF Macro Extensions !\"); // try different
fonts and styles Ext.setFont(\"times\",10,\"\");
Ext.addParagraph(lorem+\"\\n\\n\");
Ext.setFont(\"courier\",10,\"bold\"); Ext.addParagraph(\"PDF Macro
Extensions !\"); Ext.setFont(\"helvetica\",12,\"bold italic
underlined\"); Ext.addParagraph(\"PDF Macro Extensions !\"); // add the
sample image with different alignments and scales
Ext.addImage(\"center\",0.2); Ext.addImage(\"left\",0.3);
Ext.addImage(\"right\",0.3); // add a new page Ext.addPage();
Ext.setFont(\"times\",16,\"bold italic\"); Ext.addParagraph(getTitle);
Ext.addParagraph(getWidth+\"x\"+getHeight); run(\"Clown (14K)\"); //
place 8 copies of an image at different positions and sizes for
(i=0;i\<8;i++) {

      Ext.fitImage(15+i*40,200+i*10,10+i*40,400);

} // close the PDF file. Ext.closePDF(); \</code\>

## Licence

This plugin relies on iText.\
iText is published under 2 different licenses: MPL and LGPL. See [iText
website](http://www.lowagie.com/iText/) for details.
