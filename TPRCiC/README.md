Conference in the Cloud (A Perl and Raku Conference) 2020 - Lightning Talk

# Distributing a Perl module via Bioconda (Miniconda)

> When you develop a tool that requires external applications (or compiled binaries), CPAN is not the easies way of distributing it. I'll show how Miniconda became the favourite package manager in the bioinformatics community, with a tiny tutorial using the "BioConda channel" as an example.

Perl has a long history of serving the bioinformatics community, and nowadays "Miniconda" has become the most used package and dependency manager for bioinformaticians, with a very active channel called "BioConda". In this lighting talk I'll use BioConda as an example of bringing Perl tools (and modules) to Miniconda.  In spite of Miniconda being born in the Python world, 10% of all Bioconda packages are Perl modules, and several highly downloaded programs are written in Perl.

## About me

I'm [Andrea Telatin](https://telatin.github.io/), a bioinformatics researcher at the [Quadram Institute Bioscience](https://www.quadram.ac.uk) in Norwich (UK).
I started using Perl in 2004, and never completely abandoned it, and a couple of years ago I tried making my way into [CPAN](https://metacpan.org/author/PROCH) and that has been amazing (as trying to make a module, I discovered many excellent ones I never heard of).

## The problem


* [Capture::Tiny meta.yaml](https://github.com/bioconda/bioconda-recipes/blob/master/recipes/perl-capture-tiny/meta.yaml) - example `meta.yaml` for a typical Perl module
* [Capture::Tiny build.sh](https://github.com/bioconda/bioconda-recipes/blob/master/recipes/perl-capture-tiny/build.sh) - a generic `build.sh` for Perl modules using either _Build.PL_ or _Makefile.PL_.
