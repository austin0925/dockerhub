docker run -v ${1-update}:/volume -v $(pwd):/backup --rm loomchild/volume-backup backup ${1-update}.tar.bz2
