
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
<!-- badges: end -->
<!-- ======================================================================= -->
<!-- Doc update timestamp: Wed 26 Jun 2024 13:57 BST -->

# multilevel<br/>sample size<br/>determination<span class="sub-head"> <span class="chevron">\>\>\></span> at speed</span>

<br/> The `simssd` R package uses simulation to do [sample size
determination](https://en.wikipedia.org/wiki/Sample_size_determination)
(SSD), the process of estimating the sample size needed for a
statistical study, and [power
computation](https://en.wikipedia.org/wiki/Power_of_a_test) for fixed
effects in [multilevel linear regression
models](https://www.bristol.ac.uk/cmm/learning/multilevel-models/). It
has a focus on improving computational speed.

<!-- ======================================================================= -->

## Installation

<div class="note">

<span class="note-emph"><span class="note-head">Please note:</span>
`simssd` is currently under construction.</span> The [source
code](https://github.com/toniprice/simssd/) and
[documentation](./reference/index.html) are placeholders as they have
not yet been published. Installation instructions to follow at a later
date!

Meanwhile, see the [Introduction to simssd](./articles/intro.html).

</div>

<!-- ======================================================================= -->

## Historical Context

The predecessor to `simssd` was developed to support my PhD research,
<!-- TODO: Restore the EThOS link when EThOS is back online -->
<!-- [A faster simulation approach to sample size determination for random effect models](https://ethos.bl.uk/OrderDetails.do?did=1&uin=uk.bl.ethos.730872), -->
[A faster simulation approach to sample size determination for random
effect models](https://bris.on.worldcat.org/oclc/1052823916), at the
[Centre for Multilevel Modelling](https://www.bristol.ac.uk/cmm/)
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

The software design of `simssd` draws on some ideas from:<br/> Chalmers
RP, and Adkins, MC (2020). “Writing effective and reliable Monte Carlo
simulations with the SimDesign package.” The Quantitative Methods for
Psychology, 16(4), 248–280.
[doi:10.20982/tqmp.16.4.p248](https://doi.org/10.20982/tqmp.16.4.p248).

In an ongoing way, tools provided by
<a href="https://hadley.nz/" class="people-link">Hadley Wickham</a> and
his colleagues at [Posit Software, PBC](https://posit.co/) (formerly
RStudio, PBC) enable me to develop much higher quality software in
[R](https://www.r-project.org/) than I otherwise would have been able
to. Thank you Hadley & others at Posit   🙂

<!-- ======================================================================= -->
<hr/>

<div id="last-updated">

Last updated: 26 Jun 2024

</div>

<!-- ======================================================================= -->
