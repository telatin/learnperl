Conference in the Cloud (A Perl and Raku Conference) 2020 - Lightning Talk

# Distributing a Perl module via Bioconda (Miniconda)

> When you develop a tool that requires external applications (or compiled binaries), CPAN is not the easies way of distributing it. I'll show how Miniconda became the favourite package manager in the bioinformatics community, with a tiny tutorial using the "BioConda channel" as an example.

Perl has a long history of serving the bioinformatics community, and nowadays "Miniconda" has become the most used package and dependency manager for bioinformaticians, with a very active channel called "BioConda". In this lighting talk I'll use BioConda as an example of bringing Perl tools (and modules) to Miniconda.  In spite of Miniconda being born in the Python world, 10% of all Bioconda packages are Perl modules, and several highly downloaded programs are written in Perl.

## About me

I'm [Andrea Telatin](https://telatin.github.io/), a bioinformatics researcher at the [Quadram Institute Bioscience](https://www.quadram.ac.uk) in Norwich (UK).
I started using Perl in 2004, and never completely abandoned it, and a couple of years ago I tried making my way into [CPAN](https://metacpan.org/author/PROCH) and that has been amazing (as trying to make a module, I discovered many excellent ones I never heard of).

## The problem

Bioinformatics analyses rely on a **massive amount of dependencies**, sometimes incompatible packages or different versions of the same package are required. 
Some years ago a lot of tools were difficult to install as they required some compenency in different languages, and at the same time distributing Perl code was difficult as most users had no idea how to install the needed modules.

## The solution

Anaconda is a Python distribution (born for scientific computing) that combines Python and **conda**, that is both a _package manager_ and an _environment manager_. My coding machine is a Mac, but my analyses run on a Linux HPC. With conda I can install most of the times the exact same packages in both development and production environments with ease. 

**[Miniconda](https://docs.conda.io/en/latest/miniconda.html)** is the stiped-down version of Anaconda, and is the _de facto_ standard in package management for bioinformaticians, also being relatively easy to [install](https://docs.conda.io/en/latest/miniconda.html) both in Linux and in macOS.

Installing a package, like [imagemagick](https://anaconda.org/search?q=imagemagick) is as easy as:
```
conda install -c conda-forge imagemagick
```

If you need a set of packages isolated from the others, you can create an environment:

```
conda create -n my_environment -c bioconda perl perl-www-mechanize perl-yaml-pp  
```
and, to use it:
```
conda activate my_environment

```

## Conda "channels"

Channels are like repository sources in other package managers. Just signing up to [anaconda.org](https://anaconda.org) you will be able to upload your packages to your own channel. You'll need to "build" your own packages though.


BioConda - the bioinformatics source - currently hosts more than 7.000 packages, of which more than 700 are perl modules. Your `Fantastic::Module` would be called `perl-fantastic-module` in the conda nomenclature.

[BioConda](https://bioconda.github.io/) is a repository (hosted on GitHub) of conda recipes, but also a building system. You just need to submit a pull request with your new recipe to have it added by the BioConda team. 

## A conda "recipe" for a `Module::Name`

A recipe consists of minimum two files:

* meta.yaml (containing all the dependencies needed, the source URLs and some other metadata). Example [here](https://gist.github.com/telatin/e572e388edb1603705beef0830152381)
* build.sh (if your module has Build.PL or Makefile.PL, the generic template is [like this](https://github.com/bioconda/bioconda-recipes/blob/master/recipes/perl-capture-tiny/build.sh).


See also:
* [Capture::Tiny meta.yaml](https://github.com/bioconda/bioconda-recipes/blob/master/recipes/perl-capture-tiny/meta.yaml) - example `meta.yaml` for a typical Perl module
