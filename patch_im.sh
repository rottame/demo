#!/bin/bash 

set -e

echo '---> patch -p0 < ../im-src/ImageMagick-6.6.8.9-examples.patch'
patch -p0 < ../im-src/ImageMagick-6.6.8.9-examples.patch

echo '---> patch -p0 < ../im-src/ImageMagick-6.6.8.9-doc.patch'
patch -p0 < ../im-src/ImageMagick-6.6.8.9-doc.patch

echo '---> patch -p1 < ../im-src/ImageMagick-6.7.6.1-no-dist-lzip.patch '
patch -p1 < ../im-src/ImageMagick-6.7.6.1-no-dist-lzip.patch 

echo '---> patch -p1 < ../im-src/ImageMagick-6.8.4.0-rpath.patch '
patch -p1 < ../im-src/ImageMagick-6.8.4.0-rpath.patch 

echo '---> patch -p1 < ../im-src/ImageMagick-6.8.5.7-no-XPMCompliance.patch '
patch -p1 < ../im-src/ImageMagick-6.8.5.7-no-XPMCompliance.patch 

echo '---> patch -p1 < ../im-src/ImageMagick-6.8.4.0-dont-build-in-install.patch'
patch -p1 < ../im-src/ImageMagick-6.8.4.0-dont-build-in-install.patch

echo '---> patch -p0 < ../im-src/ImageMagick-6.8.8.1-display-stdin.patch'
patch -p0 < ../im-src/ImageMagick-6.8.8.1-display-stdin.patch

echo '---> patch -p0 < ../im-src/ImageMagick-CVE-2014-8562.patch'
patch -p0 < ../im-src/ImageMagick-CVE-2014-8562.patch

echo '---> patch -p0 < ../im-src/ImageMagick-CVE-2014-8355.patch'
patch -p0 < ../im-src/ImageMagick-CVE-2014-8355.patch

echo '---> patch -p0 < ../im-src/ImageMagick-CVE-2014-8354.patch'
patch -p0 < ../im-src/ImageMagick-CVE-2014-8354.patch

echo '---> patch -p0 < ../im-src/ImageMagick-CVE-2014-8716.patch'
patch -p0 < ../im-src/ImageMagick-CVE-2014-8716.patch

echo '---> patch -p0 < ../im-src/ImageMagick-pdf-img-compression.patch'
patch -p0 < ../im-src/ImageMagick-pdf-img-compression.patch

echo '---> patch -p0 < ../im-src/ImageMagick-pdf-title-encoding.patch'
patch -p0 < ../im-src/ImageMagick-pdf-title-encoding.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5118.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5118.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8902.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8902.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8901.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8901.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8903.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8903.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8900.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8900.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-4562,4563,4564.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-4562,4563,4564.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9846.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9846.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8894.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8894.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8895.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8895.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8896.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8896.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8897.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8897.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8898.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8898.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9805.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9805.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9806.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9806.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9807.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9807.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9808.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9808.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9809.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9809.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9810.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9810.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9821.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9821.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9849.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9849.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9836.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9836.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9828.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9828.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9813.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9813.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9830.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9830.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9811.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9811.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9812.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9812.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9819.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9819.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9847.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9847.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9835,9831.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9835,9831.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9850.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9850.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9820.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9820.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9851.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9851.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9837.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9837.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9841.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9841.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9843.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9843.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9818,9826,9829.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9818,9826,9829.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9832.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9832.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9854.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9854.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9824.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9824.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9822.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9822.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9852.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9852.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9814.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9814.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9838.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9838.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9815.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9815.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9844.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9844.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9842.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9842.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9839.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9839.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9845.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9845.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9816.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9816.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9817.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9817.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9823.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9823.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9848.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9848.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9833,9825.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9833,9825.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9853.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9853.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9840.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9840.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2014-9834.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2014-9834.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5688.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5688.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5687,CVE-2015-8959,CVE-2014-9907.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5687,CVE-2015-8959,CVE-2014-9907.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5691.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5691.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5690.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5690.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5689.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5689.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5842.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5842.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5841.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5841.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-6520.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-6520.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-5010.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-5010.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-6491.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-6491.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7540.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7540.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7529.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7529.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7530.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7530.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7528.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7528.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7513.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7513.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7526.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7526.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7527.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7527.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7514.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7514.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7515.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7515.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8957.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8957.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2015-8958,CVE-2016-7518.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2015-8958,CVE-2016-7518.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7516.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7516.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7517.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7517.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7519.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7519.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7520.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7520.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7521.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7521.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7522.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7522.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7523.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7523.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7524,7800.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7524,7800.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7525.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7525.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7531.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7531.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7532.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7532.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7533.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7533.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7534.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7534.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7535.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7535.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7537.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7537.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7538.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7538.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7539.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7539.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-6823.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-6823.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7101.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7101.patch

echo '---> patch -p1 < ../im-src/ImageMagick-write-tiff-div-by-zero.patch'
patch -p1 < ../im-src/ImageMagick-write-tiff-div-by-zero.patch

echo '---> patch -p1 < ../im-src/ImageMagick-buffer-overflow-pdb,map,tiff.patch'
patch -p1 < ../im-src/ImageMagick-buffer-overflow-pdb,map,tiff.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7799.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7799.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-7996,7997.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-7996,7997.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8684.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8684.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8682.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8682.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8683.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8683.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8677.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8677.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8862.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8862.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-9556.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-9556.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-9559.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-9559.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8866.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8866.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-8707.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-8707.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10049.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10049.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10050.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10050.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10051.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10051.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10052.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10052.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10144.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10144.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10145.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10145.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-5506.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-5506.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10059.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10059.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10046.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10046.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10048.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10048.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-5508.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-5508.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10146.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10146.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10063.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10063.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-5510.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-5510.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10065.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10065.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-5511.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-5511.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10060.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10060.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10061.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10061.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10062.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10062.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10064.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10064.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10068.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10068.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10069.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10069.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10070.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10070.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2016-10071.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2016-10071.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-5507.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-5507.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-6502.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-6502.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-7943.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-7943.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-7942.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-7942.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-7941.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-7941.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8344.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8344.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8345,8350.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8345,8350.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8346.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8346.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8357.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8357.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8343.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8343.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8347.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8347.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8348.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8348.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8349.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8349.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8351.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8351.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8352.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8352.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8353.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8353.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8354.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8354.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8355.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8355.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8356.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8356.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-7606.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-7606.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8765.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8765.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-8830.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-8830.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9098.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9098.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9143.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9143.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9142.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9142.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9141.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9141.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9144.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9144.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9440.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9440.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9439.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9439.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9501.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9501.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11403.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11403.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15033.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15033.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13139.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13139.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13133.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13133.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12428,12431,11534.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12428,12431,11534.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11446.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11446.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12433.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12433.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11523.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11523.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14173.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14173.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12587.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12587.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12435.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12435.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14531.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14531.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12983.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12983.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15930.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15930.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11478.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11478.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15217.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15217.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13134.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13134.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13769.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13769.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14138.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14138.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14175.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14175.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14342.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14342.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14341.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14341.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-16546.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-16546.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-16545.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-16545.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-16669,17682.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-16669,17682.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14607.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14607.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11640.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11640.patch

echo '---> patch -p1 < ../im-src/ImageMagick-unable-to-read-font-memory-leaks.patch'
patch -p1 < ../im-src/ImageMagick-unable-to-read-font-memory-leaks.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14682.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14682.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14989.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14989.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11188.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11188.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11527.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11527.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12140,12644.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12140,12644.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11535.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11535.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14172.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14172.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12662.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12662.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11752.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11752.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12669.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12669.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14733.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14733.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15277.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15277.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13062.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13062.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15281.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15281.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13061.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13061.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12563.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12563.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14174.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14174.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14042.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14042.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14343,12691.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14343,12691.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11751.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11751.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17680,17882.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17680,17882.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-1000445.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-1000445.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9409.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9409.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11449.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11449.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12430,12429.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12430,12429.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12642.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12642.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14249.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14249.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-1000476.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-1000476.patch

echo '---> patch -p1 < ../im-src/ImageMagick-mat.c-update.patch'
patch -p1 < ../im-src/ImageMagick-mat.c-update.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-5247.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-5247.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18022.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18022.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-5246.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-5246.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9262.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9262.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9261.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9261.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-10995.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-10995.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11539.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11539.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11505,11526.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11505,11526.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12565,12641.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12565,12641.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11750,12676,12643.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11750,12676,12643.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12673.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12673.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12671,13141.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12671,13141.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12640.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12640.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13059.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13059.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13142.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13142.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15218.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15218.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17504.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17504.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17884.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17884.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17879.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17879.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17914.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17914.patch

echo '---> patch -p1 < ../im-src/ImageMagick-png.c-other-fixes.patch'
patch -p1 < ../im-src/ImageMagick-png.c-other-fixes.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11525.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11525.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11639.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11639.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-5685.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-5685.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18008.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18008.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17681.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17681.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18028.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18028.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12665.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12665.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12654.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12654.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17885.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17885.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12418.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12418.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9407.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9407.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11537.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11537.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12664.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12664.patch

echo '---> patch -p1 < ../im-src/ImageMagick-histogram.c-update.patch'
patch -p1 < ../im-src/ImageMagick-histogram.c-update.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12432.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12432.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12668.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12668.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14224.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14224.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13058,CVE-2018-18016.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13058,CVE-2018-18016.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11450.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11450.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11448.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11448.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-5357.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-5357.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-6405,11656.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-6405,11656.patch

echo '---> patch -p1 < ../im-src/ImageMagick-psd.c-update.patch'
patch -p1 < ../im-src/ImageMagick-psd.c-update.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14060.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14060.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11170.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11170.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12674.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12674.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11166.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11166.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13131.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13131.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11638,11642.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11638,11642.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12566.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12566.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12427.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12427.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14139.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14139.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17934.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17934.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12663.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12663.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11533.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11533.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11530.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11530.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11528.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11528.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9405.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9405.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14739.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14739.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12693.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12693.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-12692.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-12692.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15017.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15017.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-15016.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-15016.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-7443.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-7443.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-7470.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-7470.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14314.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14314.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-16352.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-16352.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-16353.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-16353.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13768.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13768.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14505.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14505.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-9500.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-9500.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18209.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18209.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18211.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18211.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11524.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11524.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-8804.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-8804.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18251.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18251.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-10928.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-10928.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18254.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18254.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18250.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18250.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-9135.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-9135.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18252.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18252.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-9018.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-9018.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14325.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14325.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-8960.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-8960.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-10177.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-10177.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-17887.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-17887.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-9133.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-9133.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-18271.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-18271.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-11251.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-11251.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-13758.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-13758.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-10804.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-10804.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-11655.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-11655.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-10805.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-10805.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-14434.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-14434.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-14437.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-14437.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-14436.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-14436.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-14435.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-14435.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16323.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16323.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16329.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16329.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16412,16413.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16412,16413.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16645.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16645.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16644.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16644.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16643.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16643.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16640.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16640.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16642.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16642.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-16749.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-16749.patch

echo '---> patch -p1 < ../im-src/ImageMagick-meta.c-update.patch'
patch -p1 < ../im-src/ImageMagick-meta.c-update.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-11532.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-11532.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-17966.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-17966.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-12599.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-12599.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-12600.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-12600.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-17965.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-17965.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-18024.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-18024.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2017-14997.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2017-14997.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-18544.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-18544.patch

echo '---> patch -p1 < ../im-src/ImageMagick-improve-import-documentation.patch'
patch -p1 < ../im-src/ImageMagick-improve-import-documentation.patch

echo '---> patch -p1 < ../im-src/ImageMagick-allow-override-system-policy.patch'
patch -p1 < ../im-src/ImageMagick-allow-override-system-policy.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2018-20467.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2018-20467.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-7398.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-7398.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-7395.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-7395.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-7397.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-7397.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-7175.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-7175.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-9956.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-9956.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-10650.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-10650.patch

echo '---> patch -p1 < ../im-src/ImageMagick-xwd.c-update.patch'
patch -p1 < ../im-src/ImageMagick-xwd.c-update.patch

echo '---> patch -p1 < ../im-src/ImageMagick-CVE-2019-11007.patch'
patch -p1 < ../im-src/ImageMagick-CVE-2019-11007.patch
