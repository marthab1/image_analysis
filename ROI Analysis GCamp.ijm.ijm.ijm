run("Set Measurements...", "area mean integrated redirect=None decimal=3");
run("Set Scale...", "distance=512 known=112.05 unit=micron global");
selectWindow("tdtom.czi - processed.tif");
roiManager("Measure");
saveAs("Results", "N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/output/tdtom_2apb1.txt");
run("Clear Results");

selectWindow("gcamp5.czi - processed.tif");
roiManager("Show None");
roiManager("Show All");
roiManager("Measure");
saveAs("Results", "N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/output/gcamp_2apb1.txt");
run("Clear Results");
run("Close All");