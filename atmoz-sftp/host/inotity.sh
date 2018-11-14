apt-get update && apt-get install inotify-tools -y
inotifywait -mrq --timefmt '%Y/%m/%d %H:%M' --format '%T %w%f %e' --event delete,modify,create,attrib /home @/home/nec -o /home/nec/ftp.log