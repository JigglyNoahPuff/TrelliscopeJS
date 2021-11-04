devtools::install_github("hafen/trelliscopejs@sheldon")
library(trelliscopejs)
library(ggplot2)
library(gapminder)
library(tidyverse)


qplot(year, lifeExp, data = gapminder) +
  xlim(1948, 2011) + ylim(10, 95) + theme_bw() +
  facet_trelliscope(~ country + continent,
                    name = "gapminder_life_expectancy",
                    desc = "life expectancy vs. year by country using Gapminder data",
                    nrow = 2, ncol = 3, width = 1000,
                    inputs = input_cogs(
                      input_radio(name = "correct",
                                  desc = "Does the data for this panel appear to be correct?",
                                  options = c('0','1','2','3','4','5','6','7','8')),
                      input_text(name = "comments",
                                 desc = "Comments about the data in this panel",
                                 width = 200, height = 12),
                      feedback_email = "email@address.com"
                    )
  )


read_csv("http://bit.ly/plot_pokemon") %>% glimpse()


pokemon <- read_csv("http://bit.ly/plot_pokemon") %>%
  
  mutate_at(vars(matches("_id$")), as.character) %>%
  mutate(panel = img_panel(url_image))


trelliscope(pokemon, name = "pokemon", nrow = 3, ncol = 6,
            state = list(labels = c("pokemon", "pokedex")))





laneImagesDf <- read_csv('./data/laneImages.csv') %>%
  mutate(newImagePath = substr(imagePath, 18, 1000000L)) %>%
  mutate_at(vars(matches("_id$")), as.character) %>%
  mutate(panel = img_panel_local(newImagePath),
         panelKey = str_replace_all(imagePath, '[./]', '_'))



View(laneImagesDf)


trelliscope(laneImagesDf, 
            name='Good2Go Lanes', 
            path='Good2Go_images',
            nrow = 3, ncol = 6, width = 1000,
            inputs = input_cogs(
                          input_radio(name = "lanes2",
                                desc = "Does the lanes for this panel appear to be correct?",
                                options = c('0','1','2','3','4','5','6','7')
                      ),
                          feedback_email = "email@address.com"
            ),
)


laneImagesDf2 <- read_csv('Good2Go_Lanes_2021-10-28.csv') %>%
  right_join(laneImagesDf, by='panelKey') %>% 
  filter(lanes != lanes2)

imagePath = './Good2Go_images/1_lane/Ada_County_ID_img_0031.jpg'

panelKey = '__Good2Go_images_1_lane_Boise_ID_img_0011_jpg'


## This creates a folder
dir.create('mislabeled_images')

filePathIt <- 1
for (filePath in laneImagesDf2$imagePath) {
  file.copy(filePath, paste('./mislabeled_images/newImage', filePathIt, '.jpg', sep=''))
  filePathIt = filePathIt + 1
}


