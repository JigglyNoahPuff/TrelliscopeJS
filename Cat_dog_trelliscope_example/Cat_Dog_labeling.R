## labeling cats and dogs

devtools::install_github("hafen/trelliscopejs@sheldon")
library(trelliscopejs)
library(ggplot2)
library(gapminder)
library(tidyverse)

# Creating a dataframe which shows the image path, class label, the new image path, and the panel key. from the python "trelliscopeTesting.ipynb" https://github.com/JigglyNoahPuff/TrelliscopeJS/blob/main/trelliscopeTesting.ipynb Or found in the local directory. 


dat <- read_csv("cat_dog_v2.csv") %>%
  mutate(newImagePath = substr(imagePath, 17, 1000000L)) %>%
  mutate_at(vars(matches("_id$")), as.character) %>%
  mutate(panel = img_panel_local(newImagePath),
         panelKey = str_replace_all(imagePath, '[./]', '_'))

view(dat) 


# load the trelliscope images, and select the correct label for mis-labeled images.
# after correctly labeling look at bottom right of screen and save the new correct csv file pertaining to the changes you made from correcting the mislabeling.
trelliscope(dat, 
            name='Animal Images', 
            path='random_images',
            nrow = 3, ncol = 6, width = 1000,
            state = list(labels = c("imagePath", "Animal","label")),
            inputs = input_cogs(
              input_radio(name = "label",
                          desc = "Is this the right animal?",
                          options = c('cat','dog')
              ),
              feedback_email = "trivinochris124@gmail.com"
            ),
)


#load the new csv that was created from the trelliscope multiplot above. You can see the corrections that we made when used used trelliscope are in the "label" column
newlabeled_dat <- read_csv("Animal_Images_2021-12-08(2).csv")
view(newlabeled_dat) 



# filter the new dataframe we just created for the specified label we would like to create a folder for. (in this case a folder of just dog images)
newlabels <- newlabeled_dat %>%
  left_join(dat, by='panelKey') %>% 
  filter(label =="dog") ## filter the new labeled dataset for images labeled "cat"

view(newlabels)

## This creates a folder for the specified images we just filtered for. 
dir.create('ex_images') # creating a new folder called "ex_images" where all of the photo's for the label we just filtered for will be stored.  

# moves all cat images into the newly created folder from above.If you want to create multiple folder just create a new folder directory from the the code above with a different name from "ex_images" and then change the code below to use that new directory.  
filePathIt <- 1
for (filePath in newlabels$imagePath) {
  file.copy(filePath, paste('./ex_images/newImage', filePathIt, '.jpg', sep=''))
  filePathIt = filePathIt + 1
}

# we have now just created a new folder full of only dog images. We can do the same for other classes by filtering the new dataset from trelliscope for the appropriate label value we want to make a folder for. 