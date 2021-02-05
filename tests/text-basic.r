context("basic")

library(RSelenium)
library(testthat)

remDr <- remoteDriver()
remDr$open(silent = TRUE)
appURL <- "http://127.0.0.1:5927"

test_that("can connect to app", {
  remDr$navigate(appURL)
  appTitle <- remDr$getTitle()[1]
  expect_equal(appTitle, "DfE Published Data QA")
})

remDr$close()
