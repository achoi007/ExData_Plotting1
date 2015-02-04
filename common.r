# Common resources used by all plot.r

# Choose filter to read.  If cached file exists, use it.
big_file <- "household_power_consumption.txt"
small_file <- "filter_hpc.txt"

if (file.exists(small_file)) {
  file <- small_file
} else {
  file <- big_file
}

# Read in file
cat("Reading", file, "\n")
data <- read.csv(file, header=T, sep=";", na.strings="?", stringsAsFactors=F)

# Convert date from string
if (file == big_file) {
  data$DateTime = strptime(paste(data$Date, data$Time), 
                           format="%d/%m/%Y %H:%M:%S")
  # Filter by date
  data <- data[data$DateTime >= "2007/02/01" & data$DateTime < "2007/02/03",]
} else {
  data$DateTime = as.POSIXlt(data$DateTime)
}

# Write back cache file
if (file == big_file) {
  cat("Writing smaller file", small_file, "\n")  
  write.table(data, small_file, quote=F, sep=";", na="?", row.names=F)
}

# Common function to write plot to a PNG file
write_plot <- function(filename) {
  
  # Append PNG suffix to filename if necessary
  if (length(grep("\\.png$", filename)) == 0) {
    filename <- paste(filename, ".png", sep="")
  }
  
  # Write file
  cat("Writing to ", filename, "\n")
  dev.copy(png, file=filename)
  dev.off()
}

