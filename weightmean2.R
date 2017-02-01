weightmean_2 <- function(directory, day){
  files_full <- list.files(directory, full.names=TRUE)  #creates a list of files
  dat <- vector(mode = "list", length = length(files_full))
  dat <- lapply(files_full, read.csv)
  dat <- do.call(rbind, dat)
  
  mean(dat[which(dat[, "Day"] == day), "Weight"], na.rm = TRUE)  #subsets the rows that match the 'day' argument
  
}