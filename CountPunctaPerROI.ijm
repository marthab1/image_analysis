//this top part should duplicate your puncta image (active image!), threshold, make a binary, separate particles, and load the ROIs from the manager.

run("Duplicate...", "title=red");
setAutoThreshold("Otsu dark no-reset");
//run("Threshold...");
//setThreshold(117, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Open");
run("Watershed");
roiManager("Show None");
roiManager("Show All");

//this part should loop through all the ROI to count the puncta within each one, and then list them in the log file
n = roiManager('count');
for (i = 0; i < n; i++) {
    roiManager('select', i);
    run("Find Maxima...", "prominence=10 output=Count");
}
