# Writing tskit tutorials using R markdown ("Rmd") files.

## Dependencies

So, so many. An absolute bare minimum list may look like:

* R
* `r`, aka `littler`.
* python3
* knitr
* pandoc
* LaTeX (for pdf output)
* reticulate
* tskit

**Note:** the broken file system defaults on Apple's `macOS` make the use of `r` impossible.

I installed everything as `.deb` packages on a `Pop OS!` 19.10 machine,
which is equivalent to Ubuntu 19.10. I installed all `R` and `Python` packages
locally for my user via `pip3` or `install.packages` as appropriate.

Note that many `R` packages have dependencies on `C/C++/Fortan` development
libraries.  The `tidyerse` is tricky like this.  Installs often fail,
and you have to `apt install foo-dev`, try again, etc..

## Editing the files

One does **not** need `RStudio`!  I wrote the `Rmd` files using
`neovim` with the following plugins from the `pandoc` group:

```
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
```

These plugins provide the following normal-mode commands to generate output:

```
:RMarkdown html
:RMarkdown pdf
```

The second command requires a `LaTeX` installation.

Under the hood, these commands work via the `knitr` package for `R`,
and those commands are the basis for the provided `Makefile`.

**Note:** using the `vim` commands means that you can build just
the tutorial you're editing, which can save a lot of headache.
The `Makefile` is only needed to put outputs in the right place.
