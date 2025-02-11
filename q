[33mcommit 2bac99e73874771b4107f5fafafb28859bcb21c8[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mfrontend_UserReg[m[33m)[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Sun Feb 2 18:23:01 2025 -0500

    Finished user reg & login feature

 accounts/forms.py                      |  9 [32m+++++++[m
 accounts/templates/accounts/login.html | 44 [32m++++++++++++++++++++++++++++++++++[m
 accounts/urls.py                       |  2 [32m++[m
 accounts/views.py                      | 32 [32m++++++++++++++++++++++[m[31m---[m
 moviesstore/settings.py                |  3 [32m+++[m
 moviesstore/templates/base.html        | 14 [32m+++++++[m[31m----[m
 6 files changed, 96 insertions(+), 8 deletions(-)

[33mcommit 2b3b9cd755d0318ae199574b22b2e8a0afe195dc[m[33m ([m[1;31morigin/frontend_UserReg[m[33m)[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Sun Feb 2 00:28:42 2025 -0500

    testing if frontend rly changed

 .venv/.gitignore                                   |    2 [32m+[m
 .venv/Lib/site-packages/PIL/BdfFontFile.py         |  133 [32m+[m
 .venv/Lib/site-packages/PIL/BlpImagePlugin.py      |  501 [32m+++[m
 .venv/Lib/site-packages/PIL/BmpImagePlugin.py      |  511 [32m+++[m
 .venv/Lib/site-packages/PIL/BufrStubImagePlugin.py |   76 [32m+[m
 .venv/Lib/site-packages/PIL/ContainerIO.py         |  173 [32m+[m
 .venv/Lib/site-packages/PIL/CurImagePlugin.py      |   75 [32m+[m
 .venv/Lib/site-packages/PIL/DcxImagePlugin.py      |   80 [32m+[m
 .venv/Lib/site-packages/PIL/DdsImagePlugin.py      |  573 [32m+++[m
 .venv/Lib/site-packages/PIL/EpsImagePlugin.py      |  474 [32m+++[m
 .venv/Lib/site-packages/PIL/ExifTags.py            |  382 [32m++[m
 .venv/Lib/site-packages/PIL/FitsImagePlugin.py     |  152 [32m+[m
 .venv/Lib/site-packages/PIL/FliImagePlugin.py      |  175 [32m+[m
 .venv/Lib/site-packages/PIL/FontFile.py            |  134 [32m+[m
 .venv/Lib/site-packages/PIL/FpxImagePlugin.py      |  257 [32m++[m
 .venv/Lib/site-packages/PIL/FtexImagePlugin.py     |  115 [32m+[m
 .venv/Lib/site-packages/PIL/GbrImagePlugin.py      |  103 [32m+[m
 .venv/Lib/site-packages/PIL/GdImageFile.py         |  102 [32m+[m
 .venv/Lib/site-packages/PIL/GifImagePlugin.py      | 1197 [32m++++++[m
 .venv/Lib/site-packages/PIL/GimpGradientFile.py    |  149 [32m+[m
 .venv/Lib/site-packages/PIL/GimpPaletteFile.py     |   58 [32m+[m
 .venv/Lib/site-packages/PIL/GribStubImagePlugin.py |   76 [32m+[m
 .venv/Lib/site-packages/PIL/Hdf5StubImagePlugin.py |   76 [32m+[m
 .venv/Lib/site-packages/PIL/IcnsImagePlugin.py     |  412 [32m++[m
 .venv/Lib/site-packages/PIL/IcoImagePlugin.py      |  381 [32m++[m
 .venv/Lib/site-packages/PIL/ImImagePlugin.py       |  386 [32m++[m
 .venv/Lib/site-packages/PIL/Image.py               | 4197 [32m++++++++++++++++++++[m
 .venv/Lib/site-packages/PIL/ImageChops.py          |  311 [32m++[m
 .venv/Lib/site-packages/PIL/ImageCms.py            | 1125 [32m++++++[m
 .venv/Lib/site-packages/PIL/ImageColor.py          |  320 [32m++[m
 .venv/Lib/site-packages/PIL/ImageDraw.py           | 1218 [32m++++++[m
 .venv/Lib/site-packages/PIL/ImageDraw2.py          |  243 [32m++[m
 .venv/Lib/site-packages/PIL/ImageEnhance.py        |  113 [32m+[m
 .venv/Lib/site-packages/PIL/ImageFile.py           |  832 [32m++++[m
 .venv/Lib/site-packages/PIL/ImageFilter.py         |  605 [32m+++[m
 .venv/Lib/site-packages/PIL/ImageFont.py           | 1338 [32m+++++++[m
 .venv/Lib/site-packages/PIL/ImageGrab.py           |  183 [32m+[m
 .venv/Lib/site-packages/PIL/ImageMath.py           |  368 [32m++[m
 .venv/Lib/site-packages/PIL/ImageMode.py           |   92 [32m+[m
 .venv/Lib/site-packages/PIL/ImageMorph.py          |  265 [32m++[m
 .venv/Lib/site-packages/PIL/ImageOps.py            |  731 [32m++++[m
 .venv/Lib/site-packages/PIL/ImagePalette.py        |  285 [32m++[m
 .venv/Lib/site-packages/PIL/ImagePath.py           |   20 [32m+[m
 .venv/Lib/site-packages/PIL/ImageQt.py             |  219 [32m+[m
 .venv/Lib/site-packages/PIL/ImageSequence.py       |   86 [32m+[m
 .venv/Lib/site-packages/PIL/ImageShow.py           |  360 [32m++[m
 .venv/Lib/site-packages/PIL/ImageStat.py           |  160 [32m+[m
 .venv/Lib/site-packages/PIL/ImageTk.py             |  290 [32m++[m
 .venv/Lib/site-packages/PIL/ImageTransform.py      |  136 [32m+[m
 .venv/Lib/site-packages/PIL/ImageWin.py            |  247 [32m++[m
 .venv/Lib/site-packages/PIL/ImtImagePlugin.py      |  103 [32m+[m
 .venv/Lib/site-packages/PIL/IptcImagePlugin.py     |  249 [32m++[m
 .venv/Lib/site-packages/PIL/Jpeg2KImagePlugin.py   |  443 [32m+++[m
 .venv/Lib/site-packages/PIL/JpegImagePlugin.py     |  905 [32m+++++[m
 .venv/Lib/site-packages/PIL/JpegPresets.py         |  242 [32m++[m
 .venv/Lib/site-packages/PIL/McIdasImagePlugin.py   |   80 [32m+[m
 .venv/Lib/site-packages/PIL/MicImagePlugin.py      |  107 [32m+[m
 .venv/Lib/site-packages/PIL/MpegImagePlugin.py     |   88 [32m+[m
 .venv/Lib/site-packages/PIL/MpoImagePlugin.py      |  190 [32m+[m
 .venv/Lib/site-packages/PIL/MspImagePlugin.py      |  200 [32m+[m
 .venv/Lib/site-packages/PIL/PSDraw.py              |  234 [32m++[m
 .venv/Lib/site-packages/PIL/PaletteFile.py         |   54 [32m+[m
 .venv/Lib/site-packages/PIL/PalmImagePlugin.py     |  232 [32m++[m
 .venv/Lib/site-packages/PIL/PcdImagePlugin.py      |   64 [32m+[m
 .venv/Lib/site-packages/PIL/PcfFontFile.py         |  254 [32m++[m
 .venv/Lib/site-packages/PIL/PcxImagePlugin.py      |  229 [32m++[m
 .venv/Lib/site-packages/PIL/PdfImagePlugin.py      |  311 [32m++[m
 .venv/Lib/site-packages/PIL/PdfParser.py           | 1073 [32m+++++[m
 .venv/Lib/site-packages/PIL/PixarImagePlugin.py    |   72 [32m+[m
 .venv/Lib/site-packages/PIL/PngImagePlugin.py      | 1544 [32m+++++++[m
 .venv/Lib/site-packages/PIL/PpmImagePlugin.py      |  375 [32m++[m
 .venv/Lib/site-packages/PIL/PsdImagePlugin.py      |  332 [32m++[m
 .venv/Lib/site-packages/PIL/QoiImagePlugin.py      |  115 [32m+[m
 .venv/Lib/site-packages/PIL/SgiImagePlugin.py      |  247 [32m++[m
 .venv/Lib/site-packages/PIL/SpiderImagePlugin.py   |  326 [32m++[m
 .venv/Lib/site-packages/PIL/SunImagePlugin.py      |  145 [32m+[m
 .venv/Lib/site-packages/PIL/TarIO.py               |   57 [32m+[m
 .venv/Lib/site-packages/PIL/TgaImagePlugin.py      |  264 [32m++[m
 .venv/Lib/site-packages/PIL/TiffImagePlugin.py     | 2297 [32m+++++++++++[m
 .venv/Lib/site-packages/PIL/TiffTags.py            |  562 [32m+++[m
 .venv/Lib/site-packages/PIL/WalImageFile.py        |  127 [32m+[m
 .venv/Lib/site-packages/PIL/WebPImagePlugin.py     |  322 [32m++[m
 .venv/Lib/site-packages/PIL/WmfImagePlugin.py      |  184 [32m+[m
 .venv/Lib/site-packages/PIL/XVThumbImagePlugin.py  |   83 [32m+[m
 .venv/Lib/site-packages/PIL/XbmImagePlugin.py      |   98 [32m+[m
 .venv/Lib/site-packages/PIL/XpmImagePlugin.py      |  125 [32m+[m
 .venv/Lib/site-packages/PIL/__init__.py            |   86 [32m+[m
 .venv/Lib/site-packages/PIL/__main__.py            |    7 [32m+[m
 .venv/Lib/site-packages/PIL/_binary.py             |  112 [32m+[m
 .venv/Lib/site-packages/PIL/_deprecate.py          |   69 [32m+[m
 .../site-packages/PIL/_imaging.cp312-win_arm64.pyd |  Bin [31m0[m -> [32m2009088[m bytes
 .venv/Lib/site-packages/PIL/_imaging.pyi           |   31 [32m+[m
 .../PIL/_imagingcms.cp312-win_arm64.pyd            |  Bin [31m0[m -> [32m238592[m bytes
 .venv/Lib/site-packages/PIL/_imagingcms.pyi        |  143 [32m+[m
 .../PIL/_imagingft.cp312-win_arm64.pyd             |  Bin [31m0[m -> [32m1744896[m bytes
 .venv/Lib/site-packages/PIL/_imagingft.pyi         |   69 [32m+[m
 .../PIL/_imagingmath.cp312-win_arm64.pyd           |  Bin [31m0[m -> [32m21504[m bytes
 .venv/Lib/site-packages/PIL/_imagingmath.pyi       |    3 [32m+[m
 .../PIL/_imagingmorph.cp312-win_arm64.pyd          |  Bin [31m0[m -> [32m12288[m bytes
 .venv/Lib/site-packages/PIL/_imagingmorph.pyi      |    3 [32m+[m
 .../PIL/_imagingtk.cp312-win_arm64.pyd             |  Bin [31m0[m -> [32m13824[m bytes
 .venv/Lib/site-packages/PIL/_imagingtk.pyi         |    3 [32m+[m
 .venv/Lib/site-packages/PIL/_tkinter_finder.py     |   21 [32m+[m
 .venv/Lib/site-packages/PIL/_typing.py             |   53 [32m+[m
 .venv/Lib/site-packages/PIL/_util.py               |   26 [32m+[m
 .venv/Lib/site-packages/PIL/_version.py            |    4 [32m+[m
 .../site-packages/PIL/_webp.cp312-win_arm64.pyd    |  Bin [31m0[m -> [32m346112[m bytes
 .venv/Lib/site-packages/PIL/_webp.pyi              |    3 [32m+[m
 .venv/Lib/site-packages/PIL/features.py            |  357 [32m++[m
 .venv/Lib/site-packages/PIL/py.typed               |    0
 .venv/Lib/site-packages/PIL/report.py              |    5 [32m+[m
 .../pillow-11.1.0.dist-info/INSTALLER              |    1 [32m+[m
 .../site-packages/pillow-11.1.0.dist-info/LICENSE  | 1213 [32m++++++[m
 .../site-packages/pillow-11.1.0.dist-info/METADATA |  176 [32m+[m
 .../site-packages/pillow-11.1.0.dist-info/RECORD   |  213 [32m+[m
 .../pillow-11.1.0.dist-info/REQUESTED              |    0
 .../site-packages/pillow-11.1.0.dist-info/WHEEL    |    5 [32m+[m
 .../pillow-11.1.0.dist-info/top_level.txt          |    1 [32m+[m
 .../site-packages/pillow-11.1.0.dist-info/zip-safe |    1 [32m+[m
 accounts/forms.py                                  |    9 [32m+[m
 accounts/views.py                                  |   14 [32m+[m[31m-[m
 db.sqlite3                                         |  Bin [31m0[m -> [32m135168[m bytes
 moviesstore/templates/base.html                    |    3 [32m+[m[31m-[m
 123 files changed, 35450 insertions(+), 11 deletions(-)

[33mcommit 31d9a1918000c5797bd8120359cf61b072d15461[m[33m ([m[1;31morigin/User-Registration[m[33m, [m[1;32mUser-Registration[m[33m)[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Sat Feb 1 23:26:19 2025 -0500

    added movie to path in urls, website should now work

 db.sqlite3          | Bin [31m135168[m -> [32m0[m bytes
 moviesstore/urls.py |   1 [32m+[m
 2 files changed, 1 insertion(+)

[33mcommit 0ae1683566c067b40e483468dee81fd8a3657030[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Sat Feb 1 22:58:43 2025 -0500

    Resolved conflict in db.sqlite3

 accounts/views.py | 13 [32m++++++++++++[m[31m-[m
 1 file changed, 12 insertions(+), 1 deletion(-)

[33mcommit 508157c4308c49d9136799cece719fa91d6f1190[m
Merge: 3a626d7 0c57f42
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Sat Feb 1 22:50:04 2025 -0500

    fix merge conflict with movieapp branch

[33mcommit 0c57f4260fe3d5f1b68af60f50b23954dc8d22a7[m[33m ([m[1;31morigin/movieApp[m[33m)[m
Author: Shi J 2340 <shijin21691412345@gmail.com>
Date:   Sat Feb 1 21:44:07 2025 -0500

    chapter5-6 movieModel&Database

 db.sqlite3                                         | Bin [31m131072[m -> [32m135168[m bytes
 media/movie_images/Conan_j0p4UI7.jpg               | Bin [31m0[m -> [32m34647[m bytes
 media/movie_images/Pacific_Rim_6qy2Qeg.jpg         | Bin [31m0[m -> [32m100330[m bytes
 media/movie_images/Transformers_5Ng8jPK.jpg        | Bin [31m0[m -> [32m31146[m bytes
 media/movie_images/Zootopia.jpg                    | Bin [31m0[m -> [32m245330[m bytes
 movies/__pycache__/admin.cpython-313.pyc           | Bin [31m200[m -> [32m330[m bytes
 movies/__pycache__/models.cpython-313.pyc          | Bin [31m197[m -> [32m1091[m bytes
 movies/__pycache__/views.cpython-313.pyc           | Bin [31m1237[m -> [32m1232[m bytes
 movies/admin.py                                    |   3 [32m++[m[31m-[m
 movies/migrations/0001_initial.py                  |  24 [32m+++++++++++++++++[m
 .../__pycache__/0001_initial.cpython-313.pyc       | Bin [31m0[m -> [32m1103[m bytes
 movies/models.py                                   |   8 [32m++++++[m
 movies/templates/movies/index.html                 |  24 [32m++++++++++++++[m[31m---[m
 movies/templates/movies/show.html                  |  10 [32m+++[m[31m----[m
 movies/views.py                                    |  29 [32m+++++++[m[31m--------------[m
 moviesstore/__pycache__/settings.cpython-313.pyc   | Bin [31m2755[m -> [32m2881[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc       | Bin [31m1171[m -> [32m1405[m bytes
 moviesstore/settings.py                            |   3 [32m+++[m
 moviesstore/static/css/style.css                   |   8 [32m++++++[m
 moviesstore/urls.py                                |   5 [32m+++[m[31m-[m
 20 files changed, 83 insertions(+), 31 deletions(-)

[33mcommit 63eef7360f775a779b86b69ab22f504942f2723d[m
Author: Shi J 2340 <shijin21691412345@gmail.com>
Date:   Fri Jan 31 23:11:57 2025 -0500

    chapter4 update

 home/__pycache__/__init__.cpython-313.pyc          | Bin [31m154[m -> [32m154[m bytes
 home/__pycache__/apps.cpython-313.pyc              | Bin [31m514[m -> [32m514[m bytes
 home/__pycache__/urls.cpython-313.pyc              | Bin [31m409[m -> [32m409[m bytes
 home/__pycache__/views.cpython-313.pyc             | Bin [31m665[m -> [32m665[m bytes
 movies/__init__.py                                 |   0
 movies/__pycache__/__init__.cpython-313.pyc        | Bin [31m0[m -> [32m156[m bytes
 movies/__pycache__/admin.cpython-313.pyc           | Bin [31m0[m -> [32m200[m bytes
 movies/__pycache__/apps.cpython-313.pyc            | Bin [31m0[m -> [32m520[m bytes
 movies/__pycache__/models.cpython-313.pyc          | Bin [31m0[m -> [32m197[m bytes
 movies/__pycache__/urls.cpython-313.pyc            | Bin [31m0[m -> [32m419[m bytes
 movies/__pycache__/views.cpython-313.pyc           | Bin [31m0[m -> [32m1237[m bytes
 movies/admin.py                                    |   3 [32m++[m
 movies/apps.py                                     |   6 [32m++++[m
 movies/migrations/__init__.py                      |   0
 .../__pycache__/__init__.cpython-313.pyc           | Bin [31m0[m -> [32m167[m bytes
 movies/models.py                                   |   3 [32m++[m
 movies/templates/movies/index.html                 |  30 [32m+++++++++++++++++++[m
 movies/templates/movies/show.html                  |  22 [32m++++++++++++++[m
 movies/tests.py                                    |   3 [32m++[m
 movies/urls.py                                     |   6 [32m++++[m
 movies/views.py                                    |  33 [32m+++++++++++++++++++++[m
 moviesstore/__pycache__/__init__.cpython-313.pyc   | Bin [31m161[m -> [32m161[m bytes
 moviesstore/__pycache__/settings.cpython-313.pyc   | Bin [31m2747[m -> [32m2755[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc       | Bin [31m1106[m -> [32m1171[m bytes
 moviesstore/__pycache__/wsgi.cpython-313.pyc       | Bin [31m657[m -> [32m657[m bytes
 moviesstore/settings.py                            |   1 [32m+[m
 moviesstore/templates/base.html                    |   2 [32m++[m
 moviesstore/urls.py                                |   1 [32m+[m
 28 files changed, 110 insertions(+)

[33mcommit 3a626d7fe07ecc47d01967222471b2b0c5d6cb3b[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Thu Jan 30 16:38:36 2025 -0500

    Removed pycache files and added user signup; still on chapter 8 just finished figure 8.2 in text

 .idea/misc.xml                                     |   1 [32m+[m
 .idea/moviesstore.iml                              |   2 [32m+[m[31m-[m
 .../__pycache__/__init__.cpython-312.pyc           | Bin [31m0[m -> [32m165[m bytes
 accounts/templates/accounts/signup.html            |  24 [32m+++++++++++++++++++++[m
 accounts/test.html                                 |  10 [31m---------[m
 accounts/urls.py                                   |   5 [32m+++++[m
 accounts/views.py                                  |   9 [32m+++++++[m[31m-[m
 home/__pycache__/__init__.cpython-313.pyc          | Bin [31m157[m -> [32m0[m bytes
 home/__pycache__/apps.cpython-313.pyc              | Bin [31m517[m -> [32m0[m bytes
 home/__pycache__/urls.cpython-313.pyc              | Bin [31m412[m -> [32m0[m bytes
 home/__pycache__/views.cpython-313.pyc             | Bin [31m668[m -> [32m0[m bytes
 moviesstore/__pycache__/__init__.cpython-313.pyc   | Bin [31m164[m -> [32m0[m bytes
 moviesstore/__pycache__/settings.cpython-313.pyc   | Bin [31m2750[m -> [32m0[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc       | Bin [31m1109[m -> [32m0[m bytes
 moviesstore/__pycache__/wsgi.cpython-313.pyc       | Bin [31m660[m -> [32m0[m bytes
 moviesstore/settings.py                            |   1 [32m+[m
 moviesstore/templates/base.html                    |   6 [32m++++++[m
 moviesstore/urls.py                                |   2 [32m++[m
 18 files changed, 48 insertions(+), 12 deletions(-)

[33mcommit 99b883024da926514ea52d4537624a9a914ca5b3[m
Author: jenhuy <jennyhuynh604@gmail.com>
Date:   Thu Jan 30 16:07:39 2025 -0500

    testing

 accounts/test.html | 10 [32m++++++++++[m
 1 file changed, 10 insertions(+)

[33mcommit f821bfb3705c700036603f375a094a177010b5f5[m
Author: tukgames <64883510+tukgames@users.noreply.github.com>
Date:   Thu Jan 30 15:58:36 2025 -0500

    Created accounts app

 accounts/__init__.py                             |   0
 accounts/admin.py                                |   3 [32m+++[m
 accounts/apps.py                                 |   6 [32m++++++[m
 accounts/migrations/__init__.py                  |   0
 accounts/models.py                               |   3 [32m+++[m
 accounts/tests.py                                |   3 [32m+++[m
 accounts/views.py                                |   3 [32m+++[m
 home/__pycache__/__init__.cpython-313.pyc        | Bin [31m154[m -> [32m157[m bytes
 home/__pycache__/apps.cpython-313.pyc            | Bin [31m514[m -> [32m517[m bytes
 home/__pycache__/urls.cpython-313.pyc            | Bin [31m409[m -> [32m412[m bytes
 home/__pycache__/views.cpython-313.pyc           | Bin [31m665[m -> [32m668[m bytes
 moviesstore/__pycache__/__init__.cpython-313.pyc | Bin [31m161[m -> [32m164[m bytes
 moviesstore/__pycache__/settings.cpython-313.pyc | Bin [31m2747[m -> [32m2750[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc     | Bin [31m1106[m -> [32m1109[m bytes
 moviesstore/__pycache__/wsgi.cpython-313.pyc     | Bin [31m657[m -> [32m660[m bytes
 15 files changed, 18 insertions(+)

[33mcommit b020d98f2599ccbcb24a66278a88748e48803bdf[m[33m ([m[1;31morigin/movie-app-(chapter-4-5)[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmain[m[33m)[m
Author: Shi J 2340 <shijin21691412345@gmail.com>
Date:   Thu Jan 30 14:54:33 2025 -0500

    commit

 home/__pycache__/__init__.cpython-313.pyc        | Bin [31m0[m -> [32m154[m bytes
 home/__pycache__/apps.cpython-313.pyc            | Bin [31m0[m -> [32m514[m bytes
 home/__pycache__/urls.cpython-313.pyc            | Bin [31m0[m -> [32m409[m bytes
 home/__pycache__/views.cpython-313.pyc           | Bin [31m0[m -> [32m665[m bytes
 moviesstore/__pycache__/__init__.cpython-313.pyc | Bin [31m164[m -> [32m161[m bytes
 moviesstore/__pycache__/settings.cpython-313.pyc | Bin [31m2580[m -> [32m2747[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc     | Bin [31m1035[m -> [32m1106[m bytes
 moviesstore/__pycache__/wsgi.cpython-313.pyc     | Bin [31m660[m -> [32m657[m bytes
 8 files changed, 0 insertions(+), 0 deletions(-)

[33mcommit 94b5bb0ae09ee8948cccdbb98ab387556a85bfc7[m
Author: Shi J 2340 <shijin21691412345@gmail.com>
Date:   Thu Jan 30 14:45:05 2025 -0500

    chapter 2 & 3 changes

 db.sqlite3              | Bin [31m0[m -> [32m131072[m bytes
 moviesstore/settings.py |   3 [32m+[m[31m--[m
 2 files changed, 1 insertion(+), 2 deletions(-)

[33mcommit 38627d82cdb27a015183086221a25c7f20d83d74[m
Author: Shi J 2340 <shijin21691412345@gmail.com>
Date:   Thu Jan 30 00:35:46 2025 -0500

    chapter 2 & 3 changes

 home/admin.py                         |   3 [31m-[m
 home/migrations/__init__.py           |   0
 home/models.py                        |   3 [31m-[m
 home/templates/home/about.html        |  37 [32m+++++++++++[m
 home/templates/home/index.html        |  20 [32m++++++[m
 home/tests.py                         |   3 [31m-[m
 home/urls.py                          |   6 [32m++[m
 home/views.py                         |  12 [32m+++[m[31m-[m
 moviesstore/settings.py               |  10 [32m++[m[31m-[m
 moviesstore/static/css/style.css      |  33 [32m++++++++++[m
 moviesstore/static/img/about.jpg      | Bin [31m0[m -> [32m26095[m bytes
 moviesstore/static/img/background.jpg | Bin [31m0[m -> [32m6667276[m bytes
 moviesstore/static/img/logo.png       | Bin [31m0[m -> [32m68592[m bytes
 moviesstore/templates/base.html       | 118 [32m++++++++++++++++++++++++++++++++++[m
 moviesstore/urls.py                   |   3 [32m+[m[31m-[m
 15 files changed, 234 insertions(+), 14 deletions(-)

[33mcommit 348a607fd4fafda407d7b4403d3d027630b02cbd[m[33m ([m[1;31morigin/Homepage[m[33m)[m
Author: tukgames <64883510+tukgames@users.noreply.github.com>
Date:   Mon Jan 27 13:30:17 2025 -0500

    Created Home App
    
    followed the second chapter of the book, creating an application called 'home' in the project

 .idea/vcs.xml               | 6 [32m++++++[m
 home/__init__.py            | 0
 home/admin.py               | 3 [32m+++[m
 home/apps.py                | 6 [32m++++++[m
 home/migrations/__init__.py | 0
 home/models.py              | 3 [32m+++[m
 home/tests.py               | 3 [32m+++[m
 home/views.py               | 3 [32m+++[m
 8 files changed, 24 insertions(+)

[33mcommit e6564989fd866a16861e90e312339c9351266fad[m
Author: tukgames <64883510+tukgames@users.noreply.github.com>
Date:   Mon Jan 27 13:17:59 2025 -0500

    Initial commit

 .gitattributes                                   |   2 [32m+[m
 .idea/.gitignore                                 |   8 [32m++[m
 .idea/inspectionProfiles/profiles_settings.xml   |   6 [32m++[m
 .idea/misc.xml                                   |   6 [32m++[m
 .idea/modules.xml                                |   8 [32m++[m
 .idea/moviesstore.iml                            |  30 [32m++++++[m
 db.sqlite3                                       |   0
 manage.py                                        |  22 [32m++++[m
 moviesstore/__init__.py                          |   0
 moviesstore/__pycache__/__init__.cpython-313.pyc | Bin [31m0[m -> [32m164[m bytes
 moviesstore/__pycache__/settings.cpython-313.pyc | Bin [31m0[m -> [32m2580[m bytes
 moviesstore/__pycache__/urls.cpython-313.pyc     | Bin [31m0[m -> [32m1035[m bytes
 moviesstore/__pycache__/wsgi.cpython-313.pyc     | Bin [31m0[m -> [32m660[m bytes
 moviesstore/asgi.py                              |  16 [32m+++[m
 moviesstore/settings.py                          | 124 [32m+++++++++++++++++++++++[m
 moviesstore/urls.py                              |  22 [32m++++[m
 moviesstore/wsgi.py                              |  16 [32m+++[m
 17 files changed, 260 insertions(+)
