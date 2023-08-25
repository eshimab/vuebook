

```sh
drwx------   13 eshim  staff      416 Nov 22  2022 DATA

drwx------    7 eshim  staff      224 Oct 17  2022 BASH
drwx------    3 eshim  staff       96 Oct 17  2022 INIT
drwx------   11 eshim  staff      352 Nov 19  2022 MATLAB
drwx------   15 eshim  staff      480 Oct 29  2022 MFIGS
drwx------   35 eshim  staff     1120 Oct 27  2022 MVARS
drwx------    9 eshim  staff      288 Nov  9  2022 QC
-rwx------    1 eshim  staff  4388910 Sep  7  2022 bctab.mat
drwx------   36 eshim  staff     1152 Nov 22  2022 bin
-rwx------    1 eshim  staff     5901 Sep 16  2022 byebye.m
-rw-r--r--    1 eshim  staff        0 Nov 22  2022 completed_fcx.md
-rwx------    1 eshim  staff     1184 Oct 21  2022 deal.md
-rw-r--r--    1 eshim  staff        0 Nov 22  2022 fail_fcx.md
-rwx------    1 eshim  staff    10524 Jun 24  2020 gplotting.m
drwxr-xr-x    6 eshim  staff      192 Nov 10  2022 hfcm
-rw-r--r--    1 eshim  staff        0 Nov 22  2022 not_fcx.md
drwx------    8 eshim  staff      256 Oct 17  2022 pcout
drwxr-xr-x    8 eshim  staff      256 Nov 22  2022 pres
-rwx------    1 eshim  staff    19427 Nov 28  2022 projectinit.m
drwxr-xr-x  825 eshim  staff    26400 Nov 22  2022 testplots
drwxr-xr-x    2 eshim  staff       64 Nov 21  2022 ztemp
```

```sh

rsync -aprv /Volumes/laciedat\ 9/backup/hotfcm/DATA /Volumes/toshidat\ 1/research/hfcm/20221206/hotfcm/

rsync -aprv /Volumes/laciedat\ 9/backup/hotfcm/bin /Volumes/toshidat\ 1/research/hfcm/20221206/hotfcm/

rm -r /Volumes/laciedat\ 9/backup/hotfcm/bin
rm -r /Volumes/laciedat\ 9/backup/hotfcm/DATA
rsync -aprv /Volumes/laciedat\ 9/backup/hotfcm /Volumes/toshidat\ 1/research/hfcm/20221206/


```
