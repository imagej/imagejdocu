# MVFG - Multi-format Video Frame Grabber ImageJ Plugin

## Introduction

Currently ImageJ presents itself as a good working tool for medical
imaging research. Image processing and analysis using specific ImageJ
plugins is a simple process, mainly due to its natively support for a
wide range of image formats. However, there are medical imaging
modalities (e.g. endoscopy, ultrasound), with video output formats that
are still not supported by ImageJ (e.g. VOB, MPG). With the base package
of ImageJ it is possible to open videos in AVI formatand with additional
plugins (e.g., QuickTime Movie Writer, JMF Movie Reader, QuickTime
Opener) videos in Quicktime Movie format (i.e. MOV and PIC) are also
supported. For other video formats it is necessary to convert the video
to a supported format using a third party video converter application.

A video is basically a temporal sequence of images. An average endoscopy
produces a five to ten minute video with a frame rate of 50 fps. Of
these tens of thousands of images only a few are relevant, thus it is
necessary to select and extract the relevant images to be
analyzed/processed in ImageJ.

We developed an ImageJ plugin to select and extract frames from video in
diverse formats (e.g. MOV, AVI, VOB, MPG, MP4, FLV, MKV). Its user
interface allows for video viewing and browsing. During video
visualization the user can grab frames and export them as images or an
Image Stack to ImageJ. This plugin, entitled "Multi-format Video Frame
Grabber - MVFG" was developed using the vlcj framework (a Java framework
for the vlc media player).

![](http://biim.di.uminho.pt/images/captura%20de%20ecr%202012-11-2%20s%2013.10.49.png){.align-center
width="600" height="400"}

## Authors

Joel Braga\
Isabel Laranjo\
Victor Alves\

## Download

The latest version of MVFG can be downloaded
[here](http://biim.di.uminho.pt/index.php/mvfg) from the biim website
(biim.di.uminho.pt)

## Installation

Installation guide can be found at the download page.
