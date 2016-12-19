#' An S3 class to represent a circle
#' circle
#' @param radius x to represent circle's radius
#' @return A circle object with radius
#' @export
#' @examples
#' circle1<-circle(3)
#' circle(3)
#'

# create a function to create an object cicle with radius
circle <- function(r) {
  if(r <= 0) stop('radius needs to be a positive value greater than 0')
  value <- list(radius = r)

  #class set to circle
  attr(value, "class") <- "circle"
  value
}



#' area.circle()
#' @return The area of a circle with radius
#' @examples
#' area(circle(3))
#'

# generate generic function for area

area <- function(obj){
  UseMethod("area")
}


# default method for area

area.default <- function(obj){
  cat("This is a generic function\n")
}

# calculate the area of the circle

area.circle <- function(obj){
  cat((obj$radius^2)*3.14, "\n")
}




# generate generic function for circumference

circumference <- function(obj){
  UseMethod("circumference")
}

# generic perimeter function

circumference.default <-  function(obj){
  cat("This is a generic function \n")
}

# calculating the circumference of a circle

#' circumference.circle()
#' @return The circumference of a circle with radius
#' @examples
#' circumference(circle(3))
#'

circumference.circle <- function(obj){
  cat(2*obj$radius*3.14, "\n")
}


