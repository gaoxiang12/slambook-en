## Kata Pengantar

### Buku apa ini?

Ini adalah buku yang memperkenalkan visual SLAM, dan ini mungkin buku China pertama yang hanya berfokus pada topik spesifik ini.

Jadi, apa itu SLAM?

SLAM adalah singkatan dari Simultaneous Localization and Mapping. Biasanya mengacu pada robot atau bodi kaku yang bergerak, dilengkapi dengan sensor khusus, memperkirakan mosi sendiri dan membangun model (beberapa jenis deskripsi) dari lingkungan sekitar, tanpa informasi apriori [Davison2007]. Jika sensor yang dimaksud di sini terutama kamera, itu disebut "Visual SLAM".

Visual SLAM adalah subjek dari buku ini. Kami sengaja memasukkan definisi panjang menjadi satu kalimat tunggal, sehingga pembaca bisa memiliki konsep yang lebih jelas. Pertama-tama, SLAM bertujuan untuk memecahkan masalah "positioning" dan "map building" pada saat bersamaan. Dengan kata lain, ini adalah masalah bagaimana memperkirakan lokasi sensor itu sendiri, sambil memperkirakan model lingkungan. Jadi bagaimana mencapainya? Hal ini membutuhkan pemahaman yang baik tentang informasi sensor. Sensor dapat mengamati dunia luar dalam bentuk tertentu, namun pendekatan spesifik untuk memanfaatkan pengamatan semacam itu biasanya berbeda. Dan, mengapa masalah ini layak dikeluarkan untuk diselidiki oleh seluruh buku? Cukup karena sulit, apalagi kalau kita ingin sukses sukses SLAM secara real time dan tanpa sepengetahuan. Ketika kita berbicara tentang visual SLAM, kita perlu memperkirakan lintasan dan peta berdasarkan serangkaian gambar kontinu (yang membentuk sebuah video).

Hal ini tampaknya cukup intuitif. Ketika kita manusia memasuki lingkungan yang asing, bukankah kita melakukan hal yang persis sama? Jadi, pertanyaannya adalah apakah kita bisa menulis program dan membuat komputer melakukannya.

Pada saat lahirnya penglihatan komputer, orang membayangkan suatu saat komputer bisa bertindak seperti manusia, mengamati dan mengamati dunia, dan memahami lingkungan sekitar. Kemampuan menjelajahi daerah yang tidak diketahui adalah mimpi indah dan romantis, menarik banyak peneliti untuk mengatasi masalah ini siang dan malam [Hartyley2003]. Kami pikir ini tidak akan sesulit itu, tapi kemajuannya ternyata tidak semulus yang diharapkan. Bunga, pohon, serangga, burung dan hewan, dicatat sangat berbeda di komputer: mereka hanyalah matriks yang terdiri dari angka. Untuk membuat komputer memahami isi gambar, sama sulitnya membuat kita memahami blok angka tersebut. Kami bahkan tidak tahu bagaimana kami memahami gambar, dan kami juga tidak tahu bagaimana cara membuat komputer melakukannya. Namun, setelah berpuluh-puluh tahun berjuang, akhirnya kami mulai melihat tanda-tanda kesuksesan - melalui teknologi Artificial Intelligence (AI) dan Mesin Belajar (ML), yang secara bertahap memungkinkan komputer mengidentifikasi objek, wajah, suara, teks, walaupun dengan cara (probabilistik pemodelan) yang masih sangat berbeda dari kita. Di sisi lain, setelah hampir tiga dasawarsa perkembangan di SLAM, kamera kami mulai menangkap gerakan mereka dan mengetahui posisi mereka, walaupun masih ada celah besar antara kemampuan komputer dan manusia. Periset telah berhasil membangun berbagai sistem SLAM real-time. Beberapa dari mereka dapat secara efisien melacak lokasi mereka sendiri, dan yang lainnya bahkan dapat melakukan rekonstruksi tiga dimensi secara real-time

Ini sangat sulit, tapi kami telah membuat kemajuan yang luar biasa. Yang lebih seru lagi adalah, dalam beberapa tahun terakhir, kita telah melihat munculnya sejumlah besar aplikasi terkait SLAM. Lokasi sensor bisa sangat berguna di banyak area: mesin penyapu indoor dan robot mobile, mobil penggerak otomatis, Unmanned Aerial Vehicles (UAV) di udara, Virtual Reality (VR) dan Augmented Reality (AR). SLAM sangat penting Tanpa itu, mesin sweeping tidak bisa bermanuver di ruangan secara mandiri, tapi mengembara secara membabi buta; robot domestik tidak bisa mengikuti instruksi untuk mencapai ruangan tertentu secara akurat; Virtual Reality akan selalu terbatas dalam ruang yang dipersiapkan. Jika tidak ada inovasi ini yang bisa dilihat dalam kehidupan nyata, betapa disayangkannya itu.

Periset dan pengembang hari ini semakin menyadari pentingnya teknologi SLAM. SLAM memiliki hampir 30 tahun sejarah penelitian, dan telah menjadi topik hangat di komunitas robotika dan visi komputer. Sejak abad ke-21, teknologi SLAM visual telah mengalami perubahan dan terobosan yang signifikan baik dalam teori maupun praktik, dan secara bertahap berpindah dari laboratorium ke dunia nyata. Pada saat yang sama, kami dengan menyesal menemukan bahwa, setidaknya dalam bahasa China, makalah dan buku SLAM masih sangat langka, membuat banyak pemula di bidang ini tidak dapat memulai dengan lancar. Meski kerangka teoritis SLAM pada dasarnya telah menjadi matang, untuk menerapkan sistem SLAM yang lengkap masih sangat menantang dan membutuhkan keahlian teknis tingkat tinggi. Peneliti baru di daerah tersebut harus menghabiskan waktu lama untuk mempelajari sejumlah besar pengetahuan yang tersebar, dan seringkali harus melewati sejumlah jalan memutar untuk mendekati inti sebenarnya.

Buku ini secara sistematis menjelaskan teknologi visual SLAM. Kami berharap hal itu (setidaknya sebagian) mengisi celah saat ini. Kami akan merinci latar belakang teoritis SLAM, arsitektur sistem, dan berbagai modul utama. Pada saat bersamaan, kami menekankan praktik: semua algoritma penting yang diperkenalkan dalam buku ini akan dilengkapi dengan kode runnable yang dapat diuji sendiri, sehingga pembaca dapat mencapai pemahaman yang lebih dalam. Visual SLAM, lagipula, adalah teknologi untuk aplikasi. Meskipun teori matematika bisa indah, jika Anda tidak bisa mengubahnya menjadi garis kode, akan seperti kastil di udara, yang membawa sedikit dampak praktis. Kami percaya bahwa praktik memverifikasi pengetahuan sejati, dan latihan menguji gairah sejati. Hanya setelah membuat tangan Anda kotor dengan algoritme, Anda benar-benar bisa mengerti SLAM, dan mengklaim bahwa Anda telah jatuh cinta pada penelitian SLAM

Sejak didirikan pada tahun 1986 [Smith1986], SLAM telah menjadi topik penelitian yang panas dalam bidang robotika. Sangat sulit untuk memberikan pengantar lengkap untuk semua algoritma dan variannya dalam sejarah SLAM, dan kami menganggapnya sebagai hal yang tidak perlu juga. Buku ini pertama-tama akan memperkenalkan pengetahuan latar belakang, seperti geometri proyektif, visi komputer, teori estimasi negara, Lie Group dan Lie aljabar, dan lain-lain. Selain itu, kami akan menunjukkan batang pohon SLAM, dan menghilangkan yang rumit. dan daun berbentuk aneh. Kami pikir ini efektif. Jika pembaca bisa menguasai esensi dari bagasi, mereka sudah mendapatkan kemampuan untuk menjelajahi detil dari wilayah penelitian. Jadi tujuan kami adalah untuk membantu para pemula SLAM dengan cepat tumbuh menjadi peneliti dan pengembang yang berkualitas. Di sisi lain, bahkan jika Anda sudah menjadi peneliti SLAM berpengalaman, buku ini mungkin masih mengungkapkan area yang tidak Anda kenal, dan mungkin memberi Anda wawasan baru.

There have already been a few SLAM-related books around, such as "Probabilistic Robotics" [Thrun2005], "Multiple View Geometry in Computer Vision" [Hartley2003], "State Estimation for Robotics: A Matrix-Lie-Group Approach"[Barfoot2017], etc. They provide rich contents, comprehensive discussions and rigorous derivations, and therefore are the most popular textbooks among SLAM researchers. However,  there are two important issues: Firstly, the purpose of these books is often to introduce the fundamental mathematical theory, with SLAM being only one of its applications. Therefore, they cannot be considered as specifically visual SLAM focused. Secondly, they place great emphasis on mathematical theory, but are relatively weak in programming. This makes readers still fumbling when trying to apply the knowledge they learn from the books. Our belief is: only after coding, debugging and tweaking algorithms and parameters with his own hands, one can claim real understanding of a problem.

In this book, we will be introducing the history, theory, algorithms and research status in SLAM, and explaining a complete SLAM system by decomposing it into several modules: visual odometry, back-end optimization, map building, and loop closure detection. We will be accompanying the readers step by step to implement the core algorithms of each module, explore why they are effective, under what situations they are ill-conditioned, and guide them through running the code on their own machines. You will be exposed to the critical mathematical theory and programming knowledge, and will use various libraries including Eigen, OpenCV, PCL, g2o, and Ceres, and master their use in the Linux operating system.

Well, enough talking, wish you a pleasant journey!

### How to use this book?

This book is entitled "14 Lectures on Visual SLAM". As the name suggests, we will organize the contents into "lectures" like we are learning in a classroom. Each lecture focuses on one specific topic,organized in a logical order. Each chapter will include both a theoretical part and a practical part, with the theoretical usually coming first. We will introduce the mathematics essential to understand the algorithms, and most of the time in a narrative way, rather than in a "definition, theorem, inference" approach adopted by most mathematical textbooks. We think this will be much easier to understand, but of course with a price of being less rigorous sometimes. In practical parts, we will provide code and discuss the meaning of the various parts, and demonstrate some experimental results. So, when you see chapters with the word "practice" in the title, you should turn on your computer and start to program with us, joyfully.

The book can be divided into two parts: The first part will be mainly focused on the fundamental math knowledge, which contains:

1. Lecture 1: preface (the one you are reading now), introducing the contents and structure of the book.
2. Lecture 2: an overview of a SLAM system. It describes each module of a SLAM system and explains what they do and how they do it. The practice section introduces basic C++ programming in Linux environment and the use of an IDE.
3. Lecture 3: rigid body motion in 3D space. You will learn knowledge about rotation matrices, quaternions, Euler angles, and practice them with the Eigen library.
4. Lecture 4: Lie group and Lie algebra. It doesn't matter if you have never heard of them. You will learn the basics of Lie group, and manipulate them with Sophus.
5. Lecture 5: pinhole camera model and image expression in computer. You will use OpenCV to retrieve camera's intrinsic and extrinsic parameters, and then generate a point cloud using the depth information through PCL (Point Cloud Library). 
6. Lecture 6: nonlinear optimization, including state estimation, least squares and gradient descent methods, e.g. Gauss-Newton and Levenburg-Marquardt. You will solve a curve fitting problem using the Ceres and g2o library.

From lecture 7, we will be discussing SLAM algorithms, starting with Visual Odometry (VO) and followed by the map building problems: 

7. Lecture 7: feature based visual odometry, which is currently the mainstream in VO. Contents include feature extraction and matching, epipolar geometry calculation, Perspective-n-Point (PnP) algorithm, Iterative Closest Point (ICP) algorithm, and Bundle Adjustment (BA), etc. You will run these algorithms either by calling OpenCV functions or by constructing you own optimization problem in Ceres and g2o.
8. Lecture 8: direct (or intensity-based) method for VO. You will learn the principle of optical flow and direct method, and then use g2o to achieve a simple RGB-D direct method based VO (the optimization in most direct VO algorithms will be more complicated).
9. Lecture 9: a practice chapter for VO. You will build a visual odometer framework by yourself by integrating the previously learned knowledge, and solve problems such as frame and map point management, key frame selection and optimization control.
10. Lecture 10: back-end optimization. We will discuss Bundle Adjustment in detail, and show the relationship between its sparse structure and the corresponding graph model. You will use Ceres and g2o separately to solve a same BA problem.
11. Lecture 11: pose graph in the back-end optimization. Pose graph is a more compact representation for BA which marginalizes all map points into constraints between keyframes. You will use g2o and gtsam to optimize a pose graph.
12. Lecture 12: loop closure detection, mainly Bag-of-Word (BoW) based method. You will use dbow3 to train a dictionary from images and detect loops in videos. 
13. Lecture 13: map building. We will discuss how to estimate the depth of feature points in monocular SLAM  (and show why they are unreliable). Compared with monocular depth estimation, building a dense map with RGB-D cameras is much easier. You will write programs for epipolar line search and patch matching to estimate depth from monocular images, and then build a point cloud map and octagonal tree map from RGB-D data.
14. Lecture 14: current open source SLAM projects and future development direction. We believe that after reading the previous chapters, you will be able to understand other people's approaches easily, and be capable to achieve new ideas of your own.

Finally, if you don't understand what we are talking about at all, congratulations! This book is right for you! Come on and fight!

### Source code

All source code in this book is hosted on github:

[https://github.com/gaoxiang12/slambook](https://github.com/gaoxiang12/slambook)

It is strongly recommended that readers download them for viewing at any time. The code is divided by chapters, for example, the contents of the 7th lecture will be placed in folder "ch7". In addition, some of the small libraries used in the book can be found in the "3rd party" folder as compressed packages. For large and medium-sized libraries like OpenCV, we will introduce their installation methods when they first appear. If you have any questions regarding the code, click the "Issues" button on GitHub to submit. If there is indeed a problem with the code, we will make changes in a timely manner. Even if your understanding is biased, we will still reply as much as possible. If you are not accustomed to using Git, you can also click the button on the right which contains the word "download" to download a zipped file to your local drive.

### Oriented readers

This book is for students and researchers interested in SLAM. Reading this book needs certain prerequisites, we assume that you have the following knowledge:

* **Calculus, Linear Algebra, Probability Theory.** These are the fundamental mathematical knowledge that most readers should have learned during undergraduate study. You should at least understand what a matrix and a vector are, and what it means by doing differentiation and integration. For more advanced mathematical knowledge required, we will introduce in this book as we proceed.

* **Basic C++ Programming.** As we will be using C++ as our major programming language, it is recommended that the readers are at least familiar with its basic concepts and syntax. For example, you should know what a class is, how to use the C++ standard library, how to use template classes, etc. We will try our best to avoid using tricks, but in certain situations we really can not avert. In addition, we will adopt some of C++ 11 standard, but don't worry, they will be explained as they appear.

* **Linux Basics.** Our development environment is Linux instead of Windows, and we will only provide source code for Linux. **We believe that mastering Linux is an essential skill for SLAM researchers, and please take it to begin. After going through the contents of this book, we believe you will agree with us.** In Linux, the configuration of related libraries is so convenient, and you will gradually appreciate the benefit of mastering it. If you have never used a Linux system, it will be beneficial if you can find some Linux learning materials and spend some time reading them (to master Linux basics, the first few chapters of an introductory book should be sufficient). We do not ask readers to have superb Linux operating skills, but we do hope readers at least know how to fire an terminal, and enter a code directory. There are some self-test questions on Linux at the end of this chapter. If you have answers to them, you shouldn't have much problem in understanding the code in this book.

Readers who are interested in SLAM but do not have the above mentioned knowledge may find it difficult to proceed with this book. If you do not understand the basics of C++, you can read some introductory books such as _C ++ Primer Plus_. If you do not have the relevant math knowledge, we also suggest that you read some relevant math textbooks first. Nevertheless, we think that most readers who have completed undergraduate study should already have the necessary mathematical arsenal. Regarding the code, we recommend that you spend time typing them by yourself, and tweaking the parameters to see how they affect outputs. This will be very helpful.

This book can be used as a textbook for SLAM-related courses, but also suitable as extra-curricular self-study materials.

### Style

This book covers both mathematical theory and programming implementation. Therefore, for the convenience of reading, we will be using different layouts to distinguish different contents.

1.  Mathematical formulas will be listed separately, and important formulas will be assigned with an equation number on the right end of the line, for example:

	![](http://latex.codecogs.com/gif.latex?\\bm{y}=\\bm{A}\\bm{x})

	Italics are used for scalars (e.g. ![](http://latex.codecogs.com/gif.latex?a)), bold italics are used for vectors and matrices (e.g. ![](http://latex.codecogs.com/gif.latex?\\bm{a}), ![](http://latex.codecogs.com/gif.latex?\\bm{A})). Hollow bold represents special sets, e.g. real number ![](http://latex.codecogs.com/gif.latex?\\mathbb{R}) and integer set ![](http://latex.codecogs.com/gif.latex?\\mathbb{Z}). Gothic is used for Lie Algebra, e.g. ![](http://latex.codecogs.com/gif.latex?\\mathfrak{se}(3)).

2.  Source code will be framed into boxes, using a smaller font size, with line numbers on the left. If a code block is long, the box may continue to the next page:

	```cpp
	#include <iostream>
	using namespace std;
	
	int main ( int argc, char** argv )
	{
		cout<<"Hello"<<endl;
		return 0;
	}
	```

3.  When the code block is too long or contains repeated parts with previously listed code, it is not appropriate to be listed entirely. We will **only give important snippets** and mark it with "Snippet". Therefore, we strongly recommend that readers download all the source code on GitHub and complete the exercises to better understand the book.

4.  Due to typographical reasons, the code shown in the book may be slightly different from the code hosted on GitHub. In that case please use the code on GitHub.

5.  For each of the libraries we use, it will be explained in details when first appearing, but not repeated in the follow-up. Therefore, it is recommended that readers read this book in order.

6.  An abstract will be presented at the beginning of each lecture. A summary and some exercises will be given at the end. The cited references are listed at the end of the book.

7.  The chapters with an asterisk mark in front are optional readings, and readers can read them according to their interest. Skipping them will not hinder the understanding of subsequent chapters.

8.  Important contents will be marked in **bold**, as we are accustomed to.

9.  Most of the experiments we designed are demonstrative. Understanding them does not mean that you are already familiar with the entire library. So we recommend that you spend time on yourselves in further exploring the important libraries frequently used in the book.

10. The book's exercises and optional readings may require you to search for additional materials, so you need to learn to use search engines.

### Acknowledgments

### Exercises (self-test questions)

1. There is a linear equation ![](http://latex.codecogs.com/gif.latex?\\bm{A}\\bm{x}=\\bm{b}), if ![](http://latex.codecogs.com/gif.latex?\\bm{A}) and ![](http://latex.codecogs.com/gif.latex?\\bm{b}) are known, how to solve for ![](http://latex.codecogs.com/gif.latex?\\bm{x})? What are the requirements for ![](http://latex.codecogs.com/gif.latex?\\bm{A}) and ![](http://latex.codecogs.com/gif.latex?\\bm{b})? (Hint: the dimensionality and rank of ![](http://latex.codecogs.com/gif.latex?\\bm{A}))

2. What is a Gaussian distribution? What does it look like in one-dimensional case? How about in high-dimensional case?

3. Do you know what a **class** is in C++? Do you know STL? Have you ever used them?

4. How do you write a C++ program? (It's completely fine if your answer is "using Visual C++ 6.0". As long as you have C++ or C programming experience, you are in good hand)

5. Do you know the C++11 standard? Which new features have you heard of or used? Are you familiar with any other standard?

6. Do you know Linux? Have you used at least one flavor (not including Android), such as Ubuntu?

7. What is the directory structure of Linux? What basic commands do you know? (e.g. ls, cat, etc.)

8. How to install a software in Ubuntu (without using the Software Center)? What directories are software usually installed under? If you only know the fuzzy name of a software (for example, you want to install a library with a word "eigen" in its name), how would you do it?

9. *Spend an hour learning Vim, you will be using it sooner or later. You can enter "vimtutor" in an terminal and read through its contents. We do not require you to operate it very skillfully, as long as you can use it to edit the code in the process of learning this book. **Do not waste time on its plugins, do not try to turn Vim into an IDE for now, we will only use it for text editing.**

### References

- [Davison2007]. A. Davison, I. Reid, N. Molton, and O. Stasse, “Monoslam: Real-time single camera SLAM,” IEEETransactions on Pattern Analysis and Machine Intelligence, vol. 29, no. 6, pp. 1052–1067, 2007.
- [Hartley2003]. R. Hartley and A. Zisserman, Multiple View Geometry in Computer Vision. Cambridge universitypress, 2003.
- [Smith1986]. R. C. Smith and P. Cheeseman, “On the representation and estimation of spatial uncertainty,” In-ternational Journal of Robotics Research, vol. 5, no. 4, pp. 56–68, 1986.
- [Thrun2005]. S. Thrun, W. Burgard, and D. Fox, Probabilistic robotics. MIT Press, 2005.
- T. Barfoot, “State estimation for robotics: A matrix lie group approach,”, Cambridge Press, 2016.
