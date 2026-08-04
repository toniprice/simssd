# Multilevel Sample Size Determination (⚡faster)

  
The simssd R package uses simulation to do [sample size
determination](https://en.wikipedia.org/wiki/Sample_size_determination)
(SSD) and [power
computation](https://en.wikipedia.org/wiki/Power_of_a_test) for fixed
effects in [multilevel linear regression
models](https://www.bristol.ac.uk/cmm/learning/multilevel-models/). It
has a focus on improving computational speed.

## Project status

This repository contains the initial project skeleton. Development is
currently on hold due to time constraints; the [source
code](https://github.com/toniprice/simssd/) and
[documentation](https://toniprice.github.io/simssd/dev/reference/index.md)
are placeholders as they have not yet been published.

The project is not abandoned and I intend to continue work on it when
time permits, though there is no active development at the moment.

As described under [Historical context](#historical-context), this
package was originally intended as an implementation of [my PhD
research](https://ethos.bl.uk/concern/thesis_or_dissertations/730872).
Since the repository was first created, the underlying research has been
[extended](https://doi.org/10.3102/10769986251344939), so any future
development would reflect the methods described in that work.

**Related publication:**  
Browne, W. J., Charlton, C. M. J., Price, T., Leckie, G., & Steele, F.
(2025). **Optimizing the Use of Simulation Methods in Multilevel Sample
Size Calculations.** *Journal of Educational and Behavioral Statistics,
0(0).*
[doi:10.3102/10769986251344939](https://doi.org/10.3102/10769986251344939)

## Installation

Installation instructions will be provided at a later date. Meanwhile,
see the [Introduction to
simssd](https://toniprice.github.io/simssd/dev/articles/intro.md).

## Historical context

The predecessor to simssd was developed to support my PhD research, [A
faster simulation approach to sample size determination for random
effect
models](https://ethos.bl.uk/concern/thesis_or_dissertations/730872), at
the [Centre for Multilevel Modelling](https://www.bristol.ac.uk/cmm/)
(University of Bristol).

It extended ideas arising from the
[MLPowSim](https://www.bristol.ac.uk/cmm/software/mlpowsim/) software
written by William Browne and Mousa Golalizadeh.

## Acknowledgements

I gratefully acknowledge funding provided for my PhD via [UK Economic
and Social Research Council (ESRC)](https://www.ukri.org/councils/esrc/)
grant number ES/H044094/1.

My thanks to the late [Professor Jon
Rasbash](https://www.bristol.ac.uk/cmm/team/rasbash.html) for getting
the original project off the ground as well as [Professor William
Browne](https://research-information.bris.ac.uk/en/persons/william-j-browne),
[Professor Fiona Steele,
CBE](https://www.lse.ac.uk/Statistics/People/Professor-Fiona-Steele),
[Professor Debora
Price](https://research.manchester.ac.uk/en/persons/debora.price) and
the late [Professor Harvey
Goldstein](https://www.bristol.ac.uk/cmm/team/hg/) for their invaluable
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

In an ongoing way, tools provided by [Hadley
Wickham](https://hadley.nz/) and his colleagues at
[Posit](https://posit.co/) (formerly RStudio) enable me to develop much
higher quality software in [R](https://www.r-project.org/) than I
otherwise would have been able to. Thank you Hadley & others at Posit  
🙂

------------------------------------------------------------------------

Last updated: 04 Aug 2026
