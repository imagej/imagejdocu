# PlateMontage

\*\* Creates a labeled plate montage image from BD Pathway 855 /
AttoVision 1.6 data sets \*\*

\<code java\> /\* PlateMontage macro \*/ var version = \'1.4a,
2009-10-13\'; * * Creates a labeled plate montage image from BD Pathway
855 / AttoVision 1.6 data sets * * Features: // Borders do not hide part
of the images as in AttoVision // Simultaneous processing of up to three
channels // Automatically saves the montage // Style is customizable //
Well images can be inverted // Missing images are not a problem // All
settings are remembered * * Shortcuts: // Shift-P: Run this macro //
Shift-C: Close all windows // Shift-M: Reload this macro * * System
requirements: // The screen height must be at least 1024 pixels * * BD
Pathway 855 / AttoVision data set directory structure: // + 2009-09-20
exp 328 // + 2009-09-21_000 // + Well A001 // Alexa 488 - n000000.tif //
Alexa 594 - n000000.tif // Hoechst - n000000.tif * * Contact:
njensen@mail.unc.edu // This code has been released into the Public
Domain (PD)

// global constants var settingsFile = \'PlateMontageSettings.txt\'; var
borderWidth = 3; var labelHeight = 80; var labelWidth = 60; var
labelFont = \'SansSerif\'; var labelSize = 60; var labelStyle =
\'antialiased\'; var labelColor = 0; var scaledWidth = 200; var
montageColor = 255; var beepDone = true; var tab = \'\\t\'; var macroDir
= getDirectory(\'macros\'); var settingsFileFull = macroDir +
settingsFile;

// global variables var inputPath; var outputPath; var folderFormat; var
imageUse1; var image1; var imageUse2; var image2; var imageUse3; var
image3; var rowFromChar; var colFrom; var rowToChar; var colTo; var
outputPath; var invertImages; var invertMontage; var invertBorders; var
popupDone; var i; var j; var parentDir; var parentParentDir; var
rowFrom; var rowTo; var reportMontage;

* * PlateMontage: main program, gets and saves parameters //

function PlateMontage() {

// default settings

      inputPath      = 'C:\\AttoVision\\Data\\';
      outputPath     = '..\\..\\';
      folderFormat   = '384';
      imageUse1      = true;
      image1         = 'Alexa 594 - n000000.tif';
      imageUse2      = true;
      image2         = 'Hoechst - n000000.tif';
      imageUse3      = false;
      image3         = '';
      rowFromChar    = 'A';
      colFrom        = 1;
      rowToChar      = 'P';
      colTo          = 24;
      invertImages   = false;
      invertMontage  = false;
      invertBorders  = false;
      popupDone      = true;

      rowFrom = charCodeAt(toUpperCase(rowFromChar), 0) - 64;
      rowTo = charCodeAt(toUpperCase(rowToChar), 0) - 64;

// read settings

      if (File.exists(settingsFileFull) == 1) {
          var settings = File.openAsString(settingsFileFull);
          var settingLines = split(settings, '\r\n');
          for (i = 0; i &lt; lengthOf(settingLines); i ++) {
          setting = split(settingLines[i], tab);
              if (lengthOf(setting) == 1) {
                  var name = setting[0];
                  setting = newArray(2);
                  setting[0] = name;
                  setting[1] = '';
              }
              if (setting[0] == 'inputPath') {
                  inputPath = setting[1];
              }
              else if (setting[0] == 'outputPath') {
                  outputPath = setting[1];
              }
              else if (setting[0] == 'folderFormat') {
                  folderFormat = setting[1];
              }
              else if (setting[0] == 'imageUse1') {
                  imageUse1 = parseInt(setting[1]);
              }
              else if (setting[0] == 'image1') {
                  image1 = setting[1];
              }
              else if (setting[0] == 'imageUse2') {
                  imageUse2 = parseInt(setting[1]);
              }
              else if (setting[0] == 'image2') {
                  image2 = setting[1];
              }
              else if (setting[0] == 'imageUse3') {
                  imageUse3 = parseInt(setting[1]);
              }
              else if (setting[0] == 'image3') {
                  image3 = setting[1];
              }
              else if (setting[0] == 'rowFromChar') {
                  rowFromChar = setting[1];
              }
              else if (setting[0] == 'colFrom') {
                  colFrom = parseInt(setting[1]);
              }
              else if (setting[0] == 'rowToChar') {
                  rowToChar = setting[1];
              }
              else if (setting[0] == 'colTo') {
                  colTo = parseInt(setting[1]);
              }
              else if (setting[0] == 'scaledWidth') {
                  scaledWidth = parseInt(setting[1]);
              }
              else if (setting[0] == 'invertImages') {
                  invertImages = parseInt(setting[1]);
              }
              else if (setting[0] == 'invertMontage') {
                  invertMontage = parseInt(setting[1]);
              }
              else if (setting[0] == 'invertBorders') {
                  invertBorders = parseInt(setting[1]);
              }
              else if (setting[0] == 'popupDone') {
                  popupDone = parseInt(setting[1]);
              }
          }
      }
      rowFromChar = toUpperCase(rowFromChar);
      rowToChar = toUpperCase(rowToChar);
      rowFrom = charCodeAt(rowFromChar, 0) - 64;
      rowTo = charCodeAt(rowToChar, 0) - 64;

// display dialog

      requires('1.41j');
      Dialog.create('Plate Montage Settings');
      Dialog.addMessage('== PlateMontage Macro (Version ' + version + ') ==\n \nCreates a labeled plate montage from BD Pathway plate images\n \nShift-P: Run this macro\nShift-C: Close all windows\nShift-M: Reload this macro');
      Dialog.addMessage('Parent directory of images (DATE-NUMBER; leave empty for popup):');
      Dialog.addString('', inputPath, 90);
      Dialog.addMessage('Output directory (relative paths: &quot;.\\&quot; (same directory), &quot;..\\&quot; (one up); leave empty for popup):');
      Dialog.addString('', outputPath, 90);
      Dialog.addMessage('Image folder format (24: &quot;A1&quot;; 96: &quot;A01&quot;, 384: &quot;A001&quot;):');
      Dialog.addChoice('', newArray('24', '96', '384'), folderFormat)
      Dialog.addCheckbox('Process filename 1 (leave empty for popup):', imageUse1);
      Dialog.addString('', image1, 30);
      Dialog.addCheckbox('Process filename 2 (leave empty for popup):', imageUse2);
      Dialog.addString('', image2, 30);
      Dialog.addCheckbox('Process filename 3 (leave empty for popup):', imageUse3);
      Dialog.addString('', image3, 30);
      Dialog.addMessage('Coordinates of block of wells (non-existing wells will be left empty):');
      Dialog.addString('From row:', rowFromChar, 1);
      Dialog.addNumber('From column:', colFrom);
      Dialog.addString('To row:', rowToChar, 1);
      Dialog.addNumber('To column:', colTo);
      Dialog.addMessage('Scaled image width in pixels:');
      Dialog.addNumber('', scaledWidth);
      Dialog.addCheckbox('Invert images', invertImages);
      Dialog.addCheckbox('Black canvas with white label text', invertMontage);
      Dialog.addCheckbox('Black borders and plate background', invertBorders);
      Dialog.addMessage('');
      Dialog.addCheckbox('Display message when done', popupDone);
      Dialog.addMessage('');
      Dialog.show();

// get settings from dialog

      inputPath     = Dialog.getString();
      outputPath    = Dialog.getString();
      folderFormat  = Dialog.getChoice();
      imageUse1     = Dialog.getCheckbox();
      image1        = Dialog.getString();
      imageUse2     = Dialog.getCheckbox();
      image2        = Dialog.getString();
      imageUse3     = Dialog.getCheckbox();
      image3        = Dialog.getString();
      rowFromChar   = Dialog.getString();
      colFrom       = Dialog.getNumber();
      rowToChar     = Dialog.getString();
      colTo         = Dialog.getNumber();
      scaledWidth   = Dialog.getNumber();
      invertImages  = Dialog.getCheckbox();
      invertMontage = Dialog.getCheckbox();
      invertBorders = Dialog.getCheckbox();
      popupDone     = Dialog.getCheckbox();

      rowFromChar = toUpperCase(rowFromChar);
      rowToChar = toUpperCase(rowToChar);
      rowFrom = charCodeAt(rowFromChar, 0) - 64;
      rowTo = charCodeAt(rowToChar, 0) - 64;

      var processingImages = '';

// ask for image 1

      if (imageUse2 == true) {
          if (image2 == '') {
              Popup('Please select an image 1', 'Image 1');
              open();
              image1 = File.getName(File.name);

// get input path from image path

              if (inputPath == '') {
                  inputPath = replace(File.directory, '\\.*?\\.*?$', '\\');
              }
              close();
          }
          processingImages = processingImages + image1 + '\n';
      }

// ask for image 2

      if (imageUse2 == true) {
          if (image2 == '') {
              Popup('Please select an image 2', 'Image 2');
              open();
              image2 = File.getName(File.name);

// get input path from image path

              if (inputPath == '') {
                  inputPath = replace(File.directory, '\\.*?\\.*?$', '\\');
              }
              close();
          }
          processingImages = processingImages + image2 + '\n';
      }

// ask for image 3

      if (imageUse3 == true) {
          if (image3 == '') {
              Popup('Please select an image 3', 'Image 3');
              open();
              image3 = File.getName(File.name);

// get input path from image path

              if (inputPath == '') {
                  inputPath = replace(File.directory, '\\.*?\\.*?$', '\\');
              }
              close();
          }
          processingImages = processingImages + image3 + '\n';
      }

// select input path

      if (inputPath == '') {
          inputPath = getDirectory('Parent directory (DATE-NUMBER)');
      }

// add trailing \\

      inputPath = replace(inputPath, '([^\\\\])$', '$1\\\\');

// select output path

      if (outputPath == '') {
          outputPath = getDirectory('Output directory');
      }

// add trailing \\

      outputPath = replace(outputPath, '([^\\\\])$', '$1\\\\');

// save settings to file

      var file = File.open(settingsFileFull) ;
      print(file, 'inputPath'     + tab + inputPath);
      print(file, 'outputPath'    + tab + outputPath);
      print(file, 'folderFormat'  + tab + folderFormat);
      print(file, 'imageUse1'     + tab + imageUse1);
      print(file, 'image1'        + tab + image1);
      print(file, 'imageUse2'     + tab + imageUse2);
      print(file, 'image2'        + tab + image2);
      print(file, 'imageUse3'     + tab + imageUse3);
      print(file, 'image3'        + tab + image3);
      print(file, 'rowFromChar'   + tab + rowFromChar);
      print(file, 'colFrom'       + tab + colFrom);
      print(file, 'rowToChar'     + tab + rowToChar);
      print(file, 'colTo'         + tab + colTo);
      print(file, 'scaledWidth'   + tab + scaledWidth);
      print(file, 'invertImages'  + tab + invertImages);
      print(file, 'invertMontage' + tab + invertMontage);
      print(file, 'invertBorders' + tab + invertBorders);
      print(file, 'popupDone'     + tab + popupDone);
      File.close(file);

// convert relative o absolute output path

      if (matches(outputPath, '^(\\.|\\.\\.)\\\\.*?$') == true) {
          outputPath = inputPath + outputPath;
          var outputPathOld;
          do {
              outputPathOld = outputPath;
              outputPath = replace(outputPath, '\\\\\\.\\\\', '\\\\');
              outputPath = replace(outputPath, '\\\\[^\\\\]+\\\\\\.\\.\\\\', '\\\\');
          } while (outputPath != outputPathOld);
      }

// check values

      if (rowFrom &lt; 1) {
          exit('Start row ' + rowFromChar + ' is not between A and P');
      }
      if (rowTo &gt; 16) {
          exit('End row ' + rowToChar + ' is not between A and P');
      }
      if (rowFrom &gt; rowTo) {
          exit('End row ' + rowToChar + ' is smaller than start row ' + rowFromChar);
      }

      if (colFrom &lt; 1) {
          exit('Start column ' + colFrom + ' is not between 1 and 24');
      }
      if (colTo &gt; 24) {
          exit('End col ' + colTo + ' is not between 1 and 24');
      }
      if (colFrom &gt; colTo) {
          exit('End column ' + colTo + ' is smaller than start column ' + colFrom);
      }

// check paths

      if (File.isDirectory(inputPath) == false) {
          exit('Parent directory &quot;' + inputPath + '&quot; does not exist');
      }
      if (File.isDirectory(outputPath) == false) {
          exit('Output directory &quot;' + outputPath + '&quot; does not exist');
      }

// process images

      CloseImages();

// get name of parent directories

      parentDir = replace(inputPath, '^.*?\\\\([^\\\\]*?)\\\\$', '$1');
      parentParentDir = replace(inputPath, '^.*?\\\\([^\\\\]*?)\\\\[^\\\\]*?\\\\$', '$1');
      reportMontage = '';

// print to log

      print('Processing...\nDirectory: ' + parentParentDir + '\\' + parentDir + '\nPath: ' + inputPath + '\nImages:\n' + processingImages);
      ProcessMontage(image1, imageUse1);
      ProcessMontage(image2, imageUse2);
      ProcessMontage(image3, imageUse3);

// print to log

      print('Output path: ' + outputPath + '\nMontage files: ' + reportMontage + '\nDone!\n--------\n');

// beep

      if (beepDone == true) {
          beep();
      }

// popup

      if (popupDone == true) {
          Popup('Done!\n \nSaved to: \n' + outputPath + '\n \nMontage files:' + reportMontage, 'Done');
      }

      return;

}

* * ProcessMontage: create and save a montage //

function ProcessMontage(image, imageUse) {

      if (imageUse == true) {

// create montage file name

          var montageImage = parentParentDir + ', ' + parentDir + ', ' + replace(image, '\\.\\w+$', '') + '.png';
          CreateMontage(image, montageImage);
          if (isOpen(montageImage)) {
              reportMontage = reportMontage + '\n' + montageImage;
              selectWindow(montageImage);
              saveAs('PNG', outputPath + montageImage);
          }
          if (isOpen('Log')) {
              selectWindow('Log');
          }
      }
      return;

}

* * CreateMontage: create a montage //

function CreateMontage(image, montageImage) {

      if (isOpen('Log')) {
          selectWindow('Log');
      }
      setBatchMode(true);

      // image folder name format
      var folderDigits = '000';
      if (folderFormat == '24') {
          folderDigits = '0';
      }
      if (folderFormat == '96') {
          folderDigits = '00';
      }
      else if (folderFormat == '384') {
          folderDigits = '000';
      }

      var scalingFactor;
      var dimensionsCreated = false;
      var montageCreated = false;

      var numRows = rowTo - rowFrom + 1;
      var numCols = colTo - colFrom + 1;

// cycle through images

      for (row = 0; row &lt; numRows; row ++) {
          var rowNumber = row + rowFrom;
          var rowChar = fromCharCode(rowNumber + 64);

          for (col = 0; col &lt; numCols; col ++) {
          var colNumber = col + colFrom;
          var colStr = substring(folderDigits, lengthOf(toString(colNumber))) + colNumber;

// open image

              var imageFileFull = inputPath + 'Well ' + rowChar + colStr + '\\' + image;
              if (File.exists(imageFileFull) == true) {
                  open(imageFileFull);
                  rename('Image');

// get dimensions from first image

                  if (dimensionsCreated == false) {
                      dimensionsCreated = true;
                      var width = getWidth();
                      var height = getHeight();
                      scalingFactor = scaledWidth / width;
                      scaledHeight = floor(height * scalingFactor);
                  }

// create montage with dimensions

                  if (montageCreated == false) {
                      montageCreated = true;
                      montageWidth = labelWidth * 2 + scaledWidth * numCols + borderWidth * (numCols + 1);
                      montageHeight = labelHeight + scaledHeight * numRows + borderWidth * (numRows + 1);
                      newImage(montageImage, '16-bit Black' + montageColor, montageWidth, montageHeight, 1);
                      setForegroundColor(255, 255, 255);
                      run('Select All');
                      run('Fill');

// label montage

                      setFont(labelFont, labelSize, labelStyle);
                      setColor(labelColor);
                      setJustification('center');

// label columns

                      var x = scaledWidth / 2 + labelWidth * 2 + borderWidth;
                      var y = labelHeight - 10;
                      for (colNumberLabel = colFrom; colNumberLabel &lt;= colTo; colNumberLabel ++) {
                          drawString(colNumberLabel, x, y);
                          x += scaledWidth + borderWidth;
                      }

// label rows

                      var x1 = labelWidth / 2;
                      var x2 = labelWidth / 2 + labelWidth;
                      var y = labelHeight + borderWidth + scaledHeight / 2 + 30;
                      for (rowNumberLabel = rowFrom; rowNumberLabel &lt;= rowTo; rowNumberLabel ++) {
                          var rowCharLabel = fromCharCode(rowNumberLabel + 64);
                          drawString(rowNumberLabel, x1, y);
                          drawString(rowCharLabel, x2, y);
                          y += scaledHeight + borderWidth;
                      }

//invert

                      if ( (invertMontage == true) || (invertBorders == true) ) {
                          makeRectangle(labelWidth * 2, labelHeight, montageWidth - labelWidth * 2, montageHeight - labelHeight);

// invert border and image background

                          if (invertBorders == true) {
                              run('Invert');
                          }

// invert montage background and labels

                          if (invertMontage == true) {
                              run('Make Inverse');
                              run('Invert');
                          }

                          run('Select None');
                      }
                  }

// scale image

                  selectWindow('Image');
                  run('Scale...', 'x=- y=- width=' + scaledWidth + ' height=' + scaledHeight + ' interpolate title=[Image]');
                  run('Canvas Size...', 'width=' + scaledWidth + ' height=' + scaledHeight + ' position=Center');
                  run('Multiply...', 'value=16');

// invert

                  if (invertImages == true) {
                      run('XOR...', 'value=1111111111111111');
                  }

// copy scaled image into montage

                  selectWindow('Image');
                  run('Select All');
                  run('Copy');
                  selectWindow(montageImage);
                  makeRectangle(labelWidth * 2 + scaledWidth * col + borderWidth * (col + 1), labelHeight + scaledHeight * row + borderWidth * (row + 1), scaledWidth, scaledHeight);
                  run('Paste');
                  run('Select None');
                  selectWindow('Image');
                  close();
              }
          }
    }

      selectWindow(montageImage);
      setBatchMode(false);

      return;

}

* * Popup: popup a message //

function Popup(text, title) {

      text = '' + text;
      title = '' + title;
      Dialog.create(title);
      Dialog.addMessage(text)
      Dialog.show();
      return;

}

* * CloseAllImages //

function CloseImages() {

      for (i = nImages(); i &gt; 0; i -- ) {
          selectImage(i);
          close();
      }
      return;

}

* * CloseAllImages //

function CloseAllImages() {

      CloseImages();

// close message window

      if (isOpen('Log')) {
          selectWindow('Log');
      run('Close');
      }

      return;

}

// install macro: plate montage macro \'Plate Montage \[P\]\' {

      PlateMontage();

}

// install macro: reload the macro macro \'Reload Plate Montage macro
\[M\]\' {

      run('Install...', 'install=[C:\\Program Files\\ImageJ\\macros\\PlateMontage.ijm]');

}

// install macro: close all images macro \'Close all images \[C\]\' {

      CloseAllImages();

} \</code\>
