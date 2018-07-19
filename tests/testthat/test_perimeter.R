library(day4)

context("Perimeter")

test_that("perimeter of a circle", {
  expect_equal(ellipse_perimeter(1), 2 * pi)
})

# test_that("perimeter of an ellipse", {
#   a=2
#   b=1
#   e=sqrt(a**2 - b**2)/a
#   expect_equal(ellipse_perimeter(a,e), 2 * pi)
# })
