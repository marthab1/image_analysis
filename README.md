# image_analysis
This repository holds code for Fiji (ImageJ) R, and CellProfiler pipelines used for the analysis of lab data by Dr. Martha Bhattacharya's lab at the University of Arizona. Please direct questions to Dr. Bhattacharya (marthab1 AT arizona.edu).
#
#
GCaMP Analysis: these files are meant to be used in sequence in this order, starting from a folder containing zeiss CZI files. Used in Cho, Beigate, Klein et al (2022) Molecular Neurobiology.

1) GCaMP Image Processing --> 
2) (draw ROIs) --> 
3) ROI Analysis --> 
4) Text file into R --> Ratio output

#

Puncta Counting: This file is for use in Fiji to threshold and then find maxima in ROIs defined on a binary image. Used for Shank1 and PSD95 puncta analysis.
