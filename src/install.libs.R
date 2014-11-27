# Copy a ICU data file
outdir <- file.path(R_PACKAGE_DIR, 'libs')
if (length(dir(outdir, glob2rx("*.dat"))) == 0) {
   # avoids multiple download attempts while multiarch building
   fname <- if (.Platform$endian == 'little') "icudt52l.dat" else "icudt52b.dat"
      file.copy(file.path("../tools", fname), outdir, overwrite=TRUE)
}

# Copy symbols.rds
if (file.exists('symbols.rds'))
   file.copy('symbols.rds', dest, overwrite=TRUE)
