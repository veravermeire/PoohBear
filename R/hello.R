# libraries
library(magick)

# function 1: pooh_quote
pooh_quote = function(){

  # load files
  files = list.files(
    system.file("extdata", package = "PoohBear"),
    pattern = ".jpg",
    full.names=T
  )

  # sample image
  sampled_img = sample(files, 1, replace=T)

  #load image
  img = magick::image_read(sampled_img)
  final_img = magick::image_resize(img, "400x300") # force to be smaller

  # return image
  return(final_img)
}

pooh_quote()

# function 2: pooh_fact
pooh_fact = function(){

  facts = c(
    "Winnie-the-Pooh's original name was Edward.",
    "The 'Pooh' part of his name comes from the frustated sound the author made whenever he would feed a swan at the zoo.",
    "Pooh's birthday  is August 21st, 1921, making Pooh quite old.",
    "Winnie the Pooh was inspired by a real bear.",
    "The Hundred Acre Wood is a real place.",
    "Pooh stories began as poems.",
    "Winnie the Pooh has his own star to celebrate its 80th birthday."
  )

  # sample a fact
  sampled_fact = sample(facts, 1, replace=F)

  # return fact
  return(sampled_fact)
}

pooh_fact()













