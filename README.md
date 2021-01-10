# Aprendiendo-julia
Un repositorio para alojar ejemplos a modo de tutoriales.

Espero ir aumentando la complejidad de los programas poco a poco, conforme vaya aprendiendo.

Como primera instancia recomiendo leer la documentación de la [página oficial](https://docs.julialang.org/en/v1/).

## Requerimientos

### Fortran

* Tener instalado el compilador `gfortran` en su sistema, por ejemplo:

**Debian:**
1. `sudo apt-get update`
1. `sudo apt-get upgrade`
1. `sudo apt-get install build-essential gfortran`

**Archlinux:**
1. `sudo pacman -Syu gcc-fortran make`

**Windows:**
[gcc.gnu.org](https://gcc.gnu.org/wiki/GFortranBinariesWindows)

**MacOs:**
[gcc.gnu.org](https://gcc.gnu.org/wiki/GFortranBinariesMacOS)


* Tener instalada la paquetería `gnuplot`en su sistema, por ejemplo:

**Debian:**
1. `sudo apt-get update`
1. `sudo apt-get upgrade`
1. `sudo apt-get install gnuplot`

**Archlinux:**
1. `sudo pacman -Syu gnuplot`

**Windows y MacOs:**
[gnuplot.info](http://www.gnuplot.info/)


### Julia

* Tener instalado `Julia`en su sistema, por ejemplo:

**Debian:**
1. `sudo apt-get update`
1. `sudo apt-get upgrade`
1. `sudo apt-get install julia`

**Archlinux:**
1. `sudo pacman -Syu julia`

**Windows y MacOs:**
[julialang.org](https://julialang.org/downloads/)


* Tener instalada la biblioteca `Plots`: [juliaplots](https://docs.juliaplots.org/).


### Python

* Tener instalado `python 3`en su sistema (puede ser el `IDE` de su preferencia), por ejemplo:

**Debian:**
1. `sudo apt-get update`
1. `sudo apt-get upgrade`
1. `sudo apt-get install python`

**Archlinux:**
1. `sudo pacman -Syu python`

**Windows y MacOs:**
[spyder](https://www.spyder-ide.org/)


* Tener instalado `numpy`y `matplotlib` (`spyder`ya lo tiene instalado por defecto):

Linux:
1. `python`
1. `pip install numpy`
1. `pip install matplotlib`
