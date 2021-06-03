# Deployment dsMicrobiome

library(devtools)
library(opalr)

buildfile_location <- devtools::build()

opal <- opalr::opal.login('administrator', 'datashield_test&', url = 'http://192.168.56.100:8080/')

res <- opalr::dsadmin.install_local_package(opal, buildfile_location)
if (res) {
  print("Install succeded")
} else {
  print("Install failed")
}

opalr::opal.logout(opal)