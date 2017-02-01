weightmean <- function(directory, day){
  files_full <- list.files(directory, full.names=TRUE)  #creates a list of files
  dat <- vector(mode = "list", length = length(files_full))
  dat <- lapply(files_full, read.csv)
  dat <- do.call(rbind, dat)
  
  dat_subset <- dat[which(dat[, "Day"] == day),]  #subsets the rows that match the 'day' argument
  mean(dat_subset[, "Weight"], na.rm=TRUE)      #identifies the mean weight 
  #while stripping out the NAs
}