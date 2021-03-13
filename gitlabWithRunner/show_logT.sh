 ls -lr logT* | head -1 | awk '{print $9}'|xargs tail -f
