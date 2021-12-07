
run("Bio-Formats", "open=[N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/dvrnai-dant4.czi] color_mode=Default display_metadata rois_import=[ROI manager] specify_range split_channels view=[Standard ImageJ] stack_order=Default c_begin=1 c_end=1 c_step=1 t_begin=1 t_end=1 t_step=1");
rename("tdtom.czi");
//setTool("line");
makeLine(0, 489, 512, 489);
run("Set Scale...", "distance=512 known=112.05 unit=micron global");
run("Duplicate...", " ");
run("Subtract Background...", "rolling=100");
setAutoThreshold("Default dark");
//run("Threshold...");
//setThreshold(40, 255);
setOption("BlackBackground", false);
run("Convert to Mask");
run("Create Mask");
imageCalculator("AND create", "tdtom.czi","mask");
selectWindow("Result of tdtom.czi");
rename("tdtom.czi - processed");
saveAs("Tiff", "N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/processed images/tdtom.czi - processed.tif");


run("Bio-Formats", "open=[N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/dvrnai-dant4.czi] color_mode=Default rois_import=[ROI manager] specify_range split_channels view=[Standard ImageJ] stack_order=Default c_begin=2 c_end=2 c_step=1 t_begin=1 t_end=1 t_step=1");
rename("gcamp5");
run("Subtract Background...", "rolling=100");
imageCalculator("AND create", "gcamp5","mask");
selectWindow("Result of gcamp5");
rename("gcamp5.czi - processed");
saveAs("Tiff", "N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/processed images/gcamp5.czi - processed.tif");
run("ROI Manager...");