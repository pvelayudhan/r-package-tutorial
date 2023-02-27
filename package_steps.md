1. In the console, setwd to where you want to work on the package
2. `library(devtools)`
3. `create_package("demopackage")`
4. `use_r("gratio")`
5. Make your function
6. Add `#' @export` to indicate that we want people to be able to use the function
7. Resolve any issues in `check()`:
    a. `use_mit_license()`
8. `install()`
9. Use it!

Move over to the new RStudio file (later you can come back by clicking on demopackage.Rproj)
