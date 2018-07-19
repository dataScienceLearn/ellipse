#' Specifications of the planets in the Solar System.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the planets in the Solar System. I'm old school, so Pluto is still in there.
#'
#' @format A data frame with 9 records and 3 variables:
#' \describe{
#'   \item{name}{planet name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' plot(eccentricity ~ distance, data = planets)
"planets"


if (FALSE) {
  planets <- read.table(text = "
                        name distance eccentricity
                        1 Mercury     57.9        0.205
                        2   Venus    108.2        0.007
                        3   Earth    149.6        0.017
                        4    Mars    227.9        0.094
                        5 Jupiter    778.6        0.049
                        6  Saturn   1433.5        0.057
                        7  Uranus   2872.5        0.046
                        8 Neptune   4495.1        0.011
                        9   Pluto   5906.4        0.244
                        ")
  #
  # Convert from km to AU.
  #
  planets <- transform(planets, distance = distance * 1e6 / 1.496e8)

  # This will create the .rda file in the data/ folder.
  #
  devtools::use_data(planets, overwrite = TRUE)
}
