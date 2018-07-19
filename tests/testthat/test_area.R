library(day4)

context("Area")

test_that("area of a circle", {
  expect_equal(ellipse_area(1), pi)
})
