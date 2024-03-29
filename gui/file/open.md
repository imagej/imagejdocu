# Open

Reads an image and displays it in a separate window. Files must be in
TIFF (uncompressed), PNG, GIF, JPEG, DICOM, BMP, PGM or FITS format.
Also opens ImageJ and NIH Image lookup tables (with \".lut\" extension).
Additional file formats are supported via plugins installed in the
Import submenu.\

-   \*\* TIFF\*\* images can be 1-bit, 8-bits, 16-bits (unsigned),
    32-bit (real) or RGB color. File may be uncompressed or
    LZW-compressed. TIFF files with multiple images of the same type and
    size open as a stack. Enable debugging using Edit/Options/Misc\...
    and ImageJ will display the TIFF tags as the file is opened.
-   **DICOM** (Digital Imaging and Communications in Medicine) is a
    standard popular in the medical imaging community. Support in ImageJ
    is limited to uncompressed DICOM files. DICOM files containing
    multiple images open as a stack. Use Image/Show Info to display the
    DICOM header information. Use File/Import/Image Sequence to import a
    DICOM sequence. With ImageJ 1.34k and later, imported sequences are
    sorted by image number instead of by file name and the tags are
    preserved when DICOM images are saved in TIFF format. Chris
    Rorden\'s DICOM page at
    <http://www.mrc-cbu.cam.ac.uk/personal/chris.rorden/dicom.htm> is a
    good DICOM resource.
-   **FITS** (Flexible Image Transport System) image is the format
    adopted by the astronomical community for data interchange and
    archival storage. Use Image/Show Info to display the FITS header.
    Information about FITS is available from
    <http://fits.gsfc.nasa.gov>.
-   **PGM** (Portable GreyMap), PBM (Portable BitMap) and PPM (Portable
    PixMap) are simple image formats that use an ASCII header. A
    description of these formats can be found at
    <http://astronomy.swin.edu.au/~pbourke/dataformats/ppm/>.
