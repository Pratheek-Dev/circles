#Tests written by Pratheek Devaraj

library(testthat)
library(circles)

context("testing circle methods")

#test the object
circle1 <- circle(3)

#test the area
area(circle1)

#test the cicumference
circumference(circle1)


test_that(" creating object", {


  expect_is(circle(3), 'circle')


})

test_that(" testing empty inputs", {


  expect_error(circle())


})

test_that(" testing negative arguments", {


  expect_error(circle(-3))


})

# test_that(" testing positive arguments of area", {
#
#
#   expect_equal(area(circle(3)), 28.26)
#
#
# })
#
# test_that(" testing positive arguments of circumference", {
#
#
#   expect_equal(circumference(circle(3)), 18.84, tolerance = 0.5)
#
#
# })

