# nb-2020


[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/sr320/nb-2020/master)

[nbviewer](https://nbviewer.jupyter.org/github/sr320/nb-2020/tree/master/)


```
wget -r \
--no-directories --no-parent \
-P . \
-A _001_val_1.fq.gz https://gannet.fish.washington.edu/metacarcinus/Salmo_Calig/analyses/20190806_TrimGalore/
```


bs rsync
```
/volume2/web/seashell/bu-mox$ 
rsync -avz --exclude '*_to_*' --exclude 'CHG_*.txt' --exclude 'CHH_*.txt'--exclude 'CpG_*txt' --progress sr320@mox.hyak.uw.edu:/gscratch/scrubbed/sr320/ scrubbed/
```
