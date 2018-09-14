# Rprofiling
This is a simple R pacakge to make it easy to perform first hand data exploration. Like, number of rows, finiding missing values, summary of datatypes, and more! 


## Dependencies
* tidyverse
* Amilia
* knitr
* Bootstrap css

## Installation
Since this package is not on Cran, the easiest way is to use devtools.

devtools::install_github("isaac34mi/Rprofiling")

## Usage
 There are Six(6) functions in this package
 * dsetinfo     : gives number of variables, observation, number and percentage of missing vlaues, percentage of unique rows.
 * var_tpes     : gives number of available data types in the dataset.
 * vis_mdata    : gives a visualization of rows with missing values.
 * data_summary : this simply uses mummary function and arranges the result in a nice hovarable table
 * samp_data    : give a sample of the data. 20 rows.
 * full_profile : puts everything together 
 
 ### Code Examples
 This examples uses mtcars dataset.
 
 __desetinfo__
 ```r
 Rprofiling::dsetinfo(mtcars)
 ```
 Result:
 ![data_summary](https://github.com/isaac34mi/Rprofiling/blob/master/img/dsetinfo.gif)
 
 __var_types__
 ```r
 Rprofiling::var_types(mtcars)
 ```
 Result:
 ![var_types](https://github.com/isaac34mi/Rprofiling/blob/master/img/v_type.gif)
 
 __vis_mdata__
 ```r
 Rprofiling::vis_mdat(mtcars)
 ```
 Result:
 ![viz_mdata](https://github.com/isaac34mi/Rprofiling/blob/master/img/viz.gif)
 
 __data_summary__
 ```r
 Rprofiling::data_summary(mtcars)
 ```
 Result:
 ![data_summary](https://github.com/isaac34mi/Rprofiling/blob/master/img/data_summay.gif)
 
 __samp_data__
 ```r
 Rprofiling::samp_data(mtcars)
 ```
 Result:
 ![samp_data](https://github.com/isaac34mi/Rprofiling/blob/master/img/samp.gif)
 
__full_profile__
 ```r
 Rprofiling::full_profile(mtcars)
 ```
 Result:
 ![full_profile](https://github.com/isaac34mi/Rprofiling/blob/master/img/full.gif)
 
 Contribution
 
 All contribution are welcome. Please help make this package more useful to every domain.
