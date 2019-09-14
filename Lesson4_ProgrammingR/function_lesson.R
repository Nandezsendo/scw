gapminder <- read.table("gapminder.txt", header = TRUE)

fahrenheit_to_celsius <- function(temp){
  celsius <- (temp - 32) * 5/9
  return(celsius)
}
fahrenheit_to_celsius(96)
fahrenheit_to_celsius(temp = 96)

celsius_to_kelvin <- function(temp_c){
  kelvin <- temp_c + 273.15
  return(kelvin)
}
celsius_to_kelvin(temp_c = 35.55)

fehrenheir_to_kelvin <- function(temp_f){
  celsius <- fahrenheit_to_celsius(temp_f)
  kelvin <- celsius_to_kelvin(celsius)
  return(kelvin)
}
fehrenheir_to_kelvin(96)

Meanlifeexp <-function(Continent){
  subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
  mean_life_exp <- mean(subset_continent_gapminder)
  return(mean_life_exp)
}
Meanlifeexp("Europe")

############
if(condition is true){
  perform some action
}
else{ # The condition if false
  perform some other action
}

### Multiple conditions
if(condition is true){
  do this
} else if (second condition is true){
  do this
} else {
  do this
}

########

x <- 8
if (x >=10){
  print("x is greater thean or equal to 10")
}else{
  print("x is smaller than than 5")
}
  

x <- 8
if (x >=10){
  print("x is greater thean or equal to 10")
}else if(x>5){
  print("x is smaller than 5")
} else{
  print("x is smaller than than 5")
}

x <- 4 == 3
if (x){
  print("x is greater thean or equal to 10")
}else{
  print("x is smaller than than 10")
}

x <- 4 == 4
if (x){
  print("x is greater thean or equal to 10")
}else{
  print("x is smaller than than 10")
}
Meanlifeexp <-function(Continent){
  subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
  mean_life_exp <- mean(subset_continent_gapminder)
  return(mean_life_exp)
}
Meanlifeexp("Asia")
x <- Meanlifeexp("Asia")
if(x >= 50){
  print("Life expectancy of Asia is greater than or equal to 50")
}else{
  print("Life expectancy of Asia lower than 50")
} 


####################
for(iterator in a set of values){
  do an action
}

for(i in 1:10){
  print(i)
}


menuItems <- c("chicken", "soup", "salad", "tea")
menuTypes <- factor(c("solid", "liquid", "solid", "liquid"))
menuCost <- c(4.99, 2.99,3.29,1.89)
myorder_df <- data.frame(menuItems, menuTypes, menuCost)

for (items in myorder_df$menuItems){
  print(items)
}


for (items in myorder_df$menuItems){
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
}


#########################

theshold_value <- 50
continent_list <- unique(gapminder$continent)

for(continent in continent_list){
  continent_subset <- gapminder[gapminder$continent == Continent, "lifeExp"]
  continent_mean <- mean(continent_subset)
  if(continent_mean >= 50){
    print(paste0("Life expectancy of", Continent, "is greater than or equal to 50"))
  }else
}
