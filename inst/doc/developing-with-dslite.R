## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(DSLite)
#  
#  # prepare test data in a light DS server
#  data("CNSIM1")
#  data("CNSIM2")
#  data("CNSIM3")
#  dslite.server <- newDSLiteServer(tables=list(CNSIM1=CNSIM1, CNSIM2=CNSIM2, CNSIM3=CNSIM3))
#  # load corresponding DataSHIELD login data
#  data("logindata.dslite.cnsim")

## ----eval=FALSE---------------------------------------------------------------
#  library(DSLite)
#  
#  # load CNSIM test data
#  logindata.dslite.cnsim <- setupCNSIMTest()

## ----eval=FALSE---------------------------------------------------------------
#  DSLite::defaultDSConfiguration()

## ----eval=FALSE---------------------------------------------------------------
#  # verify configuration
#  dslite.server$config()

## ----eval=FALSE---------------------------------------------------------------
#  # datashield logins and assignments
#  conns <- datashield.login(logindata.dslite.cnsim, assign=TRUE)
#  
#  # get the session ID of "sim1" node connection object
#  conns$sim1@sid
#  # the same ID is in the DSLiteServer
#  dslite.server$hasSession(conns$sim1@sid)

## ----eval=FALSE---------------------------------------------------------------
#  # add a print method to configuration
#  dslite.server$aggregateMethod("print", function(x){ print(x) })
#  
#  # and use it to print the D symbol
#  datashield.aggregate(conns, quote(print(D)))

## ----eval=FALSE---------------------------------------------------------------
#  # get data represented by symbol D for each DataSHIELD connection
#  data <- getDSLiteData(conns, "D")
#  # get data represented by symbol D from a specific DataSHIELD connection
#  data1 <- getDSLiteData(conns$sim1, "D")

## ----eval=FALSE---------------------------------------------------------------
#  someregression(D$height ~ D$diameter + poly(D$length,3,raw=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  base::assign(x = "D", value = someValue, envir = parent.frame())

