inotifywait.exe -mrq --format %%T,%%w,%%f,%%e -e delete,modify,create c:/psp-ftp/APPROVED ^> c:/psp-ftp/ftp.log