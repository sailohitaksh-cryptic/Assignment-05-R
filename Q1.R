# Generate random strings
generateRandomString <- function(n) {
  charSet <- c(letters, LETTERS, 0:9)  # Characters to choose from
  randomString <- paste0(sample(charSet, n, replace = TRUE), collapse = "")
  return(randomString)
}

# Create file with random strings
writeRandomStringsToFile <- function(filename, numLines) {
  fileConn <- file(filename, open = "w")  # Open file for writing
  for (i in 1:numLines) {
    randomString <- generateRandomString(10)  # Generate random string of length 10
    writeLines(randomString, fileConn)  # Write string to file
  }
  close(fileConn)  # Close file connection
}

# Usage: Specify filename and number of lines
filename <- "random_strings.txt"
numLines <- 1000

writeRandomStringsToFile(filename, numLines)
