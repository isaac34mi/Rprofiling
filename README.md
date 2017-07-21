# Rprofiling
Another reason I wrote this package is becuase i didn't like the way Rstudio displays dataframes(maybe its because I use Jupyter a lot).


## Dependencies
* tidyverse
* Amilia
* knitr

## Installation
Since this package is not in Cran, the easiest way is to use devtools.

devtools::install_github("isaac34mi/Rprofiling")

## Usage
 There are Six(6) functions in this package
 * dsetinfo     : gives number of variables, observation, number and percentage of missing vlaues, percentage of unique rows.
 * var_tpes     : gives number of available data types in the dataset.
 * vis_mdata    : gives a visualization of rows with missing values.
 * data_summary : this simply uses mummary function and arranges the result in a nice hovarable table
 * full_profile : puts everything together 
 
 ### Code Examples
 This examples uses mtcars dataset.
 
 ```r
 Rprofiling::dsetinfo(mtcars)
 ```
 Result:
 
 
