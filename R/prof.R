####--------------------------------##
##    Global Function

get_data_types <- function(data){
  x <- (lapply(data,class))
  x_frame <- (data.frame(unlist(x)))
  names(x_frame) <- c("Data_Type")
  x_frame %>%
    dplyr::group_by(Data_Type) %>%
    dplyr::count()
}


###----------------------------------##
##   Global Function

create_html <- function(html){
  template <- "<!DOCTYPE html>
  <html lang='en'>
  <head>
  <title>Rprofiling</title>
  <meta charset='utf-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js''></script>
  <style>
  .table-hover tbody tr:hover td {
    background-color: #008080;
    color : white;
  }
  </style>
  </head>
  <body>

  <div class='container'>"

end_temp <- "</div>
    </body>
    </html>"

  html <- stringr::str_c(template, html, end_temp)
  html <- gsub("<table>", '<table class="table table-hover table-bordered">',html)
  tempDir <- tempfile()
  dir.create(tempDir)
  html_file <- file.path(tempDir, "report.html")
  writeLines(html,html_file)
  viewer <- getOption("viewer")
  if (!is.null(viewer)){
    viewer(html_file)
    utils::browseURL(html_file)
  }
  else
    utils::browseURL(html_file)
}

#' Information about datasets
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Returns information on variables, observation, missing values and uniquness.
#' @export dsetinfo
#'
#' @examples destinfo(mtcars)
dsetinfo <- function(data){
    df <- dsetinfo_(data)
    description <- "Dataset Information"
    res <- knitr::kable(df, format = "html",caption = description)
    create_html(res)
}

dsetinfo_ <- function(data){

  if(class(data) != "data.frame"){
    return("Sorry this function only works for data frames as of now")
  }else{

    num_var <- as.character(length(names(data)))
    num_obs <- nrow(data)
    t_missing <- sum(!complete.cases(data))
    t_missing_percentage <- round((sum(!complete.cases(data))/nrow(data) * 100),2)
    unique_percentage <- format(round(nrow(unique(data))/nrow(data) * 100,2), nsmall=2)

    df <- data.frame(Info = c("Number of variables","Number of observation","Total Missing","Total Missing(%)","Unique Row(%)"),
                     Value = c(num_var,num_obs,t_missing,paste0(t_missing_percentage,"%"),paste0(unique_percentage, "%")))

  }
}


#' Information on the variables
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Returns the count of data_types.
#' @export var_types
#'
#' @examples var_types(mtcars)
var_types <- function(data){

  if(class(data) != "data.frame"){
    return("Sorry this function only works for data frames as of now")
  }else{
    df  <- data.frame(get_data_types(data))
    description <- "Variable Types"
    res <- knitr::kable(df, format = "html", caption = description)
    create_html(res)
    }

}

#' Sample of dataset
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Returns a sample(20 rows if dataset is more than 20 rows) of the dataset
#' @export sample_data
#'
#' @examples sample_data(mtcars)
sample_data <- function(data){
  if(class(data) != "data.frame"){
    return("Sorry this function only works for data frames as of now")
  }else{
    data <- head(data,15)
    description <- "Data Sample"
    res <- knitr::kable(data, format = "html",caption = description)
    create_html(res)
  }
}
#' Summary of dataset
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Returns a summary of the dataset of each
#' @export
#'
#' @examples data_summary(mtcars)
data_summary <- function(data){
  if(class(data) != "data.frame"){
    return("Sorry this function only works for data frames as of now")
  }else{
    data <- summary(data)
    description <- "Data Summary"
    res <- knitr::kable(data, format = "html", caption = description)
    create_html(res)
  }
}

#' Visualization of missing data
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Return a graph that sows the variables and rows with missing data
#' @export
#'
#' @examples vis_mdata(mtcars)
vis_mdata <- function(data){
  if(class(data) != "data.frame"){
    return("Sorry this function only works for data frames as of now")
  }else{

    Amelia::missmap(data,main="Visualization of missing Data",y.cex = 0.9, x.cex = 0.9)
  }
}


#' Generates full profile of the dataframe passed
#'
#' @param data is the dataset that you want to digest. dataset class must be dataframe or tibble.
#'
#' @return Returns a full digestion(profile) of the data
#' @export
#'
#' @examples full_profile(mtcars)
full_profile <- function(data){
  info <- knitr::kable(x = dsetinfo_(data), format = "html", caption = "Dataset Information")
  x <- get_data_types(data)
  var <- knitr::kable(x,format = "html", caption = "Variable Types")
  d_summary <- knitr::kable(summary(data), format = "html", caption = "Data Summary")
  samp <- knitr::kable(x=head(data,20),format = "html", caption = "Data Sample")
  #png("missing.png")
  Amelia::missmap(data,main="Visualization of missing Data",y.cex = 0.9, x.cex = 0.9)
 # dev.off()
  img <- "<strong>Check your 'Plots tab for the graph'</strong>"

  res <- paste(info,var,d_summary,samp,"Graph of missing Values", img,sep="<hr>")
  create_html(res)

}
