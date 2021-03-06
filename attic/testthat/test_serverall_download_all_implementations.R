# FIXME do this on CRAN?
context("download all implementations")

test_that("download all implementations", {
  skip_on_cran()
  skip_on_travis()
  impls = as.integer(runSQLQuery("SELECT id FROM implementation"))
  for (i in seq_along(impls)) {
    id = impls[i]
    print(id)
    impl = downloadOpenMLImplementation(id = id, download.source.binary = FALSE)
  }
})
