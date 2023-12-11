
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
<!-- badges: end -->
<!-- ======================================================================= -->
<!-- Doc update timestamp: Mon 11 Dec 2023 19:20 GMT -->

# multilevel<br/>sample size<br/>determination<span class="sub-head"> <span class="chevron">\>\>\></span> at speed</span>

<br/> The `simssd` R package uses simulation to do [sample size
determination](https://en.wikipedia.org/wiki/Sample_size_determination)
or [SSD](https://en.wikipedia.org/wiki/Sample_size_determination) (the
process of estimating sample size for a statistical study) and [power
computation](https://en.wikipedia.org/wiki/Power_of_a_test) for fixed
effects in [multilevel linear regression
models](https://www.bristol.ac.uk/cmm/learning/multilevel-models/). It
has a focus on improving computational speed.

<!-- ======================================================================= -->

## Installation

<!--
Note: The package's
[reference](./reference/index.html)
is a placeholder for the code which is not yet published.<br/>
-->

<div class="note">

Note: The [source code](https://github.com/toniprice/simssd/) and its
[documentation](./reference/index.html) are placeholders for the code
(which I have not yet published).<br/> Installation instructions to
follow here at a later time …

</div>

<!-- ======================================================================= -->

## Historical Context

The predecessor to `simssd` was developed to support my PhD research, [A
faster simulation approach to sample size determination for random
effect
models](https://ethos.bl.uk/OrderDetails.do?did=1&uin=uk.bl.ethos.730872),
at the [Centre for Multilevel Modelling](https://www.bristol.ac.uk/cmm/)
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

The software design of `simssd` draws on some ideas from Chalmers &
Adkins:<br/> Chalmers RP, and Adkins, MC (2020). “Writing effective and
reliable Monte Carlo simulations with the SimDesign package.” The
Quantitative Methods for Psychology, 16(4), 248–280.
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

Last updated: 11 Dec 2023

</div>

<!-- ======================================================================= -->
