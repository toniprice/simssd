
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

<!-- badges: end -->

<!-- ======================================================================= -->

<!-- Doc update timestamp: Wed 05 Aug 2026 17:58 BST -->

# Multilevel Sample Size Determination (⚡faster)

The simssd R package uses simulation to perform [sample size
determination](https://en.wikipedia.org/wiki/Sample_size_determination)
(SSD) and [power
computation](https://en.wikipedia.org/wiki/Power_of_a_test) for fixed
effects in [multilevel linear regression
models](https://www.bristol.ac.uk/cmm/learning/multilevel-models/), with
an emphasis on computational speed.

<!--
SSD = The process of estimating the sample size needed for a statistical study
-->

<!-- ======================================================================= -->

## Project status

This repository contains the initial project skeleton. Development is
currently on hold due to time constraints; the [source
code](https://github.com/toniprice/simssd/) and
[documentation](./reference/index.html) are placeholders pending
publication. I intend to continue development when time permits, though
there is no active work at present.

See [Historical context](#historical-context) for background: the
package began as an implementation of my PhD research [A faster
simulation approach to sample size determination for random effect
models](https://ethos.bl.uk/concern/thesis_or_dissertations/730872) and
built on ideas from
[MLPowSim](https://www.bristol.ac.uk/cmm/software/mlpowsim/). Since the
repository was created the underlying research has been
[extended](https://doi.org/10.3102/10769986251344939); any future
development would reflect those methods.

**Related publication:**  
Browne, W. J., Charlton, C. M. J., Price, T., Leckie, G., & Steele, F.
(2025). **Optimizing the Use of Simulation Methods in Multilevel Sample
Size Calculations.** *Journal of Educational and Behavioral Statistics,
0(0).*
[doi:10.3102/10769986251344939](https://doi.org/10.3102/10769986251344939)

<!-- ======================================================================= -->

## Installation

Installation instructions will be provided at a later date. Meanwhile,
see the [Introduction to simssd](./articles/intro.html).

<!-- ======================================================================= -->

## Historical context

<!-- University of Bristol catalogue entry: https://bris.on.worldcat.org/oclc/1052823916 -->

The predecessor to simssd was developed to support my PhD research, [A
faster simulation approach to sample size determination for random
effect
models](https://ethos.bl.uk/concern/thesis_or_dissertations/730872), at
the [Centre for Multilevel Modelling](https://www.bristol.ac.uk/cmm/)
(University of Bristol).

It extended ideas arising from the
[MLPowSim](https://www.bristol.ac.uk/cmm/software/mlpowsim/) software
written by William Browne and Mousa Golalizadeh.

<!-- ======================================================================= -->

## Acknowledgements

I gratefully acknowledge funding provided for my PhD via [UK Economic
and Social Research Council (ESRC)](https://www.ukri.org/councils/esrc/)
grant number ES/H044094/1.

My thanks to the late
<a href="https://www.bristol.ac.uk/cmm/team/rasbash.html"
class="people-link">Professor Jon Rasbash</a> for getting the original
project off the ground as well as <a
href="https://research-information.bris.ac.uk/en/persons/william-j-browne"
class="people-link">Professor William Browne</a>,
<a href="https://www.lse.ac.uk/Statistics/People/Professor-Fiona-Steele"
class="people-link">Professor Fiona Steele, CBE</a>,
<a href="https://research.manchester.ac.uk/en/persons/debora.price"
class="people-link">Professor Debora Price</a> and the late
<a href="https://www.bristol.ac.uk/cmm/team/hg/"
class="people-link">Professor Harvey Goldstein</a> for their invaluable
guidance and support.

The [MLPowSim
manual](https://www.bristol.ac.uk/media-library/sites/cmm/migrated/documents/mlpowsim-manual.pdf)
by William Browne, Mousa Golalizadeh and Richard Parker contains a
number of motivating examples.

The software design of simssd draws on ideas from:  
Chalmers RP, and Adkins, MC (2020). **Writing effective and reliable
Monte Carlo simulations with the SimDesign package.** *The Quantitative
Methods for Psychology, 16(4), 248–280.*
[doi:10.20982/tqmp.16.4.p248](https://doi.org/10.20982/tqmp.16.4.p248).

In an ongoing way, tools provided by
<a href="https://hadley.nz/" class="people-link">Hadley Wickham</a> and
his colleagues at [Posit](https://posit.co/) (formerly RStudio) enable
me to develop much higher quality software in
[R](https://www.r-project.org/) than I otherwise would have been able
to. Thank you Hadley & others at Posit   🙂

<!-- ======================================================================= -->

<hr/>

<div id="last-updated">

Last updated: 05 Aug 2026

</div>

<!-- ======================================================================= -->
