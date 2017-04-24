## Preface

### What is this book about?

This is a book that introduces visual SLAM, and it is probably the first Chinese book to focus on visual SLAM.

So, what is SLAM?

SLAM stands for **S**imultaneous **L**ocalization **a**nd **M**apping, It usually refers to a robot or a moving rigid body, equipped with a specific **sensor**, estimates its own **motion** and builds a **model** (some kinds of description) of the surrounding environment, without a priori information [Davison2007]. If the sensor here is mainly for the camera, it is called "visual SLAM".

Visual SLAM is the subject of this book. We deliberately put a lot of definitions into a sentence, so that readers have a more clear concept. First of all, SLAM aims to solve the "positioning" and "map building" issues at the same time. In other words, it is a problem of how to estimate the location of the sensor itself, while estimate the establishment of the surrounding environment. So how to solve it? This requires a good understanding about the sensor information. The sensor can observe the external world in a certain form, but the approach of such observations is different. And, why is this question worthwhile to spend the whole contents of a book to discuss it? Because it is difficult, especially if we want to make SLAM **in real time** and **without any prior knowledge**. When we talk about visual SLAM, what we have to do is to estimate the trajectory and map based on a set of continuous images (they form a video).

This seems to be a very intuitive question. When we humans go into a strange environment, aren't we doing exactly the same thing? So, can we write programs and make the computer do it? 

During the birth of computer vision field, people imagined that one day the computer would be like humans, watching and observing the world, in order to understand the surrounding objects. The ability to explore the unknown areas is  a wonderful and romantic dream, attracting numerous scientific researchers to struggle with this problem day and night [Hartyley2003]. We thought that this would not to be that difficult, but actually, the progress is not smooth as expected. Flowers, trees, insects, birds and animals, look so different in  computers: they are only the one by one numbers of a matrix. It is as difficult for the computer to understand the contents of the image as it is for we humans to understand those numbers. We don't know how to understand the image, nor do we know how to understand the computer. So, after decades of confusion,  we finally can see a little sign of success - by Artificial Intelligence (AI) and Machine Learning (ML) technology, which gradually allows the computers to identify the objects, faces, voices, texts, although in a way (probabilistically) that is still so different from ours. On the other hand, after nearly two years of developments in SLAM, our cameras begin to realize their position and find themselves in the motion and, although there is still a huge gap between the computers and our humans, researchers have successfully built a variety of real-time SLAM systems. Some can quickly track their own location, and the other can even do three-dimensional reconstruction in real-time.

This is really difficult, but we have made a lot of progress. What's even more exciting is that, in recent years, we have seen the emergence of a large number of SLAM-related applications. The location of sensor is really useful in many areas: indoor sweeping machines and mobile robots need to locate; automatic driving cars in the roads need to locate; UAVs in the air need to locate; Virtual Reality (VR) and Augmented Reality (AR) sensors also need to locate. SLAM is so important. Without it, the sweeping machine cannot move in the room autonomously, only wandering blindly; domestic robots can not follow the instructions to reach a certain room accurately; Virtual Reality will always be fixed on the seat. If all these new things could not appear in real life, it would be so regrettable.

Today's researchers and developers are increasingly aware of the importance of SLAM technology.  SLAM has nearly 30 years of research history, and has also been a hot topic both in robot and computer vision community . Since the 21st century, visual SLAM technology has undergone a significant change and breakthrough in theory and practice, and is gradually going out from the laboratory into the real-world application. At the same time, we regretfully find that, at least in Chinese, SLAM-related papers and books are still very scarce, making many beginners interested in this area cannot get into the door. Although the theoretical framework of SLAM is basically matured, to write a whole SLAM system is still very complex which requires a high technical level. Researchers who have just entered SLAM area have to spend a long time learning a lot of basic and scattered knowledge, and often have to go through many detours to get close to the core of SLAM technology.

This book systematically introduces the visual SLAM technology. We hope that it will (in part) fill the gaps. We will detail SLAM's theoretical background, system architecture, and the mainstream of the various modules. At the same time, we attach great importance onto practice: all the important algorithms introduced in this book will have runnable code that can be tested by yourself, in order to deepen the reader's understanding. Visual SLAM, after all, is a technology that is very closely related to practice. Although the mathematical theory is beautiful, if you cannot convert it into a program, it is still like a castle in the air, which means no practical significance. We believe that the practice is true knowledge, and practice brings true love. Only after actually calculating the various algorithms, you can really understand SLAM, and fall in love with research.

Since its inception in 1986 [Smith1986], SLAM has been a hot topic in the field of robotics. It is very difficult and unnecessary to make a complete description of all the algorithms and their variants in the history of SLAM. This book will introduce the background knowledge, such as projective geometry, computer vision, state estimation theory, Li Group and Lie algebra, etc., and on top of these background knowledge, give the trunk of the SLAM tree, and omit those strange and complex leaves. We think this is effective. If the reader can master the essence of the trunk, then they can naturally have the ability to explore those edges and the details of the complex frontier knowledge. So our aim is to allow SLAM beginners to quickly grow into qualified researchers of this field by reading this book. On the other hand, even if you are already an experienced SLAM researcher, this book may also have some places where you feel unfamiliar and can give you new insights.



### How to use this book?

### Style

### Acknowledgements

### Practice

### References

- [Davison2007]. A. Davison, I. Reid, N. Molton, and O. Stasse, “Monoslam: Real-time single camera SLAM,” IEEETransactions on Pattern Analysis and Machine Intelligence, vol. 29, no. 6, pp. 1052–1067, 2007.
- [Hartley2003]. R. Hartley and A. Zisserman, Multiple View Geometry in Computer Vision. Cambridge universitypress, 2003.
- [Smith1986]. R. C. Smith and P. Cheeseman, “On the representation and estimation of spatial uncertainty,” In-ternational Journal of Robotics Research, vol. 5, no. 4, pp. 56–68, 1986.