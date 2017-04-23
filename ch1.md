## Preface

### What is this book about?

This is a book that introduces visual SLAM, and it is probably the first Chinese book to focus on visual SLAM.

So, what is SLAM?

SLAM stands for **S**imultaneous **L**ocalization **a**nd **M**apping, It usually refers to a robot or a moving rigid body, equipped with a specific **sensor**, estimates its own **motion** and builds a **model** (some kinds of description) of the surrounding environment, without a priori information [Davison2007]. If the sensor here is mainly for the camera, it is called "visual SLAM".

Visual SLAM is the subject of this book. We deliberately put a lot of definitions into a sentence, so that readers have a more clear concept. First of all, SLAM aims to solve the "positioning" and "map building" issues at the same time. In other words, it is a problem of how to estimate the location of the sensor itself, while estimate the establishment of the surrounding environment. So how to solve it? This requires a good understanding about the sensor information. The sensor can observe the external world in a certain form, but the approach of such observations is different. And, why is this question worthwhile to spend the whole contents of a book to discuss it? Because it is difficult, especially if we want to make SLAM **in real time** and **without any prior knowledge**. When we talk about visual SLAM, what we have to do is to estimate the trajectory and map based on a set of continuous images (they form a video).

This seems to be a very intuitive question. When we humans go into a strange environment, aren't we doing exactly the same thing? So, can we write programs and make the computer do it? 

### How to use this book?

### Style

### Acknowledgements

### Practice

### References

[Davison2007]. 