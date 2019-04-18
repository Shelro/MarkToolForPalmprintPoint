# MarkToolForPalmprintPoint
This is MATLAB GUI tool for marking finger-gap-point or something like that. The latest version can be found at here: https://github.com/Shelro/MarkToolForPalmprintPoint

### Requirement
MATLAB (In windows, please set your display setting to 100% to fully display the GUI.)
For small screen in notebook, use the fig file in folder "SmallScreenUI" instead.

### How to use:
#### 1. Read Image
After you have downloaded the source code, unzip it in a folder.
1. Start up MATLAB and run main.m.
2. Enter the folder your images in, or use "Choose Folder" button to select folder.
3. Select correct format of your images, and click "Read" button.
4. Use "Previous" and "Next" button, or left arrow key and right arrow key to navigate through the images.

The program will read images of corresponding format in a sequence and the total number of images will be shown below the button. The first image will be loaded automatically to the axes. The sequence and name of it will be shown below the axes.

#### 2. Mark Marks
After you have loaded an image, find finger-gap-point points.
1. Click left mouse button on an image to mark marks.
2. Click right mouse button on a mark to delete it.
3. After marking marks, click "Save" button or "E" on the keyboard to save the marks to file.

The mark consists of a point, a circle, and an index number at the right bottom corner. Click right mouse button inside the circle to delete the mark. The marks will be save as a "mat" file with the same name of the image in the same folder. Refer to MATLAB documentation for more information about operating "mat" file.

#### 3. Generate local coordinate
After you have marked your marks, fill the table on the right to generate local coordinate.
1. Find the finger-gap-point A between the index finger and the middle finger, the finger-gap-point B between the ring finger and the little finger.
2. For the left hand, A→B is the direction of x-Axis, so fill the index number of point A in the first column and the index number of point B in second column in a row. For the right hand, B→A s the direction of x-Axis, so fill the index number of point B in the first column and the index number of point A in second column in a row.
3. Click "Save" button or "E" on the keyboard to save the local coordinate to file and the slots should be drawn on the image.

#### Advanced Functionality
1. Press "F" key on the keyboard to magnify to a nearby region of mouse position.
2. Click left mouse button and drag a mark to adjust its position.
3. Press "W", "A", "S" and "D" keys on the keyboard to fine tune the position of the selected mark. The index of selected mark will be shown on the right of image. By default, none of the marks is selected, and the index should be zero. When you click on a mark or drag it, the mark will be selected. When you magnify the image, the mark in the view with smallest index number will be selected.
4. Use mouse wheel up and down to perform "Save" + "Previous" button function and "Save" + "Next" button function.
5. Use "Turn to Page" function to fast index to certain page.


