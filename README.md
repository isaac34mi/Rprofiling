# Rprofiling
Another reason I wrote this package is becuase i didn't like the way Rstudio displays dataframes(maybe its because I use Jupyter a lot).
With a single command `Rprofiling::full_profile(data)` you can get beautiful, well organized and resonable details about your dataset. 


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
 ![data_summary](https://dl.boxcloud.com/api/2.0/files/199706078390/content?preview=true&access_token=1!WZiR46eYSQPeW3K1-jCzhNkox0yj2_5KMfnF0Tcm4YRLpSTiuJX3AAwbXwbhPMeexGnrfhFqGROzmR5P06ffc3jM-VXCntuP6ewcG1qECHcXS7lv6Ar05jQ5WdPIWom-OZD9mbRTF0qm7_8VjEL6BAmZvBeCxnl442nhz6r0qqodbKNupuwnbp4H-pIO-PGh_FJvGK0NTXSjx8UaDqznSeWur6QBKbdb4IojwDoSFI2rEjDRhzg-f1Gq58rmfL8zNy7mYdKLJY6iyKldFrkuba-_tegvd02uCHuAeRrg0YRvFLtjvjHmNAOohEXFnPIDvwVCZGV29K7ByvL71H7MIE96FET4cBy4ao0Cwi1jHCxX2qdDVWZwhE_OmAqAifasx70oZ9pBe4nJXKJckKS0zLS_uNRO7CUxRpXYFM1yrA4zc-olCZ9QvLMlJV6wgYOmq7du9JZ9g-DpYloOxoU.&shared_link=https://iastate.app.box.com/s/rjx603rezqvd690t0zs5x1cb3gop4lj3&box_client_name=box-content-preview&box_client_version=1.1.1)
 
 __var_types__
 ```r
 Rprofiling::var_types(mtcars)
 ```
 Result:
 ![var_types](https://dl.boxcloud.com/api/2.0/files/199706087537/content?preview=true&access_token=1!f2TFfd23vktpShccpM2oqcu3Xesjdzb09yPeau-TgRLC8K05WdCutPF6ChbW06eS4vEI5Jnd3UDcSpIRrUsYkzq1llefXpFyrKJdCrzpW-kv3o7m_ZNOpi_mhbqfkXRGL3rsbZGGXCljfw-uXAmxigKL-lqA7TajExHk-NpKvgZFZ218tfWzoZsDSotlQk0c1t5QwLicjmnJMQEATyTtntDUTwUyuPmNUg53q5l7IYeFNytjyF8IifR7EtYy7hrsrmoudldziUfZxfN7dZjmSv7GhVfHQRSh-3c2xzBYvTyKj89W_dJN7jE0t_b49VxENqyazslqLp42K7cHouqK9_zk_yZz82L6Lk9dn-qq-cWZZO0KDMlltDUIAQ6guovj4U7ylBDH0S556XUSHw..&box_client_name=box-content-preview&box_client_version=1.1.1)
 
 __vis_mdata__
 ```r
 Rprofiling::vis_mdat(mtcars)
 ```
 Result:
 ![viz_mdata](https://dl.boxcloud.com/api/2.0/files/199706082719/content?preview=true&access_token=1!5HYCWJ46HOPAPP8tfl7NO6x_iJsRncDgPLbesz10V-kltgS1T1t--gtJ9D8tBQlieY9rK8RNrCQ9-AZGwDOSsyBgY1DWA7BBlXqrS9yIsZhdkSz4_XdVaYAKpm-5aQic7sa-ivAkOVb2sPM82EzBHVyUfwExoJR7wN7nqFMFeQDEyAG7E5ywwSISXJJ7B4fwN8c72st6idqNxXh5JCdzT-k7RxO8f1CRen5iPeuM2GrY8Is9NBktsGDew5mOx1oF21LSYv4dPL45XKSVX9IF9DC1ht89vOjG1Ok9LYlpck8csZhFEmFMHBUzc8AqjYp-XhFZ047bu1tw_1SMWr0jDfg89vzSDjSttvwYoQsWR8lRR4BtCX1IdhGZaX6CBmFFGEIJTns83qdUqMS2yA..&box_client_name=box-content-preview&box_client_version=1.1.1)
 
 __data_summary__
 ```r
 Rprofiling::data_summary(mtcars)
 ```
 Result:
 ![data_summary](https://dl.boxcloud.com/api/2.0/files/199706351826/content?preview=true&access_token=1!CyF20eIwRNZ9ksJgcReBuafABk4vjp-gFIAF_eovoS2vFkej9EJIjhfh0tQwYkyAwUl9V7aNana2_ChsqDBlX8b4eSeI0zao1qBI3uJxC5Uuh4uNaC4Pj7OfcovDQdtrA7cdzv3QBFc24ntVuejPWmlx-2_WxyfWMo82Uczm44yp9rwAEhsm05lbb5GJS8Lmonu0A7ANXjBRPDBOKxjvRKtrDTbj7VZm1IJyzb__uf4klHw8lOV5D_dS5YAyriCiwTe42OZFMdbCr0bhMBaiFB-Gk8MhMrbby9vTdAXwDj29OqFkonCcMUPj7h-xLMET7lI9QixjBgPoKSwLr1kvaToKy_Oy_bvum4bAJeM_V3VA9Vl7f9yCUWxX9aHc16vAeUR-BEW2_GnvtS82kA..&box_client_name=box-content-preview&box_client_version=1.1.1)
 
 __samp_data__
 ```r
 Rprofiling::samp_data(mtcars)
 ```
 Result:
 ![samp_data](https://dl.boxcloud.com/api/2.0/files/199706351826/content?preview=true&access_token=1!CyF20eIwRNZ9ksJgcReBuafABk4vjp-gFIAF_eovoS2vFkej9EJIjhfh0tQwYkyAwUl9V7aNana2_ChsqDBlX8b4eSeI0zao1qBI3uJxC5Uuh4uNaC4Pj7OfcovDQdtrA7cdzv3QBFc24ntVuejPWmlx-2_WxyfWMo82Uczm44yp9rwAEhsm05lbb5GJS8Lmonu0A7ANXjBRPDBOKxjvRKtrDTbj7VZm1IJyzb__uf4klHw8lOV5D_dS5YAyriCiwTe42OZFMdbCr0bhMBaiFB-Gk8MhMrbby9vTdAXwDj29OqFkonCcMUPj7h-xLMET7lI9QixjBgPoKSwLr1kvaToKy_Oy_bvum4bAJeM_V3VA9Vl7f9yCUWxX9aHc16vAeUR-BEW2_GnvtS82kA..&box_client_name=box-content-preview&box_client_version=1.1.1)
 
__full_profile__
 ```r
 Rprofiling::full_profile(mtcars)
 ```
 Result:
 ![full_profile](https://dl.boxcloud.com/api/2.0/files/199706053958/content?preview=true&access_token=1!Q3KAZrbsWobiTjxlGWZiGdb4nipBtZ4f4SnH4kjbGn_mn_l9esI_S-tijDyuu2E-3y7GiM7Er81QXNYsyKrSgSStUUBTsXbl448xNSoSaFDLEA37ITrF6UKBTeo-UIob7GPb901S6pnnYjKYqTQ5lL7FdzCUKbdB6MF1CUddsQQ3OgyfUFM67O4xibLVimfLVK370jaFoBpGUJM-Mw9dsa9W9ltJJ0nPtsWT2xmFXnXt91epaxoCgXYjUYu1jGeJX4jziUZRrbH6Btb7ENa-prdWMHgCy4aFDodE1fUbjXDKNrCNDsjBzH8NNsA-3Su6bMhBanIo04z5u-iDhKkyLhsFOtWUPaixdTMKtmrf6euUZWG8qSFpy20h59_4yUL0ns1RC2mAhuU8xU0cbg..&box_client_name=box-content-preview&box_client_version=1.1.1)
 
 Contribution
 
 All contribution are welcome. Please help make this package more useful to every domain.
