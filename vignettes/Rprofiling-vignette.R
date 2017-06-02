## ------------------------------------------------------------------------
library(tidyverse)
library(Amelia)

## ---- echo=TRUE----------------------------------------------------------
Rprofiling::dsetinfo(mtcars)

## ---- echo=FALSE---------------------------------------------------------
Rprofiling::var_types(mtcars)

## ---- echo=FALSE---------------------------------------------------------
Rprofiling::sample_data(mtcars)

## ---- echo=FALSE---------------------------------------------------------
Rprofiling::data_summary(mtcars)

## ---- fig.show='hold'----------------------------------------------------
Rprofiling::vis_mdata(mtcars)

## ---- echo=FALSE---------------------------------------------------------
Rprofiling::full_profile(mtcars)

