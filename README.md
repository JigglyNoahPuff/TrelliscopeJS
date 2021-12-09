# Fall 2021 BYUI Data Science Society TrelliscopeJS Image Labeler Project
### DSS Team Members:
- Allison Day
- Cam Miller
- Chris Trivino
- Ella Yang
- Esther Tang
- Eva Chant
- Noah Cook

## Introduction:
### Who We and DSS Are
Brigham Young Idaho universities Data Science Society is compromised of Students that are driven by curiosity and interested in how data-driven decisions are made and those that have an eye for visualization and how information is communicated. The single mission of the BYUI Data Science Society is to build employable skills for careers related to data science.
### The Use Case We came up with
The Primary purpose of focusing on the Trelliscope RStudio package was to create an image labeling tool that Data Scientists could use to help correctly label image data. Those who have created and completed CNN Projects know that labeling images can be a long and tedious process, the hope of this project was to help make image labeling less tedious. 
### Eventually... the use cases out team members did

## Getting Started Installation and Requirements
```
# In order to download the package you must download the package use the following code in an RSCript or MD file
devtools::install_github("hafen/trelliscopejs@sheldon")
library(trelliscopejs)
```
## Documentation
(Any links we used.  Links Chris/Ryan provided.  Team Members personal trelliscope repos if any.)
Here is a link to a [tutorial](https://cran.r-project.org/web/packages/trelliscopejs/vignettes/trelliscopejs.html) on how trelliscope is used for data exploration with its multiplot function. 

### How much we get paid
We did this for free for educational purposes.

## File Preparation
The image files are stored in folders in a main folder.
Each folder represents how many lanes each image has (1, 2, 3, etc.).
A csv file contains a column of paths to the image and a column for the lanes in each image.

### Python Notebook Explanation
The python notebook was used to create the csv file, but similar code can also be found in the trelliscopeTester.R file.

### CSVs and Data/Images used
One very short and simple example is the "imageLabelingWithTrelliscope.R" file.

## Actual R/TrelliscopeJS Stuff
### Maybe Explain the Examples from him that gave us inspiration
In the official TrelliscopeJS Documentation there is a pokemon image example.  This was the inspiration for our idea.  We thought if you could load images with trelliscope and quickly create new data related to that image, then image labeling would be much easier.
### Street View
Spring Semester of 2021 Cam Miller, Chris Trivino, and Noah Cook worked on computer vision project in which they had to generate a large dataset of labeled images.  They created a Python script that just looped and showed images.  It was janky and not very effective.  It also occasionaly broke.  Cam, Chris, and Noah wanted to create a tool to make that process easier for people in the future.  They did an example of this with Trelliscope to display how it was done.
### Cats Dogs
This is a very short example of how to use Trelliscope for labeling cat and dog images. In this short and brief example there is an file that contains images of cats and dogs. In the dog file there is a picture of a cat(mislabeling). The tutorial shows how to use trelliscope to correctly label the image and move it to the appropriate folder. (Note: there is an md file in the cat/dog example which explains the process in greater detail.)

## If we had more time/money/energy what we would do?




## Video Tutorial/Links
### Example Use Case Video


https://user-images.githubusercontent.com/38081350/145315794-3d3d05db-7b6b-4992-a694-416243122875.mp4

## MIT License
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Personal Links and Send Off
Feel Free to Fork the repo and share your cool projects you come up with!  All credit for TrelliscopeJS is given to Ryan/Chris.  J Hathaway is da bae. 
