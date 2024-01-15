source("renv/activate.R")

# Add current git branch name to prompt
# See
# https://posit.co/resources/videos/testthat-3/
# [at ~54:34; viewed 06dec22]
#
# Note NB: To install package 'prompt', run a vanilla session of R
# ('R --vanilla') or run a session with the .Rprofile disabled
# ('R --no-init-file') and then install with 'install.packages("prompt")'.
# If you attempt to install prompt with the following code enabled, it will
# cause an error:
#   Error in code2LazyLoadDB(package, lib.loc = lib.loc, <snip>
#     namespace must not be already loaded
#   <snip>
#   ERROR: lazy loading failed for package ‘prompt’
#
if (requireNamespace("prompt", quietly = TRUE)) {
  prompt_git <- function(...) {
    paste0(
      "[", prompt::git_branch(), "]", " > "
    )
  }
  prompt::set_prompt(prompt_git)
  rm(prompt_git)
}
