## Welcome to 14 Lectures on Visual SLAM: From Theory to Practice, by Xiang Gao, Tao Zhang, Qinrui Yan and Yi Liu

This is the English version of this book. If you are a Chinese reader, please check [this page](https://item.jd.com/12077296218.html). Our code is in github: [code](https://github.com/gaoxiang12/slambook).

So far the English version is free as I haven't contacted any publishing house. It is translated from the Chinese version. We are still doing the translation, maybe for a few months.

## Read online

[gaoxiang12.github.io/slambook-en](https://gaoxiang12.github.io/slambook-en)


## Contents
### Chapter 1. [Preface](/ch1.md)
### Chapter 2. [First Glance of Visual SLAM](/ch2.md)
### Chapter 3. [Rigid Body Motion in 3D Space](/ch3.md)
### Chapter 4. [Lie Group and Lie Algebra](/ch4.md)
### Chapter 5. [Cameras and Images](/ch5.md)
### Chapter 6. [Non-linear Optimization](/ch6.md)
### Chapter 7. [Feature Based Visual Odometry](/ch7.md)
### Chapter 8. [Direct (Intensity based) Visual Odometry](/ch8.md)
### Chapter 9. [Project](/ch9.md)
### Chapter 10. [Backend Optimization](/ch10.md)
### Chapter 11. [Pose Graph and Factor Graph](/ch11.md)
### Chapter 12. [Loop Closure](/ch12.md)
### Chapter 13. [Dense Reconstruction and Mapping](/ch13.md)
### Chapter 14. [Future of Visual SLAM](/ch14.md)

If you are doing academic works, please cite:

```
@Book{Gao2017SLAM,
title={14 Lectures on Visual SLAM: From Theory to Practice},
publisher = {Publishing House of Electronics Industry},
year = {2017},
author = {Xiang Gao and Tao Zhang and Yi Liu and Qinrui Yan},
}
```

## Contribution Guidelines

Put one chapter in one markdown file as `ch<num>.md` in the repo.
In the beginning of each markdown file, put this head:

```
---
layout: custom/math
title: <title of the chapter>
---
```

Specifically, if there are no mathematical equations in the chapter, use the `custom` layout;
If there are, use `math`, which imports [MathJax](http://docs.mathjax.org/en/latest/)
for typesetting LaTeX-style equations.

For a long chapter with many subtitles, it is better to generate a Table of Contents.
Put this right beneath the layout-title head for auto-generating ToC:

```
* content
{:toc}
```

Please refer to [ch2.md](ch2.md) as an example.
